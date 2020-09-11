package com.appinfo.pojo;

import lombok.Data;

import java.util.Date;

/**
 * AdPromotion
 *
 * @author HiSoft
 */
@Data
public class AdPromotion {
    private int id;
    private int appId;
    private String adPicPath;
    private int adPV;
    private int carouselPosition;
    private Date startTime;
    private int createdBy;
    private Date creationDate;
    private int modifyBy;
    private Date modifyDate;

}
