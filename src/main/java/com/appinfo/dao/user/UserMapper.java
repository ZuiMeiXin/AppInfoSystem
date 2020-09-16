package com.appinfo.dao.user;

import com.appinfo.pojo.BackendUser;
import com.appinfo.pojo.DevUser;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    BackendUser getBackendUser(@Param("userCode") String userCode, @Param("userPassword") String userPassword);

    DevUser getDevUser(@Param("devCode") String devName, @Param("devPassword") String devPassword);

    /*后台管理 添加用户*/
    int addBackendUser(BackendUser backendUser);

    /*后台管理 删除用户*/
    int deleteBackendUser(Integer id);

    /*后台管理 修改用户信息*/
    int updateBackendUser(BackendUser backendUser,Integer id);

}
