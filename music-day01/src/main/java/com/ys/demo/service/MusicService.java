package com.ys.demo.service;

import com.ys.demo.bean.MusicBean;
import java.util.ArrayList;
import java.util.Map;

public interface MusicService {
    public ArrayList<MusicBean> findAllMusicBean();
    public Map<String, ArrayList<MusicBean>> findMusicByName(String musicName);
    public ArrayList<MusicBean> findMusicBySinger(String musicSinger);
}
