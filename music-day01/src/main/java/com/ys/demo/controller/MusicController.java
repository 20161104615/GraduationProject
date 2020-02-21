package com.ys.demo.controller;

import com.ys.demo.bean.MusicBean;
import com.ys.demo.service.MusicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

@WebServlet//配置参数初始化
@RestController
@RequestMapping("/song")
public class MusicController {

    @Autowired
    private MusicService musicService;

    @PostMapping(value = "/showmusic")
    public void findALlMusic(HttpServletRequest request){
        ArrayList<MusicBean> allMusicBean = musicService.findAllMusicBean();
    }

    @PostMapping(value = "/findmusicbyname")
    public void findMusicByName(){
        MusicBean musicBean = new MusicBean(" ");
        ArrayList<MusicBean> musicByName = musicService.findMusicByName(musicBean);
    }

    @PostMapping(value = "/findmusicbysinger")
    public void findMusicBySinger(){
        MusicBean musicBean = new MusicBean(" ");
        ArrayList<MusicBean> musicBySinger = musicService.findMusicBySinger(musicBean);
    }

}
