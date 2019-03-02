package com.waynnesparc.structs;

/**
 * Created by Khalil Kabara on 1/22/2019.
 */
public class UsedCouponEntry extends DBEntryBase
{
    public String couponCode;
    public String couponCategory;
    public double couponValue;
    public double minOrderValue;
    public String usernameOfWhoClaimed;
    public String createdBy;
    public String conformedBy;
    
    public UsedCouponEntry(
            String couponCode, String couponCategory, double couponValue, double minOrderValue,
            String usernameOfWhoClaimed, String createdBy, String conformedBy)
    {
        this.couponCode = couponCode;
        this.couponCategory = couponCategory;
        this.couponValue = couponValue;
        this.minOrderValue = minOrderValue;
        this.usernameOfWhoClaimed = usernameOfWhoClaimed;
        this.createdBy = createdBy;
        this.conformedBy = conformedBy;
    }
}
