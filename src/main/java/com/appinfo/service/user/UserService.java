package com.appinfo.service.user;

import com.appinfo.pojo.BackendUser;
import com.appinfo.pojo.DevUser;

/**
 * 用户管理
 */
public interface UserService {
    public BackendUser getBackendUser(String userCode, String userPassword);

    public DevUser getDevUser(String devCode, String devPassword);
}
