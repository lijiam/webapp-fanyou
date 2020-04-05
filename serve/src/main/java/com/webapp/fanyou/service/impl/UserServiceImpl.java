package com.webapp.fanyou.service.impl;

import com.webapp.fanyou.bean.User;
import com.webapp.fanyou.mapper.UserMapper;
import com.webapp.fanyou.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public User login(Map<String, String> params) {
        return userMapper.login(params);
    }

    @Override
    public Map<String, String> register(Map<String, String> params) {
        List<User> users = userMapper.checkUserName(params.get("name"));
        Map<String, String> map = new HashMap<>();
        if (users.size() > 0) {
            map.put("code", "0");
            map.put("msg", "用户已存在");
        } else {
            int count = userMapper.register(params);
            if (count > 0) {
                map.put("code", "1");
                map.put("msg", "注册成功，请登录");
            } else {
                map.put("code", "0");
                map.put("msg", "注册失败，请联系管理员");
            }
        }
        return map;
    }

    @Override
    public Boolean updateLoginTime(String id) {
        return userMapper.updateLoginTime(id) > 0;
    }

    @Override
    public int getMaxUserId() {
        return userMapper.getMaxUserId();
    }

}
