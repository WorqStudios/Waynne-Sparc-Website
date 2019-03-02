package com.waynnesparc.structs;

/**
 * Created by Khalil Kabara khalilkabara@gmail.com on 1/22/2019.
 */
public class ProcessedOrderEntry extends DBEntryBase
{
    public String orderUid;
    public String itemUid;
    public String itemName;
    public String customerUsername;
    public int quantity;
    public double pricePerItem;
    public int dateTimeOfOrder;
    public int dateTimeOfProcessing;
    public String shippingAddress;
    public String shippingType;
    public double shippingCost;
    public int hasCoupon;
    public double couponValue;
    public String orderProcessedBy;
    
    public ProcessedOrderEntry(String orderUid, String itemUid, String itemName, String customerUsername,
                               int quantity, double pricePerItem, int dateTimeOfOrder, int dateTimeOfProcessing, String shippingAddress,
                               String shippingType, double shippingCost, int hasCoupon, double couponValue, String orderProcessedBy)
    {
        this.orderUid = orderUid;
        this.itemUid = itemUid;
        this.itemName = itemName;
        this.customerUsername = customerUsername;
        this.quantity = quantity;
        this.pricePerItem = pricePerItem;
        this.dateTimeOfOrder = dateTimeOfOrder;
        this.dateTimeOfProcessing = dateTimeOfProcessing;
        this.shippingAddress = shippingAddress;
        this.shippingType = shippingType;
        this.shippingCost = shippingCost;
        this.hasCoupon = hasCoupon;
        this.couponValue = couponValue;
        this.orderProcessedBy = orderProcessedBy;
    }
}
