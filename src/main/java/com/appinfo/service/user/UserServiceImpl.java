package com.appinfo.service.user;

import com.appinfo.dao.user.UserMapper;
import com.appinfo.pojo.BackendUser;
import com.appinfo.pojo.DevUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 用户管理
 * @author HiSoft
 */
@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    /**
     * 通过密码获取后台管理用户
     *
     * @return
     */
    @Override
    public BackendUser getBackendUser(String userCode, String userPassword) {
        BackendUser backendUser = userMapper.getBackendUser(userCode, userPassword);
        return backendUser;
    }

    /**
     * 获得App管理平台开发者
     *
     * @return
     */
    @Override
    public DevUser getDevUser(String devCode, String devPassword) {
        DevUser devUser = userMapper.getDevUser(devCode, devPassword);
        return devUser;
    }


}
