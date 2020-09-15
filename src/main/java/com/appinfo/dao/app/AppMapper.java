package com.appinfo.dao.app;


import com.appinfo.pojo.AppCategory;
import com.appinfo.pojo.AppInfo;
import com.appinfo.pojo.AppVersion;
import com.appinfo.pojo.DataDictionary;
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


    /*获取一级分类*/
    List<AppCategory> getCategoryLevel1();

    /*根据父级Id 获取子级分类*/
    List<AppCategory> getCategoryLevelByParentId(Integer id);

    /*获取所有的 所属平台 flatformid*/
    List<DataDictionary> getFlatForm();

    /*获取所有的 状态信息 status*/
    List<DataDictionary> getStatus();


    /*根据 categoryLevel 查询出所属分类*/
    String getAppCategoryLevelName(@Param("categoryLevel") Integer categoryLevel);

    /*添加一个新的app基础信息*/
    int addApp(AppInfo appInfo);

    /*修改App的基础信息*/
    int updateApp(AppInfo appInfo);

    /*删除App的基础信息*/
    int deleteApp(Integer id);

    /*修改app的上架状态*/
    int changeStatus(@Param("status") Integer status, @Param("id") Integer id);

    /*条件查询,根据软件名称，App状态，所属平台，一级分类，二级分类，三级分类*/
    List<AppInfo> queryApplist(Map map);

    /*新增版本信息*/
    int addVersionInfo(AppVersion appVersion);
    /*通过Appid获取最新的版本号*/
    int getAppVersionIdByAppId(Integer appId);
    /*添加VerisonID*/
    int addAppInfoVersionId(@Param("versionId") Integer versionId,@Param("id") Integer id);

}
