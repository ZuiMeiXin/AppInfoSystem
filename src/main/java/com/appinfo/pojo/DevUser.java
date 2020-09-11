package com.appinfo.pojo;

import lombok.Data;

import java.util.Date;

/**
 * 前台管理员用户
 */
@Data
public class DevUser {
    private int id;
    private String devCode;
    private String devName;
    private String devPassword;
    private String devEmail;
    private String devInfo;
    private int createdBy;
    private Date creationDate;
    private int modifyBy;
    private Date modifyDate;
}
