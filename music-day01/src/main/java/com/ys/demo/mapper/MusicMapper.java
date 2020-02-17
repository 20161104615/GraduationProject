package com.ys.demo.mapper;

import com.ys.demo.bean.MusicBean;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.ArrayList;

@Mapper
public interface MusicMapper {

    /**
     * 查找歌曲
     *      1、查找全部歌曲
     */
    @Select("select * from music")
    public ArrayList<MusicBean> findMusicBeanList(MusicBean musicBean);

    /**
     * 添加歌曲
     *      1、添加歌曲名、歌词、歌曲本地根路径
     */
    @Insert("insert into music (music_name,music_singer,music_lyrics,music_storagepath) " +
            "values " +
            "(#{music_name},#{music_singer},#{music_lyrics},#{music_storagepath})")
    public int uploadMusic(MusicBean musicBean);
}
