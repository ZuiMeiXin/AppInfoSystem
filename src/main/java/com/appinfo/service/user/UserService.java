package com.appinfo.service.user;

import com.appinfo.pojo.BackendUser;
import com.appinfo.pojo.DevUser;

/**
 * 用户管理
 */
public interface UserService {
    public BackendUser getBackendUser(String userCode, String userPassword);

    public DevUser getDevUser(String devCode, String devPassword);

    /*后台管理 添加用户*/
    boolean addBackendUser(BackendUser backendUser);

    /*后台管理 删除用户*/
    boolean deleteBackendUser(Integer id);

    /*后台管理 修改用户信息*/
    boolean updateBackendUser();
}
