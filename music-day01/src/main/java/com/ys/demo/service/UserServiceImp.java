package com.ys.demo.service;

import com.ys.demo.bean.UserBean;
import com.ys.demo.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImp implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public boolean userLogin(UserBean userBean) {
        UserBean finduserbean = userMapper.getUserByuser_phone(userBean.getUser_phone(), userBean.getUser_pwd());
        finduserbean.toString();
        if (finduserbean.getUser_id() != null) {
            //表明存在用户且用户名、密码正确
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean userRegister(UserBean userBean) {

        return false;
    }

    @Override
    public boolean userUpdate(UserBean userBean) {
        return false;
    }
}
