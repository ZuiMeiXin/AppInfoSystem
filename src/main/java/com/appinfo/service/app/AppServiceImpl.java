package com.appinfo.service.app;


import com.appinfo.dao.app.AppMapper;
import com.appinfo.pojo.AppInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

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
}
