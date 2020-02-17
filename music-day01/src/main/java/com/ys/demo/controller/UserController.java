package com.ys.demo.controller;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.ys.demo.bean.UserBean;
import com.ys.demo.service.UserService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.thymeleaf.util.StringUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;
import java.util.Map;

//@ResponseBody//这个类得所有的方法返回的数据直接写给浏览器（如果是对象转为json数据）
//@Controller 用来响应页面,必须配合模板来使用
//@RestController = @ResponseBody + @Controller
@WebServlet//配置参数初始化
@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

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
                    UserBean loginUser = userService.userFind(userBean);
                    request.getSession().setAttribute("loginUser", loginUser);//存放到session中
                    map.put("stat", "1");
                    jsonObject = JSONObject.fromObject(map);
                    response.getWriter().print(jsonObject);
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
            UserBean userBean = new UserBean(user_name, user_phone, user_email, user_pwd);
            boolean register = userService.userRegister(userBean);
            if (register) {
                request.getSession().setAttribute("loginUser", userBean);
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
        UserBean sessionUser = (UserBean) session.getAttribute("loginUser");
        UserBean userBean = new UserBean(user_new_name, sessionUser.getUser_phone(), user_new_pwd, user_new_birthday, sessionUser.getUser_email(), user_new_introducedame);
        System.out.println(user_new_birthday + "|" + user_new_introducedame + "|" + user_new_name + "|" + user_new_pwd);
        if (!StringUtils.isEmpty(user_new_name) && !"".equals(user_new_birthday) && !StringUtils.isEmpty(user_new_pwd) && !StringUtils.isEmpty(user_new_introducedame)) {
            //表明传入值不为空
            boolean userUpdate = userService.userUpdate(userBean);
            if (userUpdate) {
                map.put("stat", "1");//1:修改成功
                UserBean loginUser = userService.userFind(userBean);
                request.getSession().setAttribute("loginUser", loginUser);
                UserBean testSessionnUser = (UserBean) session.getAttribute("loginUser");
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
}
