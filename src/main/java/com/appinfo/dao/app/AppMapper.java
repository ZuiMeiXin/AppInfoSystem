package com.appinfo.dao.app;


import com.appinfo.pojo.AppInfo;

import java.util.List;

public interface AppMapper {
    /*获取app列表*/
    List<AppInfo> getAppList();

    /*添加一个新的app基础信息*/
    int addApp(AppInfo appInfo);
}
