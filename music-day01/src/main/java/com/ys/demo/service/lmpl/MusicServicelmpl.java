package com.ys.demo.service.lmpl;

import com.ys.demo.bean.MusicBean;
import com.ys.demo.mapper.MusicMapper;
import com.ys.demo.service.MusicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@Service
public class MusicServicelmpl implements MusicService {

    @Autowired
    private MusicMapper musicMapper;

    @Override
    public ArrayList<MusicBean> findAllMusicBean() {
        ArrayList<MusicBean> musicBeans = musicMapper.findMusicBeanList();
        return musicBeans;
    }

    @Override
    public Map<String, ArrayList<MusicBean>> findMusicByName(String musicName) {
        MusicBean musicBean = new MusicBean();
        musicBean.setMusic_name(musicName);
        ArrayList<MusicBean> musicByName = musicMapper.findMusicByName(musicBean);
        Map<String, ArrayList<MusicBean>> map = new HashMap<String, ArrayList<MusicBean>>();
        if (musicByName.isEmpty()) {
            //ArrayList为空
            map.put("FALSE", musicByName);
        } else {
            map.put("TURE", musicByName);
        }
        return map;
    }

    @Override
    public ArrayList<MusicBean> findMusicBySinger(String musicSinger) {
        MusicBean musicBean = new MusicBean();
        musicBean.setMusic_singer(musicSinger);
        ArrayList<MusicBean> musicBySinger = musicMapper.findMusicBySinger(musicBean);
        Map<String, ArrayList<MusicBean>> map = new HashMap<String, ArrayList<MusicBean>>();
        return musicBySinger;
    }

    @Override
    public boolean uploadMusic(String newMusicName, String newMusicSinger) {
        String newSongUrl = "http://localhost:8080/media/"+newMusicName+".m4a";
        String newSongImgUrl = "http://localhost:8080/media/img/"+newMusicName+"-"+newMusicSinger+".jpg";
        MusicBean musicBean = new MusicBean(newMusicName, newMusicSinger, newSongUrl, newSongImgUrl);
        int i = musicMapper.uploadMusic(musicBean);
        if (i != 0) {
            return true;
        } else {
            return false;
        }
    }

}