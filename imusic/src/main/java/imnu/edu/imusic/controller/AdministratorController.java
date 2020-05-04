package imnu.edu.imusic.controller;


import imnu.edu.imusic.bean.MusicBean;
import imnu.edu.imusic.bean.UserBean;
import imnu.edu.imusic.service.MusicService;
import imnu.edu.imusic.service.UserService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

/*
 * @Author 20161104615
 * @Description //TODO 管理员controller
 * @Date 20:28 2020/2/27
 * @Param
 * @return
 **/
@WebServlet//配置参数初始化
@RestController
@RequestMapping("/admin")
public class AdministratorController {
    @Autowired
    private MusicService musicService;
    @Autowired
    private UserService userService;

    @PostMapping(value = "/updatauser")
    public void updataUser(@RequestParam("userphone") String userphone,
                           @RequestParam("useremail") String useremail,
                           @RequestParam("userpwd") String userpwd,
                           @RequestParam("username") String username,
                           @RequestParam("userintroduced") String userintroduced,
                           @RequestParam("userid") Integer userid,
                           Map<String, Object> map,
                           HttpSession session,
                           HttpServletResponse response,
                           HttpServletRequest request) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        JSONObject jsonObject;
        UserBean userBean = new UserBean(userid, username, userphone, userpwd, useremail, userintroduced);
        boolean b = userService.USERUPDATE(userBean);
        if (b) {//修改成功
            ArrayList<UserBean> allUser = userService.allUser(false);
            request.getSession().setAttribute("ALLUSER", allUser);
            map.put("stat", "1");
            jsonObject = JSONObject.fromObject(map);
            response.getWriter().print(jsonObject);
        } else {
            map.put("stat", "0");
            jsonObject = JSONObject.fromObject(map);
            response.getWriter().print(jsonObject);
        }
    }

    @PostMapping(value = "/deleteuser")
    public void deleteUser(@RequestParam("userid") Integer userid,
                           Map<String, Object> map,
                           HttpSession session,
                           HttpServletResponse response,
                           HttpServletRequest request) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        JSONObject jsonObject;
        UserBean userBean = new UserBean();
        userBean.setUser_id(userid);
        userBean.setUser_Administrator(false);
        boolean b = userService.DELETEUSER(userBean);
        if (b) {
            ArrayList<UserBean> allUser = userService.allUser(false);
            request.getSession().setAttribute("ALLUSER", allUser);
            map.put("stat", "1");
            jsonObject = JSONObject.fromObject(map);
            response.getWriter().print(jsonObject);
        } else {
            map.put("stat", "0");
            jsonObject = JSONObject.fromObject(map);
            response.getWriter().print(jsonObject);
        }
    }

    @PostMapping(value = "/finduser")
    public void findUser(@RequestParam("userphone") String userphone,
                         Map<String, Object> map,
                         HttpSession session,
                         HttpServletResponse response,
                         HttpServletRequest request) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        JSONObject jsonObject;
        UserBean userBean = new UserBean();
        userBean.setUser_phone(userphone);
        userBean.setUser_Administrator(false);
        UserBean finduser = userService.FINDUSER(userBean);
        if (finduser == null) {
            //说明未找到该用户,返回所用用户
            ArrayList<UserBean> allUser = userService.allUser(false);
            request.getSession().setAttribute("ALLUSER", allUser);
            map.put("stat", "0");
            jsonObject = JSONObject.fromObject(map);
            response.getWriter().print(jsonObject);
        } else {
            request.getSession().setAttribute("ALLUSER", finduser);
            map.put("stat", "1");
            jsonObject = JSONObject.fromObject(map);
            response.getWriter().print(jsonObject);
        }
    }

    @PostMapping(value = "/insertuser")
    public void insertuser(@RequestParam("userphone") String userphone,
                           @RequestParam("useremail") String useremail,
                           @RequestParam("userpwd") String userpwd,
                           @RequestParam("username") String username,
                           @RequestParam("user_Administrator") boolean user_Administrator,
                           Map<String, Object> map,
                           HttpSession session,
                           HttpServletResponse response,
                           HttpServletRequest request) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        JSONObject jsonObject;
        UserBean userBean = new UserBean(username, userphone, userpwd, useremail, user_Administrator);
        boolean b = userService.INSERTUSER(userBean);
        if (b) {
            ArrayList<UserBean> allUser = userService.allUser(false);
            System.out.println(allUser);
            request.getSession().setAttribute("ALLUSER", allUser);
            map.put("stat", "1");
            jsonObject = JSONObject.fromObject(map);
            response.getWriter().print(jsonObject);
        } else {
            map.put("stat", "0");
            jsonObject = JSONObject.fromObject(map);
            response.getWriter().print(jsonObject);
        }
    }

    @PostMapping(value = "/deletemusic")
    public void deleteMusic(@RequestParam("musicid") Integer musicid,
                            Map<String, Object> map,
                            HttpSession session,
                            HttpServletResponse response,
                            HttpServletRequest request) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        JSONObject jsonObject;
        MusicBean musicBean = musicService.FINDMUSICOFID(musicid);
        String filemusic = "D:/JavaProgram/Apache-tomcat/apache-tomcat-8.5.43/webapps/ROOT/media/" + musicBean.getMusic_name() + ".m4a";//歌曲存放的路径
        String filemusicimg = "D:/JavaProgram/Apache-tomcat/apache-tomcat-8.5.43/webapps/ROOT/media/img/" + musicBean.getMusic_name() + "-" + musicBean.getMusic_singer() + ".jpg";//歌曲存放的路径
        boolean b = musicService.DELETEMUSIC(musicid);
        if (b) {
            File fm = new File(filemusic);
            File fmi = new File(filemusicimg);
            /*if (fm.isFile() && fm.exists() && fmi.isFile() && fmi.exists()) {*/
                fm.delete();
                fmi.delete();
                ArrayList<MusicBean> allMusicBean = musicService.findAllMusicBean();
                request.getSession().setAttribute("AMusicList", allMusicBean);
                map.put("stat", "1");
                jsonObject = JSONObject.fromObject(map);
                response.getWriter().print(jsonObject);
            /*} else {
                map.put("stat", "2");
                jsonObject = JSONObject.fromObject(map);
                response.getWriter().print(jsonObject);
            }*/
        } else {
            map.put("stat", "0");
            jsonObject = JSONObject.fromObject(map);
            response.getWriter().print(jsonObject);
        }
    }

    @PostMapping(value = "/findmusic")
    public void findMusic(@RequestParam("music") String music,
                          Map<String, Object> map,
                          HttpSession session,
                          HttpServletResponse response,
                          HttpServletRequest request) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        JSONObject jsonObject;
        ArrayList<MusicBean> arrayList = musicService.FINDMUSIC(music);
        if (arrayList.isEmpty()) {
            map.put("stat", "0");
            jsonObject = JSONObject.fromObject(map);
            response.getWriter().print(jsonObject);
        } else {
            request.getSession().setAttribute("AMusicList", arrayList);
            map.put("stat", "1");
            jsonObject = JSONObject.fromObject(map);
            response.getWriter().print(jsonObject);
        }
    }
}
