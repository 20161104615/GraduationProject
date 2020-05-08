package imnu.edu.imusic;

import imnu.edu.imusic.bean.MusicBean;
import imnu.edu.imusic.bean.ShareSongs;
import imnu.edu.imusic.bean.UserBean;
import imnu.edu.imusic.mapper.MusicMapper;
import imnu.edu.imusic.mapper.UserMapper;
import imnu.edu.imusic.service.MusicService;
import org.apache.ibatis.annotations.Insert;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.*;

import java.util.ArrayList;
import java.util.Collections;

@SpringBootTest
class ImusicApplicationTests {

    @Autowired
    MusicService musicService;

    @Autowired
    UserMapper userMapper;

    @Autowired
    MusicMapper musicMapper;

    @Test
    void contextLoads() {
        String music_name = "光明";
        ArrayList<MusicBean> accuratefindmusicinformation = musicService.accuratefindmusicinformation(music_name);
        for (MusicBean musicBean : accuratefindmusicinformation) {
            if (musicBean.getMusic_name().equals(music_name)) {
                System.out.println("YES");
            }
        }
    }

    @Test
    void newpwd() {
        UserBean userBean = new UserBean();
        userBean.setUser_email("111");
        userBean.setUser_pwd("111111");
        boolean b = userMapper.updateuserpwd(userBean);
        System.out.println(b);
    }

    @Test
    void delmusic() {
        /* File f = new File("D:/JavaProgram/test/test.mp3");  // 路径名*/
        String filemusicimg = "D:/JavaProgram/Apache-tomcat/apache-tomcat-8.5.43/webapps/ROOT/media/img/" + "2002年的第一场雪-刀郎" + ".jpg";
        File ff = new File(filemusicimg);  // 路径名

       /* boolean flag = false;

        // 路径为文件且不为空则进行删除
        if (f.isFile() && f.exists()) {
            f.delete();
            flag = true;
        }*/
        boolean flags = false;
        if (ff.isFile() && ff.exists()) {
            ff.delete();
            flags = true;
        }
        System.out.println(flags);
    }

    @Test
    void data() {
        ArrayList<ShareSongs> arrayList = musicMapper.findShareMusicByDate();
        System.out.println("正序输出");
        for (ShareSongs music : arrayList
        ) {
            System.out.println(music);
        }
        System.out.println("逆序输出");
        Collections.reverse(arrayList);
        for (ShareSongs song:arrayList
             ) {
            System.out.println(song);
        }
    }

    @Test
    void intergal(){
        int userIntegral = userMapper.insertUserIntegral("1234", "李白", 6);
        System.out.println(userIntegral);
        Integer integer = userMapper.finduserintegral("1234");
        System.out.println(integer);
    }

    @Test
    void vistiors(){
        int i = userMapper.insertUserVistors("1234", "12345");
        System.out.println(i);
        Integer sss = userMapper.finduservisitors("1234");
        System.out.println("访问人数："+sss);
    }


}
