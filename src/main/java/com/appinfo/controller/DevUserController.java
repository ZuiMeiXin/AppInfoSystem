package com.appinfo.controller;

import com.appinfo.pojo.AppInfo;
import com.appinfo.service.app.AppService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 开发者用户控制
 */
@Controller
@RequestMapping("/dev")
public class DevUserController {
    @Autowired
    private AppService appService;

    @RequestMapping("/toapplist.html")
    public String toAppTable(Model model) {
        List<AppInfo> appList = appService.getAppList();
        model.addAttribute("applist", appList);
        return "applist";
    }

    @RequestMapping("/toaddapp.html")
    public String toAddApp() {
        return "appadd";
    }

    @RequestMapping("/addappsave.html")
    public String addAppSave(AppInfo appInfo, Model model) {
        if (appService.addAppInfo(appInfo)) {
            return "redirect:/dev/toapplist.html";
        }
        model.addAttribute("error", "添加失败");
        return "redirect:/dev/toaddapp.htmol";
    }


}
