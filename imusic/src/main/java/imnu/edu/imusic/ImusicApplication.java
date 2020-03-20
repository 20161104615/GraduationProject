package imnu.edu.imusic;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("imnu.edu.imusic.mapper")
public class ImusicApplication {

    public static void main(String[] args) {
        SpringApplication.run(ImusicApplication.class, args);
    }

}
