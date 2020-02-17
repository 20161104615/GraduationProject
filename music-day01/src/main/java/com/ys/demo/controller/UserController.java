package com.ys.demo.controller;

import com.ys.demo.bean.UserBean;
import com.ys.demo.service.UserService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
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
import java.util.Map;

//@ResponseBody//这个类得所有的方法返回的数据直接写给浏览器（如果是对象转为json数据）
//@Controller 用来响应页面,必须配合模板来使用
//@RestController = @ResponseBody + @Controller
@WebServlet
@RestController
@RequestMapping("/user")
public class UserController {

    UserBean userBean = new UserBean();
    boolean exists = false;
    @Autowired
    private UserService userService;

    @PostMapping(value = "/login")
    public void userLogin(@RequestParam("user_phone") String user_phone,
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
            userBean.setUser_phone(user_phone);
            userBean.setUser_pwd(user_pwd);
            boolean login = userService.userLogin(userBean);
            if (login) {
                request.getSession().setAttribute("loginUser", userBean.getUser_phone());
                jsonObject = JSONObject.fromObject(map);
                response.getWriter().print(jsonObject);
            } else {
                map.put("stat", "0");
                jsonObject = JSONObject.fromObject(map);
                response.getWriter().print(jsonObject);
            }
        }

    }

    @PostMapping(value = "/regist")
    public void userRegister(@RequestParam("user_phone") String user_phone,
                             @RequestParam("user_password") String user_pwd,
                             Map<String, Object> map,
                             HttpSession session,
                             HttpServletResponse response,
                             HttpServletRequest request) throws IOException, ServletException {

    }

//    @PostMapping(value = "/login")//将HTTP post请求映射到特定处理程序的方法注解
//    public void userLogin(@RequestParam("user_phone") String user_phone,
//                          @RequestParam("user_password") String user_password,
//                          Map<String, Object> map, HttpSession session,
//                          HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//        request.setCharacterEncoding("utf-8");
//        response.setContentType("text/html;charset=utf-8");
//        JSONObject jsonObject;
//        if (!StringUtils.isEmpty(user_phone) && !StringUtils.isEmpty(user_password)) {
//            System.out.println("进入userBean赋值");
//            userBean.setUser_phone("user_phone");
//            System.out.println("完成user_phone赋值");
//            userBean.setUser_pwd("user_password");
//            System.out.println("完成user_password赋值");
//        } else {
//            //登录失败
//            System.out.println("用户手机号或密码为空");
//            map.put("stat", "0");
//            jsonObject = JSONObject.fromObject(map);
//            response.getWriter().print(jsonObject);
//        }
//        if (userService.userLogin(userBean)) {
//            //登录成功,防止二次提交表单
//            System.out.println("密码正确");
//            request.getSession().setAttribute("loginUser", userBean.getUser_name());
//            jsonObject = JSONObject.fromObject(map);
//            response.getWriter().print(jsonObject);
//        } else {
//            //登录失败
//            System.out.println("密码错误");
//            map.put("stat", "0");
//            jsonObject = JSONObject.fromObject(map);
//            response.getWriter().print(jsonObject);
//        }
//    }
}
