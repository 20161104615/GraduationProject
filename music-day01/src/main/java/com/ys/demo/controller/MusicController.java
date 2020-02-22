package com.ys.demo.controller;

import com.ys.demo.bean.MusicBean;
import com.ys.demo.service.MusicService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

/*
 * @Author 20161104615
 * @Description //TODO searchResult:存放搜索到的音乐信息；playList：存放当前播放列表
 * @Date 17:55 2020/2/22
 * @Param
 * @return
 **/
//@ResponseBody//这个类得所有的方法返回的数据直接写给浏览器（如果是对象转为json数据）
//@Controller 用来响应页面,必须配合模板来使用
//@RestController = @ResponseBody + @Controller
@WebServlet//配置参数初始化
@RestController
@RequestMapping("/song")
public class MusicController {

    @Autowired
    private MusicService musicService;

    @PostMapping(value = "/showmusic")
    public void findALlMusic(HttpServletRequest request) {
        ArrayList<MusicBean> allMusicBean = musicService.findAllMusicBean();
    }

    @PostMapping(value = "/findmusicbyname")
    public void findMusicByName(@RequestParam("searchmusic") String music_name,
                                HttpServletResponse response,
                                Map<String, Object> map,
                                HttpServletRequest request) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        JSONObject jsonObject;
        System.out.println("进入findmusicbyname1");
        Map<String, ArrayList<MusicBean>> musicByName = musicService.findMusicByName(music_name);
        for (Map.Entry<String, ArrayList<MusicBean>> entry : musicByName.entrySet()) {
            System.out.println("key= " + entry.getKey() + " and value= " + entry.getValue());
            if (entry.getKey().toString() == "TURE") {
                //表示取值成功
                request.getSession().setAttribute("searchResult", entry.getValue().toArray());
                map.put("stat", "1");
                jsonObject = JSONObject.fromObject(map);
                response.getWriter().print(jsonObject);
            } else {
                //表示未查询到
                request.getSession().setAttribute("searchResult", "FALSE");
                map.put("stat", "0");
                jsonObject = JSONObject.fromObject(map);
                response.getWriter().print(jsonObject);
            }
        }
    }

    @PostMapping(value = "/findmusicbysinger")
    public void findMusicBySinger() {
        ArrayList<MusicBean> musicBySinger = musicService.findMusicBySinger("musicBean");
    }

    /**
     * //TODO 点击事件获取歌名，通过精确查找返回ArrayList，将list中的MusicBean的信息重写，对应于Jplayer的播放列表
     * //TODO 存到名为playMusic的session中，返回前端
     */
    @PostMapping(value = "/musicplaylist",produces = {"application/json;charset=UTF-8"})
    public void findMusicByNamePlayList(@RequestParam("playmusic") String music_name,
                                        HttpServletResponse response,
                                        Map<String, Object> map,
                                        HttpServletRequest request) throws IOException, JSONException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        JSONObject jsonObject;
        JSONArray jsonArray = musicService.AccurateFindMusic(music_name);
        request.getSession().setAttribute("playMusic",jsonArray);
        map.put("stat", "1");
        jsonObject = JSONObject.fromObject(map);
        response.getWriter().print(jsonObject);
    }

    public void addMusicIntoSession(MusicBean musicBean) {

    }

}
