package com.ys.demo.controller;

import com.ys.demo.bean.UserBean;
import com.ys.demo.service.MusicService;
import com.ys.demo.service.UserService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import sun.rmi.runtime.NewThreadAction;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
    MusicService musicService;
    @Autowired
    UserService userService;

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
                           Map<String, Object> map,
                           HttpSession session,
                           HttpServletResponse response,
                           HttpServletRequest request) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        JSONObject jsonObject;
        UserBean userBean = new UserBean(username, userphone, userpwd, useremail, false);
        boolean b = userService.INSERTUSER(userBean);
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

}
