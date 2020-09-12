package com.appinfo.controller;

import com.appinfo.pojo.BackendUser;
import com.appinfo.pojo.DevUser;
import com.appinfo.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 页面登录控制
 *
 * @author HiSoft
 */
@Controller
@RequestMapping("/login")
public class LoginController {
    @Autowired
    private UserService userService;

    /**
     * 后台管理系统登录页面跳转
     */
    @RequestMapping("/tobackendlogin.html")
    public String backendLogin() {

        return "backendlogin";
    }


    /**
     * App开发者管理平台跳转
     */
    @RequestMapping("/toapplogin.html")
    public String appLogin() {

        return "applogin";
    }

    /**
     * 后台管理登录验证
     */
    @RequestMapping("/backendlogin.html")
    public String getBackendUser(@RequestParam("userCode") String userCode,
                                 @RequestParam("userPassword") String userPassword,
                                 Model model) {
        BackendUser backendUser = userService.getBackendUser(userCode, userPassword);
        if (backendUser != null) {
            return "";

        }
        model.addAttribute("error", "用户名或密码错误");
        return "redirect:/login/tobackendlogin.html";
    }

    /**
     * 后台管理登录验证
     */
    @RequestMapping("/devlogin.html")
    public String getDevUser(@RequestParam("devCode") String devCode,
                             @RequestParam("devPassword") String devPassword,
                             Model model) {
        DevUser devUser = userService.getDevUser(devCode, devPassword);
        if (devUser != null) {
            /*登陆成功 跳转到管理页面*/
            return "apptable";
        }
        model.addAttribute("error", "用户名或密码错误");
        return "redirect:/login/toapplogin.html";
    }


}
