package com.appinfo.pojo;

import lombok.Data;

import java.util.Date;

/**
 * DataDictionary
 *
 * @author HiSoft
 */
@Data
public class DataDictionary {
    private int id;
    private String typeCode;
    private String typeName;
    private int valueId;
    private String valueName;
    private int createdBy;
    private Date creationDate;
    private int modifyBy;
    private Date modifyDate;
}
