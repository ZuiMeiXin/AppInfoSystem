package com.appinfo.controller;

import com.alibaba.fastjson.JSON;
import com.appinfo.pojo.AppCategory;
import com.appinfo.pojo.AppInfo;
import com.appinfo.pojo.AppVersion;
import com.appinfo.pojo.DataDictionary;
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
import org.springframework.web.servlet.mvc.method.annotation.JsonViewResponseBodyAdvice;

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

    /*跳转到App列表，并查询所有的App信息*/
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

    /*添加App基础信息*/
    @RequestMapping("/addappsave.html")
    public String addAppSave(AppInfo appInfo, Model model) {
        appInfo.setCreationDate(new Date());

        if (appService.addAppInfo(appInfo)) {
            return "redirect:/dev/toapplist.html";
        }
        model.addAttribute("error", "添加失败");
        return "redirect:/dev/toaddapp.htmol";
    }

    /*跳转到修改页面*/
    @RequestMapping("/toupdate.html")
    public String toUpdate(@RequestParam("id") Integer id, Model model) {
        AppInfo appInfo = appService.getAppInfo(id);
        model.addAttribute("AppInfo", appInfo);
        return "appupdate";
    }

    /*更新App信息*/
    @RequestMapping("/appupdatesave.html")
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    public String upateAppSave(AppInfo appInfo, Model model) {
        appInfo.setModifyDate(new Date());
        if (appService.updateApp(appInfo)) {
            return "redirect:/dev/toapplist.html";
        }
        model.addAttribute("error", "修改失败");
        return "redirect:/dev/toapplist.html";
    }

    /*根据Id获取App的基础信息*/
    @RequestMapping("/getAppInfo")
    @ResponseBody
    public String getAppInfo(Integer id) {
        AppInfo appInfo = appService.getAppInfo(id);
        return JSON.toJSONString(appInfo);
    }

    /*获取所有的一级分类*/
    @RequestMapping(value = "/getCategory", produces = "text/json;charset=utf-8")
    @ResponseBody
    public String getCategoryLevel1() {
        List<AppCategory> categoryLevel1 = appService.getCategoryLevel1();
        return JSON.toJSONString(categoryLevel1);
    }

    /*根据父级节点id 获取子级分类*/
    @RequestMapping(value = "/getCategoryLevel2", produces = "text/json;charset=utf-8")
    @ResponseBody
    public String getCategoryLevel2(Integer id) {
        List<AppCategory> categoryLevelByParentId = appService.getCategoryLevelByParentId(id);
        return JSON.toJSONString(categoryLevelByParentId);
    }

    /*获取所有的 所属平台*/
    @RequestMapping(value = "/getFlatForm", produces = "text/json;charset=UTF-8")
    @ResponseBody
    public String getFlatFrom() {
        List<DataDictionary> flatForm = appService.getFlatForm();
        return JSON.toJSONString(flatForm);
    }

    /*获取所有的状态*/
    @RequestMapping(value = "/getStatus", produces = "text/json;charset=UTF-8")
    @ResponseBody
    public String getStatus() {
        List<DataDictionary> status = appService.getStatus();
        return JSON.toJSONString(status);
    }

    /*删除App*/
    @RequestMapping("/deleteapp")
    @ResponseBody
    public String deleteApp(Integer id) {
        boolean b = appService.deleteApp(id);
        return JSON.toJSONString(b);
    }


    /*修改App的状态信息 上架或者下架*/
    @RequestMapping("/changestatus")
    @ResponseBody
    public String changeStatus(@RequestParam("status") Integer status, @RequestParam("id") Integer id) {
        Boolean aBoolean = appService.changeStatus(status, id);
        return JSON.toJSONString(aBoolean);
    }

    /*获取一个App的基础信息*/
    @RequestMapping(value = "/viewapp", produces = "text/json;charset=utf-8")
    @ResponseBody
    public String getAppView(Integer id) {
        AppInfo appInfo = appService.getAppInfo(id);
        return JSON.toJSONString(appInfo);
    }


    /*新增版本信息*/
    @RequestMapping("/addversionsave.html")
    public String addVersionInfo(AppVersion appVersion, Model model) {
        appVersion.setCreationDate(new Date());
        Boolean aBoolean = appService.addVersionInfo(appVersion);
        /*Appinfo中对应的App的versionId也要添加上*/
        int versionId = appService.getAppVersionIdByAppId(appVersion.getAppId());
        boolean b = appService.addAppInfoVersionId(versionId, appVersion.getAppId());
        if (!aBoolean || !b) {
            model.addAttribute("error", "添加失败");
        }
        return "redirect:/dev/toapplist.html";
    }

}
