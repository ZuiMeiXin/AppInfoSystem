package com.appinfo.pojo;

import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

/**
 * App的信息
 *
 * @author HiSoft
 */
@Data
public class AppInfo {
    private int id;
    private String softwareName;
    private String APKName;
    private String supportROM;
    private String interfaceLanguage;
    private BigDecimal softwareSize;
    private Date updateDate;
    private int devId;
    private String appInfo;
    private int status;
    private Date onSaleDate;
    private Date offSaleDate;
    private int flatformId;
    private int categoryLevel3;
    private int downloads;
    private int createdBy;
    private Date creationDate;
    private int modifyBy;
    private Date modifyDate;
    private int categoryLevel1;
    private int categoryLevel2;
    private String logoPicPath;
    private String logoLocPath;
    private int versionId;

    private String versionNo;
    private String statusName;
    private String flatformName;
    private String categoryName1;
    private String categoryName2;
    private String categoryName3;

}
