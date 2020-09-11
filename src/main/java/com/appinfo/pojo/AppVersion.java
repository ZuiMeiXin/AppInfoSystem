package com.appinfo.pojo;

import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

/**
 * APPVersion
 *
 * @author HiSoft
 */
@Data
public class AppVersion {
    private int id;
    private int appId;
    private String versionNo;
    private String versionInfo;
    private int publishStatus;
    private String downloadLink;
    private BigDecimal versionSize;
    private int createdBy;
    private Date creationDate;
    private int modifyBy;
    private Date modifyDate;
    private String apkLocPath;
    private String apkFileName;
}
