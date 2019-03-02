package com.waynnesparc.structs;

/**
 * Created by Khalil Kabara khalilkabara@gmail.com on 1/29/2019.
 */
public class CartEntry extends DBEntryBase
{
    public String username;
    public String itemId;
    
    public CartEntry(String username, String itemId)
    {
        this.username = username;
        this.itemId = itemId;
    }
}
