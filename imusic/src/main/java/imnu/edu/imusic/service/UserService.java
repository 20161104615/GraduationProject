package imnu.edu.imusic.service;


import imnu.edu.imusic.bean.UserBean;

import javax.mail.MessagingException;
import java.util.ArrayList;

public interface UserService {
    public UserBean userLogin(UserBean userBean);
    public boolean userRegister(UserBean userBean);
    public boolean userUpdate(UserBean userBean);
    public UserBean userFind(UserBean userBean);
    public UserBean userfindstring(String userphone);
    public ArrayList<UserBean> allUser(boolean userAdministrator);
    public boolean USERUPDATE(UserBean userBean);
    public boolean DELETEUSER(UserBean userBean);
    public UserBean FINDUSER(UserBean userBean);
    public boolean INSERTUSER(UserBean userBean);
    public boolean uploadUserAvatar(String userphone);
    public void getCode(String useremail) throws MessagingException;
    public boolean Resetpassword(String useremail,String code,String newuserpwd);
    public boolean insertIntegral(String userphone,String musicname,Integer userintegral);
    public Integer findUserIntegral(String userphone);
    public boolean insertVisitors(String userphone,String visitors);
    public Integer findUserVisitors(String userphone);
}
