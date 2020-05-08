package imnu.edu.imusic.bean;

import java.util.Objects;

public class Visitors {
    private Integer id;
    private String user_phone;//手机号
    private String visitors;//游客

    public Visitors() {
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Visitors visitors1 = (Visitors) o;
        return Objects.equals(id, visitors1.id) &&
                Objects.equals(user_phone, visitors1.user_phone) &&
                Objects.equals(visitors, visitors1.visitors);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, user_phone, visitors);
    }

    @Override
    public String toString() {
        return "Visitors{" +
                "id=" + id +
                ", user_phone='" + user_phone + '\'' +
                ", visitors='" + visitors + '\'' +
                '}';
    }

    public Visitors(String user_phone, String visitors) {
        this.user_phone = user_phone;
        this.visitors = visitors;
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

    public String getVisitors() {
        return visitors;
    }

    public void setVisitors(String visitors) {
        this.visitors = visitors;
    }
}
