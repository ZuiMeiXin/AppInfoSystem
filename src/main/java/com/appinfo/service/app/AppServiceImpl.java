package com.appinfo.service.app;


import com.appinfo.dao.app.AppMapper;
import com.appinfo.pojo.AppInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class AppServiceImpl implements AppService {

    @Autowired
    private AppMapper appMapper;

    @Override
    public List<AppInfo> getAppList() {
        List<AppInfo> appList = appMapper.getAppList();
        return appList;
    }
}
