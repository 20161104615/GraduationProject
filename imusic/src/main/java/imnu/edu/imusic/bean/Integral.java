package imnu.edu.imusic.bean;

import java.util.Objects;

public class Integral {
    private String user_phone;//手机号
    private String music_name;//邮箱
    private Integer user_integral;//积分

    public Integral() {
    }

    public Integral(String user_phone, String music_name, Integer user_integral) {
        this.user_phone = user_phone;
        this.music_name = music_name;
        this.user_integral = user_integral;
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

    public Integer getUser_integral() {
        return user_integral;
    }

    public void setUser_integral(Integer user_integral) {
        this.user_integral = user_integral;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Integral integral = (Integral) o;
        return Objects.equals(user_phone, integral.user_phone) &&
                Objects.equals(music_name, integral.music_name) &&
                Objects.equals(user_integral, integral.user_integral);
    }

    @Override
    public int hashCode() {
        return Objects.hash(user_phone, music_name, user_integral);
    }

    @Override
    public String toString() {
        return "Integral{" +
                "user_phone='" + user_phone + '\'' +
                ", music_name='" + music_name + '\'' +
                ", user_integral=" + user_integral +
                '}';
    }
}
