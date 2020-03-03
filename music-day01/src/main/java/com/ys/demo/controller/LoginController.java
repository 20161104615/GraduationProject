package com.ys.demo.controller;

import com.ys.demo.bean.MusicBean;
import com.ys.demo.service.MusicService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

@Controller
public class LoginController {
    @Autowired
    MusicService musicService;
    @RequestMapping(value = "/index")
    public String allMusicBean(HttpServletRequest request,HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        ArrayList<MusicBean> allMusicBean = musicService.findAllMusicBean();
        request.getSession().setAttribute("MusicList", allMusicBean);
        return "index";
    }
    @RequestMapping(value = "/logout")
    public String userLogout(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        request.getSession().removeAttribute("LoginUser");
        request.getSession().removeAttribute("playMusiconeinformation");
        request.getSession().removeAttribute("playMusic");
        request.getSession().removeAttribute("searchResult");
        return "index";
    }
}
