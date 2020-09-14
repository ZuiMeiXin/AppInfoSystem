package com.appinfo.controller;

import com.alibaba.fastjson.JSON;
import com.appinfo.pojo.AppInfo;
import com.appinfo.service.app.AppService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableMBeanExport;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.ObjectInputStream;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 开发者用户控制
 */
@Controller
@RequestMapping("/dev")
public class DevUserController {
    @Autowired
    private AppService appService;

    @RequestMapping("/toapplist.html")
    public String toAppTable(
            @RequestParam(value = "softwareName", defaultValue = "") String appName,
            @RequestParam(value = "status", defaultValue = "0") Integer status,
            @RequestParam(value = "flatformId", defaultValue = "0") Integer flatformId,
            @RequestParam(value = "categoryLevel1", defaultValue = "0") Integer categoryLevel1,
            @RequestParam(value = "categoryLevel2", defaultValue = "0") Integer categoryLevel2,
            @RequestParam(value = "categoryLevel3", defaultValue = "0") Integer categoryLevel3,
            Model model) {
        Map map = new HashMap();
        map.put("appName", appName);
        map.put("status", status);
        map.put("flatformId", flatformId);
        map.put("categoryLevel1", categoryLevel1);
        map.put("categoryLevel2", categoryLevel2);
        map.put("categoryLevel3", categoryLevel3);
        List<AppInfo> appList = appService.queryApplist(map);
        model.addAttribute("applist", appList);
        return "applist";
    }

    @RequestMapping("/toaddapp.html")
    public String toAddApp() {
        return "appadd";
    }

    @RequestMapping("/addappsave.html")
    public String addAppSave(AppInfo appInfo, Model model) {
        System.out.println(appInfo);
        appInfo.setCreationDate(new Date());
        if (appService.addAppInfo(appInfo)) {
            return "redirect:/dev/toapplist.html";
        }
        model.addAttribute("error", "添加失败");
        return "redirect:/dev/toaddapp.htmol";
    }

    @RequestMapping("/toupdate.html")
    public String toUpdate(Integer id, Model model) {
        model.addAttribute("id", id);
        return "appupdate";
    }

    @RequestMapping("/appupdatesave.html")
    @Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
    public String upateAppSave(AppInfo appInfo, Model model) {
        appInfo.setModifyDate(new Date());
        if (appService.updateApp(appInfo)) {
            return "redirect:/dev/applist.html";
        }
        model.addAttribute("error", "修改失败");
        return "redirect:/dev/applist.html";
    }

    @RequestMapping("/getAppInfo")
    @ResponseBody
    public String getAppInfo(Integer id) {
        AppInfo appInfo = appService.getAppInfo(id);
        return JSON.toJSONString(appInfo);
    }


}
