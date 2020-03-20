package imnu.edu.imusic;

import imnu.edu.imusic.bean.MusicBean;
import imnu.edu.imusic.service.MusicService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.ArrayList;

@SpringBootTest
class ImusicApplicationTests {

    @Autowired
    MusicService musicService;
    @Test
    void contextLoads() {
        String music_name = "光明";
        ArrayList<MusicBean> accuratefindmusicinformation = musicService.accuratefindmusicinformation(music_name);
        for (MusicBean musicBean : accuratefindmusicinformation) {
            if (musicBean.getMusic_name().equals(music_name)){
                System.out.println("YES");
            }
        }
    }

}
