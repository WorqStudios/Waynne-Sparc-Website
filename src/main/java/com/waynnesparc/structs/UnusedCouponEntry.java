package com.waynnesparc.structs;

/**
 * Created by Khalil Kabara on 1/22/2019.
 */
public class UnusedCouponEntry extends DBEntryBase
{
    public String couponCode;
    public String couponCategory;
    public double couponValue;
    public double minOrderValue;
    public String createdBy;
    
    public UnusedCouponEntry(String couponCode, String couponCategory, double couponValue, double minOrderValue, String createdBy)
    {
        this.couponCode = couponCode;
        this.couponCategory = couponCategory;
        this.couponValue = couponValue;
        this.minOrderValue = minOrderValue;
        this.createdBy = createdBy;
    }
}
