package com.waynnesparc.utils;

import com.waynnesparc.structs.ProcessedOrderEntry;

import java.sql.SQLException;

/**
 * Created by Khalil Kabara on 1/24/2019.
 */
public class OrdersUtil
{
    public static void doProcessOrder(ProcessedOrderEntry order) throws SQLException
    {
        clearUserCart();
    }
    
    private static void clearUserCart() throws SQLException
    {
        CartUtil.clearUserCart(GeneralUtility.getCurrentUser().username);
    }
}
