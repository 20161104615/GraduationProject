package imnu.edu.imusic.bean;

import java.util.Date;
import java.util.Objects;

public class Comments {
    private Integer id;
    private String user_phone;
    private String music_name;
    private String music_singer;
    private Integer music_id;
    private String comments;
    private Date comments_date;
    private String user_name;
    private String user_avatar;//头像

    public Comments() {
    }

    public Comments(String user_phone, String music_name, String music_singer, Integer music_id, String comments, Date comments_date, String user_name, String user_avatar) {
        this.user_phone = user_phone;
        this.music_name = music_name;
        this.music_singer = music_singer;
        this.music_id = music_id;
        this.comments = comments;
        this.comments_date = comments_date;
        this.user_name = user_name;
        this.user_avatar = user_avatar;
    }

    @Override
    public String toString() {
        return "Comments{" +
                "id=" + id +
                ", user_phone='" + user_phone + '\'' +
                ", music_name='" + music_name + '\'' +
                ", music_singer='" + music_singer + '\'' +
                ", music_id=" + music_id +
                ", comments='" + comments + '\'' +
                ", comments_date=" + comments_date +
                ", user_name='" + user_name + '\'' +
                ", user_avatar='" + user_avatar + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Comments comments1 = (Comments) o;
        return Objects.equals(id, comments1.id) &&
                Objects.equals(user_phone, comments1.user_phone) &&
                Objects.equals(music_name, comments1.music_name) &&
                Objects.equals(music_singer, comments1.music_singer) &&
                Objects.equals(music_id, comments1.music_id) &&
                Objects.equals(comments, comments1.comments) &&
                Objects.equals(comments_date, comments1.comments_date) &&
                Objects.equals(user_name, comments1.user_name) &&
                Objects.equals(user_avatar, comments1.user_avatar);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, user_phone, music_name, music_singer, music_id, comments, comments_date, user_name, user_avatar);
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public String getMusic_singer() {
        return music_singer;
    }

    public void setMusic_singer(String music_singer) {
        this.music_singer = music_singer;
    }

    public Integer getMusic_id() {
        return music_id;
    }

    public void setMusic_id(Integer music_id) {
        this.music_id = music_id;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public Date getComments_date() {
        return comments_date;
    }

    public void setComments_date(Date comments_date) {
        this.comments_date = comments_date;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_avatar() {
        return user_avatar;
    }

    public void setUser_avatar(String user_avatar) {
        this.user_avatar = user_avatar;
    }
}
