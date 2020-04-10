package imnu.edu.imusic.bean;

import java.util.Objects;

public class Singer {
    private Integer singer_id;
    private String singer_name;//名称
    private String singer_img;//头像
    private String singer_company;//公司
    private String singer_briefintroduction;//简介
    private String singer_nationality;//国籍
    private String singer_placeofbirth;//出生地
    private String singer_birthday;//生日
    private String singer_occupational;//职业
    private String singer_height;//身高
    private String singer_weight;//体重
    private String singer_bloodtype;//血型
    private String singer_constellation;//星座

    public Singer(){}

    public Integer getSinger_id() {
        return singer_id;
    }

    public void setSinger_id(Integer singer_id) {
        this.singer_id = singer_id;
    }

    public String getSinger_name() {
        return singer_name;
    }

    public void setSinger_name(String singer_name) {
        this.singer_name = singer_name;
    }

    public String getSinger_img() {
        return singer_img;
    }

    public void setSinger_img(String singer_img) {
        this.singer_img = singer_img;
    }

    public String getSinger_company() {
        return singer_company;
    }

    public void setSinger_company(String singer_company) {
        this.singer_company = singer_company;
    }

    public String getSinger_briefintroduction() {
        return singer_briefintroduction;
    }

    public void setSinger_briefintroduction(String singer_briefintroduction) {
        this.singer_briefintroduction = singer_briefintroduction;
    }

    public String getSinger_nationality() {
        return singer_nationality;
    }

    public void setSinger_nationality(String singer_nationality) {
        this.singer_nationality = singer_nationality;
    }

    public String getSinger_placeofbirth() {
        return singer_placeofbirth;
    }

    public void setSinger_placeofbirth(String singer_placeofbirth) {
        this.singer_placeofbirth = singer_placeofbirth;
    }

    public String getSinger_birthday() {
        return singer_birthday;
    }

    public void setSinger_birthday(String singer_birthday) {
        this.singer_birthday = singer_birthday;
    }

    public String getSinger_occupational() {
        return singer_occupational;
    }

    public void setSinger_occupational(String singer_occupational) {
        this.singer_occupational = singer_occupational;
    }

    public String getSinger_height() {
        return singer_height;
    }

    public void setSinger_height(String singer_height) {
        this.singer_height = singer_height;
    }

    public String getSinger_weight() {
        return singer_weight;
    }

    public void setSinger_weight(String singer_weight) {
        this.singer_weight = singer_weight;
    }

    public String getSinger_bloodtype() {
        return singer_bloodtype;
    }

    public void setSinger_bloodtype(String singer_bloodtype) {
        this.singer_bloodtype = singer_bloodtype;
    }

    public String getSinger_constellation() {
        return singer_constellation;
    }

    public void setSinger_constellation(String singer_constellation) {
        this.singer_constellation = singer_constellation;
    }

    @Override
    public String toString() {
        return "Singer{" +
                "singer_id=" + singer_id +
                ", singer_name='" + singer_name + '\'' +
                ", singer_img='" + singer_img + '\'' +
                ", singer_company='" + singer_company + '\'' +
                ", singer_briefintroduction='" + singer_briefintroduction + '\'' +
                ", singer_nationality='" + singer_nationality + '\'' +
                ", singer_placeofbirth='" + singer_placeofbirth + '\'' +
                ", singer_birthday='" + singer_birthday + '\'' +
                ", singer_occupational='" + singer_occupational + '\'' +
                ", singer_height='" + singer_height + '\'' +
                ", singer_weight='" + singer_weight + '\'' +
                ", singer_bloodtype='" + singer_bloodtype + '\'' +
                ", singer_constellation='" + singer_constellation + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Singer singer = (Singer) o;
        return Objects.equals(singer_id, singer.singer_id) &&
                Objects.equals(singer_name, singer.singer_name) &&
                Objects.equals(singer_img, singer.singer_img) &&
                Objects.equals(singer_company, singer.singer_company) &&
                Objects.equals(singer_briefintroduction, singer.singer_briefintroduction) &&
                Objects.equals(singer_nationality, singer.singer_nationality) &&
                Objects.equals(singer_placeofbirth, singer.singer_placeofbirth) &&
                Objects.equals(singer_birthday, singer.singer_birthday) &&
                Objects.equals(singer_occupational, singer.singer_occupational) &&
                Objects.equals(singer_height, singer.singer_height) &&
                Objects.equals(singer_weight, singer.singer_weight) &&
                Objects.equals(singer_bloodtype, singer.singer_bloodtype) &&
                Objects.equals(singer_constellation, singer.singer_constellation);
    }

    @Override
    public int hashCode() {
        return Objects.hash(singer_id, singer_name, singer_img, singer_company, singer_briefintroduction, singer_nationality, singer_placeofbirth, singer_birthday, singer_occupational, singer_height, singer_weight, singer_bloodtype, singer_constellation);
    }
}
