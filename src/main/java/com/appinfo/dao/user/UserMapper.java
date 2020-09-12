package com.appinfo.dao.user;

import com.appinfo.pojo.BackendUser;
import com.appinfo.pojo.DevUser;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    BackendUser getBackendUser(@Param("userCode") String userCode, @Param("userPassword") String userPassword);

    DevUser getDevUser(@Param("devCode") String devName, @Param("devPassword") String devPassword);
}
