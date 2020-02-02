package com.webapp.fanyou.service;

import com.webapp.fanyou.bean.User;

import java.util.Map;

public interface UserService {
    User login(Map<String, String> params);

    Map<String,String> register(Map<String, String> params);

    Boolean updateLoginTime(String id);
}
