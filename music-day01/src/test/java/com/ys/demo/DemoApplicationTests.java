package com.ys.demo;

import com.ys.demo.bean.MusicBean;
import com.ys.demo.mapper.MusicMapper;
import com.ys.demo.service.UserService;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.servlet.http.HttpUtils;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

@RunWith(SpringRunner.class)
@SpringBootTest
class DemoApplicationTests {

    @Autowired//自动注入
            DataSource dataSource;
    @Autowired
    UserService userService;
    @Autowired
    MusicMapper musicMapper1;


    @Test
    void contextLoads() throws SQLException {
        System.out.println("默认使用：" + dataSource.getClass() + "数据源");
        Connection connection = dataSource.getConnection();
        System.out.println(connection);
        connection.close();
    }


    @Test
    void findmusic() {
        MusicBean musicBean = new MusicBean();
        ArrayList<MusicBean> musicBeanList = musicMapper1.findMusicBeanList(musicBean);
        musicBeanList.forEach(musicBean1 -> System.out.println(musicBean1 .getMusic_name()));
    }

    @Test
    void insertmusic(){
        MusicBean musicBean = new MusicBean("麻雀", "李荣浩", "", "D:\\10191\\AllDownload\\Songs");
        int musicBean1 = musicMapper1.uploadMusic(musicBean);
        if(musicBean1 != 0){
            findmusic();
        } else {
            System.out.println("添加歌曲出错！");
        }
        
    }

    @Test
    void sysout(){
        System.out.println(this.getClass().getClassLoader().getResource("music/maque.mp3"));
    }

    @Test
    void getsong(){
        String url = "http://s.music.163.com/search/get/?type=1&filterDJ=true&s=遇见&limit10&offset=0";
        System.out.println();
    }


}
