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
     *      2、根据名称查找（模糊查找）
     *      3、根据歌手查找（模糊查找）
     */
    @Select("select * from music")
    public ArrayList<MusicBean> findMusicBeanList();

    @Select("select * from music where music_name like concat('%',#{music_name},'%')")
    public ArrayList<MusicBean> findMusicByName(MusicBean musicBean);

    @Select("select * from music where music_singer like concat('%',#{music_singer},'%')")
    public ArrayList<MusicBean> findMusicBySinger(MusicBean musicBean);

    /**
     * 添加歌曲
     *      1、添加歌曲名、歌词、歌曲本地根路径
     */
    @Insert("insert into music (music_name,music_singer,music_lyrics,music_storagepath) " +
            "values " +
            "(#{music_name},#{music_singer},#{music_lyrics},#{music_storagepath})")
    public int uploadMusic(MusicBean musicBean);
}
