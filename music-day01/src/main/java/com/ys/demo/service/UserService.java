package com.ys.demo.service;

import com.ys.demo.bean.UserBean;

public interface UserService {
    public boolean userLogin(UserBean userBean);
    public boolean userRegister(UserBean userBean);
    public boolean userUpdate(UserBean userBean);
}
