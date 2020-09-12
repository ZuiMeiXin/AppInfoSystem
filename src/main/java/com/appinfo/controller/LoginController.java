package com.appinfo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 页面登录控制
 * @author HiSoft
 */
@Controller
@RequestMapping("/login")
public class LoginController {

    @RequestMapping("/backendlogin.html")
    public String backendLogin(){

        return "backendlogin";
    }




    @RequestMapping("/applogin.html")
    public String appLogin(){

        return "applogin";
    }

}
