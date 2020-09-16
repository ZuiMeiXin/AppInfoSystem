package com.appinfo.controller;

import com.appinfo.pojo.AppInfo;
import com.appinfo.pojo.AppVersion;
import com.appinfo.service.app.AppService;
import com.appinfo.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/backend")
@Transactional
public class BackendUserController {
    @Autowired
    private UserService userService;
    @Autowired
    private AppService appService;

    /*App审核列表*/
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
        return "backendapplist";
    }

    /*跳转到审核验证页面*/
    @RequestMapping("/toaudit.html")
    public String getAppInfo(Integer id, Model model) {
        AppInfo appInfo = appService.getAppInfo(id);
        AppVersion appversion = appService.getAppVersionByAppId(id);
        model.addAttribute("appInfo", appInfo);
        model.addAttribute("appVersion",appversion);
        return "appaudit";
    }

    /*保存审核修改信息 改变App的状态*/
    @RequestMapping("/auditsave.html")
    public String aduitSave(Integer status, Integer id, Model model) {
        boolean b = appService.changeStatusAudit(status, id);
        if (b) {
            model.addAttribute("message","审核通过");
            return "redirect:/backend/toapplist.html";
        }
        model.addAttribute("error", "修改失败");
        return "redirect:/backend/toapplist.html";
    }

}
