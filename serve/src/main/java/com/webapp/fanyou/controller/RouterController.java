package com.webapp.fanyou.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RouterController {

    @RequestMapping("/")
    public String index() {
        return "pages/index";
    }

    @RequestMapping("/welcome")
    public String welcome() {
        return "pages/welcome";
    }

    @RequestMapping("/back")
    public String backIndex() {
        return "backpages/index";
    }

    @RequestMapping("/back/login")
    public String backLogin() {
        return "backpages/login";
    }
}
