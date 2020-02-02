package com.ys.demo.bean;

import javax.xml.crypto.Data;
import java.util.Objects;

public class MusicBean {
    private String music_name;//歌名
    private String music_singer;//歌手
    private Data music_releasedate;//发行日期
    private String music_album;//专辑
    private String music_lyrics;//歌词

    public String getMusic_name() {
        return music_name;
    }

    public void setMusic_name(String music_name) {
        this.music_name = music_name;
    }

    public String getMusic_singer() {
        return music_singer;
    }

    public void setMusic_singer(String music_singer) {
        this.music_singer = music_singer;
    }

    public Data getMusic_releasedate() {
        return music_releasedate;
    }

    public void setMusic_releasedate(Data music_releasedate) {
        this.music_releasedate = music_releasedate;
    }

    public String getMusic_album() {
        return music_album;
    }

    public void setMusic_album(String music_album) {
        this.music_album = music_album;
    }

    public String getMusic_lyrics() {
        return music_lyrics;
    }

    public void setMusic_lyrics(String music_lyrics) {
        this.music_lyrics = music_lyrics;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof MusicBean)) return false;
        MusicBean musicBean = (MusicBean) o;
        return Objects.equals(music_name, musicBean.music_name) &&
                Objects.equals(music_singer, musicBean.music_singer) &&
                Objects.equals(music_releasedate, musicBean.music_releasedate) &&
                Objects.equals(music_album, musicBean.music_album) &&
                Objects.equals(music_lyrics, musicBean.music_lyrics);
    }

    @Override
    public int hashCode() {
        return Objects.hash(music_name, music_singer, music_releasedate, music_album, music_lyrics);
    }

    @Override
    public String toString() {
        return "MusicBean{" +
                "music_name='" + music_name + '\'' +
                ", music_singer='" + music_singer + '\'' +
                ", music_releasedate=" + music_releasedate +
                ", music_album='" + music_album + '\'' +
                ", music_lyrics='" + music_lyrics + '\'' +
                '}';
    }
}
