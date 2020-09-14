package com.appinfo.dao.app;


import com.appinfo.pojo.AppInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface AppMapper {
    /*获取app列表 查询出了版本号和状态*/
    List<AppInfo> getAppList();
    /*获取一个App所以基础信息*/
    AppInfo getAppInfo(Integer id);

    /*根据 flatformId 查询出所属平台*/
    String getFlatFormAppList(Integer flatformId);

    /*根据 categoryLevel 查询出所属分类*/
    String getAppCategoryLevelName(@Param("categoryLevel") Integer categoryLevel);
    /*添加一个新的app基础信息*/
    int addApp(AppInfo appInfo);

    /*修改App的基础信息*/
    int updateApp(AppInfo appInfo);

    /*删除App的基础信息*/
    int deleteApp(Integer id);

    /*修改app的上架状态*/
    int updateAppStatus(Integer status, Integer id);

    /*条件查询,根据软件名称，App状态，所属平台，一级分类，二级分类，三级分类*/
    List<AppInfo> queryApplist(Map map);




}
