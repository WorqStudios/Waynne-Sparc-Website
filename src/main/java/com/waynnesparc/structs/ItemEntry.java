package com.waynnesparc.structs;

/**
 * Created by Khalil Kabara on 1/22/2019.
 */
public class ItemEntry extends DBEntryBase
{
    public String uid;
    public String name;
    public String description;
    public int quantity;
    public double price;
    public String category;
    public String subCategory;
    public int isOnSale;
    public double beforeSalePrice;
    public String saleBeginDate;
    public String saleEndDate;
    public String pathToMainImage;
    public String pathsToOtherImages;
    public String dateTimeAdded;
    
    public ItemEntry(String uid, String name, String description, int quantity, double price,
                     String category, String subCategory, int isOnSale, double beforeSalePrice, String saleBeginDate,
                     String saleEndDate, String pathToMainImage, String pathsToOtherImages,String dateTimeAdded)
    {
        this.uid = uid;
        this.name = name;
        this.description = description;
        this.quantity = quantity;
        this.price = price;
        this.category = category;
        this.subCategory = subCategory;
        this.isOnSale = isOnSale;
        this.beforeSalePrice = beforeSalePrice;
        this.saleBeginDate = saleBeginDate;
        this.saleEndDate = saleEndDate;
        this.pathToMainImage = pathToMainImage;
        this.pathsToOtherImages = pathsToOtherImages;
        this.dateTimeAdded = dateTimeAdded;
    }
}
