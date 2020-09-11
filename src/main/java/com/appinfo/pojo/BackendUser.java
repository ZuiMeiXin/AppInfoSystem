package com.appinfo.pojo;

import lombok.Data;

import java.util.Date;

/**
 * 后台登录用户
 */
@Data
public class BackendUser {
    private int id;
    private String userCode;
    private String userName;
    private int userType;
    private int createdBy;
    private Date creationDate;
    private int modifyBy;
    private Date modifyDate;
    private String userPassword;


}
