package imnu.edu.imusic.controller;

import com.fasterxml.jackson.annotation.JsonFormat;
import imnu.edu.imusic.bean.*;
import imnu.edu.imusic.service.MusicService;
import imnu.edu.imusic.service.UserService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.thymeleaf.util.StringUtils;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Map;

/*
 * @Author 20161104615
 * @Description //TODO LoginUser(UserBean):存放用户登录信息；MusicList（ArrayList<MusicBean>）：音乐整体列表；
 *                 sharemusiclist:存放用户分享列表；sharemusic：存放分享的音乐信息
 *                 searchuser：存放查找的用户信息
 * @Date 17:53 2020/2/22
 * @Param
 * @return
 **/

//@ResponseBody//这个类得所有的方法返回的数据直接写给浏览器（如果是对象转为json数据）
//@Controller 用来响应页面,必须配合模板来使用
//@RestController = @ResponseBody + @Controller
@WebServlet//配置参数初始化
@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;
    @Autowired
    private MusicService musicService;

    @PostMapping(value = "/login")
    public void userLogin(@RequestParam("userphoneoremail") String user_phone,//邮箱和手机号统一用手机号接收
                          @RequestParam("user_password") String user_pwd,
                          Map<String, Object> map,
                          HttpSession session,
                          HttpServletResponse response,
                          HttpServletRequest request) throws IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        JSONObject jsonObject;
        if (!StringUtils.isEmpty(user_phone) && !StringUtils.isEmpty(user_pwd)) {
            System.out.println("用户手机号：" + user_phone + ",用户密码：" + user_pwd);
            UserBean userBean = new UserBean(user_phone, user_pwd);
            UserBean determineUserExists = userService.userFind(userBean);
            if (determineUserExists != null) {
                //表明用户存在
                UserBean checkLoginUser = userService.userLogin(userBean);
                if (checkLoginUser != null) {
                    System.out.println("用户存在,且用户名和密码正确");
                    //存放到session中
                    UserBean loginUser = userService.userFind(userBean);
                    if (loginUser.isUser_Administrator() == true) {//判断是否为管理员
                        request.getSession().setAttribute("ALoginUser", loginUser);
                        ArrayList<UserBean> allUser = userService.allUser(false);
                        request.getSession().setAttribute("ALLUSER", allUser);
                        ArrayList<MusicBean> allMusicBean = musicService.findAllMusicBean();
                        request.getSession().setAttribute("AMusicList", allMusicBean);
                        map.put("stat", "11");
                        jsonObject = JSONObject.fromObject(map);
                        response.getWriter().print(jsonObject);
                    } else {
                        request.getSession().setAttribute("LoginUser", loginUser);
                        //全部歌曲返回到前端主页面
                        ArrayList<MusicBean> allMusicBean = musicService.findAllMusicBean();
                        request.getSession().setAttribute("MusicList", allMusicBean);
                        map.put("stat", "1");
                        jsonObject = JSONObject.fromObject(map);
                        response.getWriter().print(jsonObject);
                    }
                } else {
                    System.out.println("用户手机号或密码不正确");
                    map.put("stat", "0");
                    jsonObject = JSONObject.fromObject(map);
                    response.getWriter().print(jsonObject);
                }
            } else {
                //该用户未注册
                map.put("stat", "4");
                jsonObject = JSONObject.fromObject(map);
                response.getWriter().print(jsonObject);
            }
        } else {
            //没有填信息，（冗余，应在前段判断传入值是否为空，此处应为前段未传值到后端 tip：当前网络拥堵，请稍后再试！）
            //已实现以上内容
            map.put("stat", "3");
            jsonObject = JSONObject.fromObject(map);
            response.getWriter().print(jsonObject);
        }
    }

    @PostMapping(value = "/register")
    public void userRegister(@RequestParam("user_name") String user_name,
                             @RequestParam("user_phone") String user_phone,
                             @RequestParam("user_email") String user_email,
                             @RequestParam("user_password") String user_pwd,
                             Map<String, Object> map,
                             HttpSession session,
                             HttpServletResponse response,
                             HttpServletRequest request) throws IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        JSONObject jsonObject;
        if (!StringUtils.isEmpty(user_name) && !StringUtils.isEmpty(user_phone) && !StringUtils.isEmpty(user_email) && !StringUtils.isEmpty(user_pwd)) {
            UserBean userBean = new UserBean(user_name, user_phone, user_email, user_pwd, false);
            boolean register = userService.userRegister(userBean);
            if (register) {
                request.getSession().setAttribute("LoginUser", userBean);
                map.put("stat", "1");//1:添加成功
                jsonObject = JSONObject.fromObject(map);
                response.getWriter().print(jsonObject);
            } else {
                map.put("stat", "0");//0：添加失败,用户以被注册
                jsonObject = JSONObject.fromObject(map);
                response.getWriter().print(jsonObject);
            }
        } else {
            //没有填信息，（冗余，应在前段判断传入值是否为空，此处应为前段未传值到后端 tip：当前网络拥堵，请稍后再试！）
            map.put("stat", "3");//3:未填写信息
            jsonObject = JSONObject.fromObject(map);
            response.getWriter().print(jsonObject);
        }
    }

    @PostMapping(value = "/update")
    public void userUpdate(@RequestParam("user_new_name") String user_new_name,
                           @RequestParam("user_new_pwd") String user_new_pwd,
                           @RequestParam("user_new_birthday") @JsonFormat(pattern = "yyyy/MM/dd") Date user_new_birthday,
                           @RequestParam("user_new_introducedame") String user_new_introducedame,
                           Map<String, Object> map,
                           HttpSession session,
                           HttpServletResponse response,
                           Model model,
                           HttpServletRequest request) throws IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        JSONObject jsonObject;
        UserBean sessionUser = (UserBean) session.getAttribute("LoginUser");
        UserBean userBean = new UserBean(user_new_name, sessionUser.getUser_phone(), user_new_pwd, user_new_birthday, sessionUser.getUser_email(), user_new_introducedame);
        System.out.println(user_new_birthday + "|" + user_new_introducedame + "|" + user_new_name + "|" + user_new_pwd);
        if (!StringUtils.isEmpty(user_new_name) && !"".equals(user_new_birthday) && !StringUtils.isEmpty(user_new_pwd) && !StringUtils.isEmpty(user_new_introducedame)) {
            //表明传入值不为空
            boolean userUpdate = userService.userUpdate(userBean);
            if (userUpdate) {
                map.put("stat", "1");//1:修改成功
                UserBean loginUser = userService.userFind(userBean);
                request.getSession().setAttribute("LoginUser", loginUser);
                jsonObject = JSONObject.fromObject(map);
                response.getWriter().print(jsonObject);
            } else {
                map.put("stat", "0");//0:修改失败
                jsonObject = JSONObject.fromObject(map);
                response.getWriter().print(jsonObject);
            }
        } else {
            map.put("stat", "2");//2:传值失败，稍后再试
            jsonObject = JSONObject.fromObject(map);
            response.getWriter().print(jsonObject);
        }
    }

    /*
     * @Author 20161104615
     * @Description //TODO 添加到收藏列表，未对返回值做判断
     * @Date 22:20 2020/2/25
     * @Param [songname, userphone, map, request, response]
     * @return void
     **/
    @GetMapping(value = "/addfavoritesong")
    public void addFavoriteSong(@RequestParam("songname") String songname,
                                @RequestParam("userphone") String userphone,
                                Map<String, Object> map,
                                HttpServletRequest request,
                                HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        JSONObject jsonObject;
        MusicBean musicBean = musicService.findONEMusic(songname);
        UserBean userBean = userService.userfindstring(userphone);
        FavoriteSongs favoriteSongs = new FavoriteSongs(userBean.getUser_phone(), musicBean.getMusic_id(), musicBean.getMusic_name());
        boolean b = musicService.uploadFavoritesong(favoriteSongs);
        if (b) {
            map.put("statt", "1");
            map.put("songname", songname);
            jsonObject = JSONObject.fromObject(map);
            response.getWriter().print(jsonObject);
        } else {
            map.put("statt", "0");
            jsonObject = JSONObject.fromObject(map);
            response.getWriter().print(jsonObject);
        }
    }

    /*
     * @Author 20161104615
     * @Description //TODO 删除收藏列表中的内容
     * @Date 10:16 2020/2/26
     * @Param [songname, userphone, map, request, response]
     * @return void
     **/
    @GetMapping(value = "/delfavoritesong")
    public void delfavoritesong(@RequestParam("songname") String songname,
                                @RequestParam("userphone") String userphone,
                                Map<String, Object> map,
                                HttpServletRequest request,
                                HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        JSONObject jsonObject;
        boolean result = musicService.delFavoritesong(userphone, songname);
        if (result) {
            ArrayList<MusicBean> musicOfPlayListinformation = musicService.findMusicOfPlayListinformation(userphone);
            request.getSession().setAttribute("playMusiconeinformation", musicOfPlayListinformation);
            map.put("statt", "1");
            map.put("songname", songname);
            jsonObject = JSONObject.fromObject(map);
            response.getWriter().print(jsonObject);
        } else {
            map.put("statt", "0");
            map.put("songname", songname);
            jsonObject = JSONObject.fromObject(map);
            response.getWriter().print(jsonObject);
        }
    }

    @PostMapping(value = "/allmusicbean")
    public void allMusicBean(Map<String, Object> map,
                             HttpServletRequest request,
                             HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        JSONObject jsonObject;
        ArrayList<MusicBean> allMusicBean = musicService.findAllMusicBean();
        request.getSession().setAttribute("MusicList", allMusicBean);
        map.put("stat", "1");
        jsonObject = JSONObject.fromObject(map);
        response.getWriter().print(jsonObject);
    }

    @PostMapping(value = "/share")
    public void share(@RequestParam("songid") Integer songid,
                      @RequestParam("tips") String tips,
                      Map<String, Object> map,
                      HttpServletRequest request,
                      HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        JSONObject jsonObject;
        MusicBean musicBean = musicService.FINDMUSICOFID(songid);
        if ("".equals(tips)) {
            map.put("stat", "0");
            jsonObject = JSONObject.fromObject(map);
            response.getWriter().print(jsonObject);
        } else if ("index".equals(tips)) {
            request.getSession().setAttribute("sharemusic", musicBean);
            map.put("stat", "1");
            jsonObject = JSONObject.fromObject(map);
            response.getWriter().print(jsonObject);
        } else if ("share".equals(tips)) {
            UserBean loginUser = (UserBean) request.getSession().getAttribute("LoginUser");
            Date date = new Date(System.currentTimeMillis());
            ShareSongs shareSongs = new ShareSongs(musicBean.getMusic_id(),
                    loginUser.getUser_phone(), musicBean.getMusic_name(), date, musicBean.getMusic_singer());
            boolean b = musicService.shareSongs(shareSongs);
            if (b) {
                ArrayList<ShareSongs> arrayList = musicService.SHARE_SONGS_ARRAY_LIST(loginUser.getUser_phone());
                request.getSession().setAttribute("sharemusiclist", arrayList);
                map.put("stat", "2");
                jsonObject = JSONObject.fromObject(map);
                response.getWriter().print(jsonObject);
            } else {
                map.put("stat", "0");
                jsonObject = JSONObject.fromObject(map);
                response.getWriter().print(jsonObject);
            }
        }
    }

    /*
     * @Author 20161104615
     * @Description //TODO
     * @Date 23:59 2020/3/6
     * @Param [userphone, map, request, response]
     * @return void
     **/
    @PostMapping(value = "/searchuser")
    public void searchUser(@RequestParam("userphone") String userphone,
                           Map<String, Object> map,
                           HttpServletRequest request,
                           HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        JSONObject jsonObject;
        if ("".equals(userphone)) {
            map.put("stat", "0");
            jsonObject = JSONObject.fromObject(map);
            response.getWriter().print(jsonObject);
        } else {
            UserBean userBean = null;
            try {
                userBean = userService.userfindstring(userphone);
                ArrayList<ShareSongs> arrayList = musicService.SHARE_SONGS_ARRAY_LIST(userphone);
                ArrayList<MusicBean> userFavoriteSong = musicService.findUserFavoriteSong(userphone);
                UserBean bean = new UserBean(userBean.getUser_name(), userBean.getUser_phone(), userBean.getUser_birthday()
                        , userBean.getUser_email(), userBean.getUser_introduced(), userBean.getUser_avatar());
                request.getSession().setAttribute("searchuser", bean);
                request.getSession().setAttribute("searchsharemusiclist", arrayList);
                request.getSession().setAttribute("searchplayMusiconeinformation", userFavoriteSong);
            } catch (Exception e) {
                map.put("stat", "0");
                jsonObject = JSONObject.fromObject(map);
                response.getWriter().print(jsonObject);
            }
            map.put("stat", "1");
            jsonObject = JSONObject.fromObject(map);
            response.getWriter().print(jsonObject);
        }
    }

    @PostMapping(value = "/comments")
    public void commentsMusic(@RequestParam("comments") String comments,
                              @RequestParam("music_name") String music_name,
                              @RequestParam("music_singer") String music_singer,
                              @RequestParam("music_id") Integer music_id,
                              Map<String, Object> map,
                              HttpServletRequest request,
                              HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        JSONObject jsonObject;
        if ("".equals(comments)) {
            map.put("stat", "0");
            jsonObject = JSONObject.fromObject(map);
            response.getWriter().print(jsonObject);
        } else {
            UserBean loginUser = (UserBean) request.getSession().getAttribute("LoginUser");
            long currentTimeMillis = System.currentTimeMillis();
            Timestamp timestamp = new Timestamp(currentTimeMillis);
            Comments c1 = new Comments(loginUser.getUser_phone(), music_name, music_singer, music_id, comments, timestamp, loginUser.getUser_name(), loginUser.getUser_avatar());
            boolean b = musicService.insertComments(c1);
            if (b) {
                ArrayList<Comments> arrayList = musicService.COMMENTS_ARRAY_LIST(music_id);
                request.getSession().setAttribute("commentslist", arrayList);
                map.put("stat", "1");
                jsonObject = JSONObject.fromObject(map);
                response.getWriter().print(jsonObject);
            } else {
                map.put("stat", "0");
                jsonObject = JSONObject.fromObject(map);
                response.getWriter().print(jsonObject);
            }
        }
    }

    @PostMapping("getforgetcode")
    public void forgetcode(@RequestParam("useremail") String useremail,
                           Map<String, Object> map,
                           HttpServletRequest request,
                           HttpServletResponse response) throws IOException, MessagingException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        JSONObject jsonObject;
        userService.getCode(useremail);
        map.put("stat", "1");
        jsonObject = JSONObject.fromObject(map);
        response.getWriter().print(jsonObject);
    }

    @RequestMapping("resetpassword")
    public void resetpassword(@RequestParam("forget1") String useremail,
                              @RequestParam("forget2") String code,
                              @RequestParam("forget3") String newpwd,
                              HttpServletRequest request,
                              HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        boolean b = userService.Resetpassword(useremail, code, newpwd);
        System.out.println(b);
        if (!b) {
            request.getSession().setAttribute("rp", "修改失败，请重试");
        }
        response.sendRedirect("/music/signin.html");
    }

}
