package imnu.edu.imusic.controller;


import imnu.edu.imusic.bean.MusicBean;
import imnu.edu.imusic.bean.ShareSongs;
import imnu.edu.imusic.service.MusicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@Controller
public class LoginController {
    @Autowired
    private MusicService musicService;
    @RequestMapping(value = "/index")
    public String allMusicBean(HttpServletRequest request,HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        ArrayList<MusicBean> allMusicBean = musicService.findAllMusicBean();
        ArrayList<ShareSongs> oneMouthShare = musicService.findOneMouthShare();
        request.getSession().setAttribute("oneMouthShare",oneMouthShare);
        request.getSession().setAttribute("MusicList", allMusicBean);
        request.getSession().removeAttribute("LoginUser");
        request.getSession().removeAttribute("playMusiconeinformation");
        request.getSession().removeAttribute("playMusic");
        request.getSession().removeAttribute("searchResult");
        request.getSession().removeAttribute("searchuser");
        request.getSession().removeAttribute("sharemusiclist");
        request.getSession().removeAttribute("sharemusic");
        request.getSession().removeAttribute("ALoginUser");
        request.getSession().removeAttribute("commentslist");
        request.getSession().removeAttribute("userfm");
        request.getSession().removeAttribute("rp");
        request.getSession().removeAttribute("searchResultSingerMusic");
        request.getSession().removeAttribute("searchResultSingerInfor");
        request.getSession().removeAttribute("searchsharemusiclist");
        request.getSession().removeAttribute("searchplayMusiconeinformation");
        request.getSession().removeAttribute("userintegral");
        request.getSession().removeAttribute("uservisitors");
        return "index";
    }
}
