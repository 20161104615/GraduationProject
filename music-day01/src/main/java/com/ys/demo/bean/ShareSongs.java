package com.ys.demo.bean;

import java.sql.Date;
import java.util.Objects;

public class ShareSongs {
    private int id;
    private int music_id;
    private String user_phone;
    private String music_name;
    private Date share_date;
    private String music_singer;

    public ShareSongs() {
    }

    public ShareSongs(int music_id, String user_phone, String music_name, Date share_date, String music_singer) {
        this.music_id = music_id;
        this.user_phone = user_phone;
        this.music_name = music_name;
        this.share_date = share_date;
        this.music_singer = music_singer;
    }

    @Override
    public String toString() {
        return "ShareSongs{" +
                "id=" + id +
                ", music_id=" + music_id +
                ", user_phone='" + user_phone + '\'' +
                ", music_name='" + music_name + '\'' +
                ", share_date=" + share_date +
                ", music_singer='" + music_singer + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ShareSongs that = (ShareSongs) o;
        return id == that.id &&
                music_id == that.music_id &&
                Objects.equals(user_phone, that.user_phone) &&
                Objects.equals(music_name, that.music_name) &&
                Objects.equals(share_date, that.share_date) &&
                Objects.equals(music_singer, that.music_singer);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, music_id, user_phone, music_name, share_date);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getMusic_id() {
        return music_id;
    }

    public void setMusic_id(int music_id) {
        this.music_id = music_id;
    }

    public String getUser_phone() {
        return user_phone;
    }

    public void setUser_phone(String user_phone) {
        this.user_phone = user_phone;
    }

    public String getMusic_name() {
        return music_name;
    }

    public void setMusic_name(String music_name) {
        this.music_name = music_name;
    }

    public Date getShare_date() {
        return share_date;
    }

    public void setShare_date(Date share_date) {
        this.share_date = share_date;
    }

    public String getMusic_singer() {
        return music_singer;
    }

    public void setMusic_singer(String music_singer) {
        this.music_singer = music_singer;
    }
}
