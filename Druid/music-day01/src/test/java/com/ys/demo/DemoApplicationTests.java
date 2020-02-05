package com.ys.demo;

import com.ys.demo.bean.UserBean;
import com.ys.demo.service.UserService;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

@RunWith(SpringRunner.class)
@SpringBootTest
class DemoApplicationTests {

    @Autowired//自动注入
    DataSource dataSource;
    @Autowired
    UserService userService;
    @Test
    void contextLoads() throws SQLException {
        System.out.println("默认使用："+dataSource.getClass()+"数据源");
        Connection connection = dataSource.getConnection();
        System.out.println(connection);

        UserBean userBean = new UserBean("wahaha","1234","123","123");
        UserBean userLogin = userService.userLogin(userBean);
        System.out.println(userLogin);
        System.out.println(userBean.getUser_id()+userBean.getUser_pwd());
        connection.close();
    }



    public void finduser(){
        UserBean userBean = new UserBean("123","123","123","123");
        UserBean userLogin = userService.userLogin(userBean);
        System.out.println(userLogin);
        System.out.println(userBean.getUser_id()+userBean.getUser_pwd());
    }


}
