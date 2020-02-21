package com.ys.demo.service.lmpl;

import com.ys.demo.bean.MusicBean;
import com.ys.demo.mapper.MusicMapper;
import com.ys.demo.service.MusicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;

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
    public ArrayList<MusicBean> findMusicByName(MusicBean musicBean) {
        ArrayList<MusicBean> musicByName = musicMapper.findMusicByName(musicBean);
        return musicByName;
    }

    @Override
    public ArrayList<MusicBean> findMusicBySinger(MusicBean musicBean) {
        ArrayList<MusicBean> musicBySinger = musicMapper.findMusicBySinger(musicBean);
        return musicBySinger;
    }

}