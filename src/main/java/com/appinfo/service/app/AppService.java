package com.appinfo.service.app;


import com.appinfo.pojo.AppInfo;

import java.util.List;

public interface AppService {
    /*获取App列表*/
    public List<AppInfo> getAppList();

    /*添加App基础信息*/
    public boolean addAppInfo(AppInfo appInfo);

    /*删除App基础信息*/
    public boolean deleteApp(Integer id);

    /*修改App基础信息*/
    public boolean updateApp(AppInfo appInfo);
}
