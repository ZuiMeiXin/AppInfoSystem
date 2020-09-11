package com.appinfo.pojo;

import lombok.Data;

import java.util.Date;

/**
 * App category
 * @author HiSoft
 */
@Data
public class AppCategory {
    private int id;
    private String categoryCode;
    private String categoryName;
    private int parentId;
    private int createdBy;
    private Date creationTime;
    private int modify;
    private Date modifyDate;
}
