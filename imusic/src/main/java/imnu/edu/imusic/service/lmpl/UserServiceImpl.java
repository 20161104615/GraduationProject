package imnu.edu.imusic.service.lmpl;

import imnu.edu.imusic.bean.PwdCode;
import imnu.edu.imusic.bean.UserBean;
import imnu.edu.imusic.mapper.UserMapper;
import imnu.edu.imusic.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

@Service
public class UserServiceImpl implements UserService {

    PwdCode codeTime = new PwdCode();
    @Autowired
    private UserMapper userMapper;

    @Override
    public UserBean userLogin(UserBean userBean) {
        UserBean finduserbean = userMapper.getUserByuser_phone(userBean.getUser_phone(), userBean.getUser_pwd());
        System.out.println(finduserbean);
        return finduserbean;
    }

    @Override
    public boolean userRegister(UserBean userBean) {
        UserBean userFind = userFind(userBean);
        if (userFind != null) {
            //添加失败,手机号或邮箱重复
            return false;
        } else {
            String newUserAvatarUrl = "asserts/images/m18.jpg";
            userBean.setUser_avatar(newUserAvatarUrl);
            int insertUser = userMapper.insertUser(userBean);
            if (insertUser != 0) {
                //添加成功
                return true;
            } else {
                return false;
            }
        }
    }

    @Override
    public boolean userUpdate(UserBean userBean) {
        int updateuser = userMapper.updateuser(userBean);
        if (updateuser != 0) {
            //修改成功
            UserBean finduser = userMapper.finduser(userBean);
            return true;
        } else {
            //修改失败
            return false;
        }
    }

    @Override
    public UserBean userFind(UserBean userBean) {
        UserBean finduser = userMapper.finduser(userBean);
        return finduser;
    }

    @Override
    public UserBean userfindstring(String userphone) {
        boolean userAdministrator = false;
        UserBean finduserbystring = userMapper.finduserbystring(userphone, userAdministrator);
        return finduserbystring;
    }

    @Override
    public ArrayList<UserBean> allUser(boolean userAdministrator) {
        ArrayList<UserBean> allUser = userMapper.findAllUser(userAdministrator);
        return allUser;
    }

    @Override
    public boolean USERUPDATE(UserBean userBean) {
        ArrayList<UserBean> arrayList = userMapper.FINDUSER(userBean);
        if (arrayList.isEmpty()) {
            boolean aupdateuser = userMapper.AUPDATEUSER(userBean);
            return aupdateuser;
        } else {
            return false;
        }
    }

    @Override
    public boolean DELETEUSER(UserBean userBean) {
        int num = userMapper.DELETEUSER(userBean);
        if (num != 0) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public UserBean FINDUSER(UserBean userBean) {
        UserBean bean = userMapper.FINDUSERBYONE(userBean);
        return bean;
    }

    @Override
    public boolean INSERTUSER(UserBean userBean) {
        ArrayList<UserBean> arrayList = userMapper.FINDUSER2(userBean);
        if (arrayList.isEmpty()) {
            int i = userMapper.INSERTUSER(userBean);
            if (i != 0) {
                return true;
            }
            return false;
        } else {
            return false;
        }
    }

    @Override
    public boolean uploadUserAvatar(String userphone) {
        String newUserAvatarUrl = "http://localhost:8080/media/useravatar/" + userphone + ".jpg";
        UserBean userBean = new UserBean();
        userBean.setUser_phone(userphone);
        userBean.setUser_avatar(newUserAvatarUrl);
        boolean b = userMapper.updateuseravatar(userBean);
        return b;
    }

    @Autowired
    private JavaMailSender mailSender;
    @Value("${spring.mail.username}")
    private String mailUserName;

    @Override
    public void getCode(String useremail) throws MessagingException {
        String verifyCode = String.valueOf(new Random().nextInt(899999) + 100000);//生成验证码
        long outDate = System.currentTimeMillis() + 5 * 60 * 1000;// 5分钟后过期
        codeTime.setCodeT(outDate);
        codeTime.setVerifyCode(verifyCode);
        codeTime.setExist("1");

        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("<html><head><title></title></head><body>");
        stringBuilder.append("您好<br/>");
        stringBuilder.append("您的验证码是：").append(verifyCode).append("<br/>");
        stringBuilder.append("此验证码只能使用一次，在5分钟内有效。验证成功则自动失效。<br/>");
        stringBuilder.append("如果您没有进行上述操作，请忽略此邮件。");
        MimeMessage mimeMessage = mailSender.createMimeMessage();
        //发送验证码到手机或者是邮箱
        MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage, true);
        mimeMessageHelper.setFrom(mailUserName);//这里只是设置username 并没有设置host和password，因为host和password在springboot启动创建JavaMailSender实例的时候已经读取了
        mimeMessageHelper.setTo(useremail);
        mimeMessage.setSubject("邮箱验证-重置密码");
        mimeMessageHelper.setText(stringBuilder.toString(), true);
        mailSender.send(mimeMessage);
    }

    @Override
    public boolean Resetpassword(String useremail, String code, String newuserpwd) {
        long nowDate = System.currentTimeMillis();
        if (nowDate > codeTime.getCodeT() || !codeTime.getExist().equals("1")) {
            return false;
        }
        //判断验证码是否正确
        if (codeTime.getVerifyCode().equals(code)) {
            UserBean userBean = new UserBean();
            userBean.setUser_email(useremail);
            userBean.setUser_pwd(newuserpwd);
            boolean b = userMapper.updateuserpwd(userBean);
            if (b) {
                codeTime.setExist("0");
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    @Override
    public boolean insertIntegral(String userphone, String musicname, Integer userintegral) {
        int b = userMapper.insertUserIntegral(userphone, musicname, userintegral);
        if (b != 0) {
            return true;
        } else
            return false;
    }

    @Override
    public Integer findUserIntegral(String userphone) {
        return userMapper.finduserintegral(userphone);
    }

    @Override
    public boolean insertVisitors(String userphone, String visitors) {
        int b = userMapper.insertUserVistors(userphone, visitors);
        if (b != 0) {
            return true;
        } else
            return false;
    }

    @Override
    public Integer findUserVisitors(String userphone) {
        return userMapper.finduservisitors(userphone);
    }

}
