package com.webapp.fanyou.controller;

import com.webapp.fanyou.bean.User;
import com.webapp.fanyou.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping(value = "/api/user")
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping("/login")
    public Map login(@RequestBody Map<String, String> params) {
        User user = userService.login(params);
        Map map = new HashMap();
        if (user == null) {
            map.put("code", "0");
        } else {
            Boolean tag = userService.updateLoginTime(user.getId());
            if (tag) {
                map.put("code", "1");
                map.put("user", user);
            } else {
                map.put("code", "0");
            }
        }
        return map;
    }

    @RequestMapping("/register")
    public Map<String, String> register(@RequestBody Map<String, String> params) {
        return userService.register(params);
    }


}
