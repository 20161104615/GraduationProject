package com.ys.demo.service;

import com.ys.demo.bean.MusicBean;
import java.util.ArrayList;

public interface MusicService {
    public ArrayList<MusicBean> findAllMusicBean();
    public ArrayList<MusicBean> findMusicByName(MusicBean musicBean);
    public ArrayList<MusicBean> findMusicBySinger(MusicBean musicBean);
}
