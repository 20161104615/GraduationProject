package com.ys.demo.mapper;

import com.ys.demo.bean.Song;

import java.util.List;

public interface SongMapper {
    //查询所有
    public List<Song> getAll();

    //保存操作
    public boolean insert(Song song);

}
