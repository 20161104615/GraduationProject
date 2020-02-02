package com.ys.demo.mapper;

import com.ys.demo.bean.UserBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper//指定这是一个操作数据库的mapper
public interface UserMapper {
//    //用户登录获取用户名
//    @Select("select * from user where user_phone=#{user_phone}")
//    public User getUserByuser_phone(String user_phone);
//
//    @Delete("delect from user where user_phone=#{user_phone}")
//    public int deleteUserByuser_phone(String user_phone);
//
//    @Insert("insert into user")
//    public int insertUser(User user);
//
//    @Update("update user")
//    public int updateUser(User user);
//
   //通过手机号获取用户
    @Select("select * from user where user_phone=#{user_phone} and user_pwd=#{user_pwd}")
    public UserBean getUserByuser_phone(String user_phone, String user_pwd);
}
