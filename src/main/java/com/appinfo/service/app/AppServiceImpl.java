package com.appinfo.service.app;


import com.appinfo.dao.app.AppMapper;
import com.appinfo.pojo.AppCategory;
import com.appinfo.pojo.AppInfo;
import com.appinfo.pojo.AppVersion;
import com.appinfo.pojo.DataDictionary;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
@Transactional
public class AppServiceImpl implements AppService {

    @Autowired
    private AppMapper appMapper;

    @Override
    public List<AppInfo> getAppList() {
        List<AppInfo> appList = appMapper.getAppList();
        return appList;
    }

    @Override
    public AppInfo getAppInfo(Integer id) {
        AppInfo appInfo = appMapper.getAppInfo(id);
        return appInfo;
    }

    @Override
    public List<AppCategory> getCategoryLevel1() {
        List<AppCategory> categoryLevel1 = appMapper.getCategoryLevel1();
        return categoryLevel1;
    }

    @Override
    public List<AppCategory> getCategoryLevelByParentId(Integer id) {
        List<AppCategory> categoryLevelByParentId = appMapper.getCategoryLevelByParentId(id);
        return categoryLevelByParentId;
    }

    @Override
    public List<DataDictionary> getFlatForm() {
        List<DataDictionary> flatForm = appMapper.getFlatForm();
        return flatForm;
    }

    @Override
    public List<DataDictionary> getStatus() {
        List<DataDictionary> status = appMapper.getStatus();
        return status;
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    public boolean addAppInfo(AppInfo appInfo) {
        if (appMapper.addApp(appInfo) > 0) {
            return true;
        }
        return false;
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    public boolean deleteApp(Integer id) {
        if (appMapper.deleteApp(id) > 0) {
            return true;
        }
        return false;
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    public boolean updateApp(AppInfo appInfo) {
        if (appMapper.updateApp(appInfo) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public List<AppInfo> queryApplist(Map map) {
        List<AppInfo> appInfos = appMapper.queryApplist(map);
        return appInfos;
    }

    @Override
    public String getFlatFormName(Integer flatformId) {
        String flatFormAppList = appMapper.getFlatFormAppList(flatformId);
        return flatFormAppList;
    }

    @Override
    public Boolean changeStatus(Integer status, Integer id) {
        int i = appMapper.changeStatus(status, id);
        if (i > 0) {
            return true;
        }
        return false;
    }


    @Override
    public Boolean addVersionInfo(AppVersion appVersion) {
        if (appMapper.addVersionInfo(appVersion) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public int getAppVersionIdByAppId(Integer appId) {
        int versionId = appMapper.getAppVersionIdByAppId(appId);
        return versionId;
    }


    @Override
    public boolean addAppInfoVersionId(Integer versionId, Integer id) {
        if (appMapper.addAppInfoVersionId(versionId, id) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean changeStatusAudit(Integer status, Integer id) {
        if (appMapper.changeStatusAudit(status, id) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public List<AppVersion> getAppVersionList(Integer appId) {
        List<AppVersion> appVersionList = appMapper.getAppVersionList(appId);
        return appVersionList;
    }


    @Override
    public AppVersion getAppVersionByAppId(Integer appId) {
        AppVersion appVersion = appMapper.getAppVersionByAppId(appId);

        return appVersion;
    }

    @Override
    public boolean updateAppVersion(AppVersion appVersion) {
        if (appMapper.updateAppVersion(appVersion)>0){
            return true;
        }
        return false;
    }
}
