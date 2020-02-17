package com.ys.demo.bean;
/*
 * @ClassName SongSearchResult
 * @Author 20161104615
 * @Description //TODO
 * @Date 0:38 2020/2/18
 */
public class SongSearchResult {
    //歌曲id
    private int id;
    //歌曲名称
    private String song_name;
    //歌手名称
    private String artist_name;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSong_name() {
        return song_name;
    }

    public void setSong_name(String song_name) {
        this.song_name = song_name;
    }

    public String getArtist_name() {
        return artist_name;
    }

    public void setArtist_name(String artist_name) {
        this.artist_name = artist_name;
    }
}
