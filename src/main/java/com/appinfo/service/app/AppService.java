package com.appinfo.service.app;


import com.appinfo.pojo.AppCategory;
import com.appinfo.pojo.AppInfo;
import com.appinfo.pojo.DataDictionary;

import java.util.List;
import java.util.Locale;
import java.util.Map;

public interface AppService {
    /*获取App列表*/
    public List<AppInfo> getAppList();

    /*获取App的基础信息*/
    public AppInfo getAppInfo(Integer id);

    /*获取一级分类*/
    public List<AppCategory> getCategoryLevel1();

    /*通过id获取子级分类*/
    public List<AppCategory> getCategoryLevelByParentId(Integer id);

    /*获取 所有的所属平台 flatform*/
    public List<DataDictionary> getFlatForm();

    /*获取所有的App状态信息 status*/
    public List<DataDictionary> getStatus();

    /*添加App基础信息*/
    public boolean addAppInfo(AppInfo appInfo);

    /*删除App基础信息*/
    public boolean deleteApp(Integer id);

    /*修改App基础信息*/
    public boolean updateApp(AppInfo appInfo);

    /*条件查询App信息，软件名称，App状态，所属平台，一级分类，二级分类，三级分类*/
    public List<AppInfo> queryApplist(Map map);

    public String getFlatFormName(Integer flatformId);
}
