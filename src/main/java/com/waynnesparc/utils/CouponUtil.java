package com.waynnesparc.utils;

import com.waynnesparc.enums.EDatabases;
import com.waynnesparc.enums.ETables;
import com.waynnesparc.structs.DbWhere;
import com.waynnesparc.structs.UsedCouponEntry;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Khalil Kabara on 1/29/2019.
 */
public class CouponUtil
{
    public static boolean isValidCoupon(EDatabases database, String couponCode) throws SQLException
    {
        boolean isValid;
        
        DbWhere[] whereClauses = new DbWhere[]
                {
                        new DbWhere(Constants.unusedCouponsTableCouponCodeColumn, couponCode, true)
                };
        
        PreparedStatement preparedSelectWhere = SQLUtility.createPreparedSelectWhere(
                database, ETables.UNUSED_COUPONS, Constants.unusedCouponsTableCouponValueColumn, whereClauses);
        
        isValid = SQLUtility.selectEntry(preparedSelectWhere);
        
        return isValid;
    }
    
    public static boolean canBeUsedForThisCategory(EDatabases database, String couponCode,
                                                   String category) throws SQLException
    {
        boolean isValid;
        
        DbWhere[] whereClauses = new DbWhere[]
                {
                        new DbWhere(Constants.unusedCouponsTableCouponCodeColumn, couponCode, true),
                        new DbWhere(Constants.unusedCouponsTableCouponCategoryColumn, category, true)
                };
        
        PreparedStatement preparedSelectWhere = SQLUtility.createPreparedSelectWhere(
                database, ETables.UNUSED_COUPONS, Constants.unusedCouponsTableCouponValueColumn, whereClauses);
        
        isValid = SQLUtility.selectEntry(preparedSelectWhere);
        
        return isValid;
    }
    
    public static double checkMinOrderValue(EDatabases database, String couponCode) throws SQLException
    {
        double minOrderValue;
        
        DbWhere[] whereClauses = new DbWhere[]
                {
                        new DbWhere(Constants.unusedCouponsTableCouponCodeColumn, couponCode, true)
                };
        
        PreparedStatement preparedDeleteWhere = SQLUtility.createPreparedDeleteWhere(
                database, ETables.UNUSED_COUPONS, Constants.unusedCouponsTableCouponValueColumn, whereClauses);
        
        ResultSet resultSet = SQLUtility.executeQueryReturnResults(preparedDeleteWhere);
        
        minOrderValue = resultSet.getDouble(Constants.unusedCouponsTableMinOrderValueColumn);
        
        return minOrderValue;
    }
    
    public static double applyCoupon(EDatabases database, String couponCode, String usernameOfWhoClaimed) throws SQLException
    {
        //check if valid coupon
        //check if correct category
        //check if min order value reached
        
        double couponValue;
        
        DbWhere[] whereClauses = new DbWhere[]
                {
                        new DbWhere(Constants.unusedCouponsTableCouponCodeColumn, couponCode, true)
                };
        
        PreparedStatement preparedSelectWhere = SQLUtility.createPreparedSelectWhere(
                database, ETables.UNUSED_COUPONS, Constants.unusedCouponsTableCouponValueColumn, whereClauses);
        
        ResultSet resultSet = SQLUtility.executeQueryReturnResults(preparedSelectWhere);
        
        couponValue = resultSet.getDouble(Constants.unusedCouponsTableCouponValueColumn);
        
        UsedCouponEntry usedCoupon = new UsedCouponEntry
                (
                        resultSet.getString(Constants.unusedCouponsTableCouponCodeColumn),
                        resultSet.getString(Constants.unusedCouponsTableCouponCategoryColumn),
                        couponValue,
                        resultSet.getDouble(Constants.unusedCouponsTableMinOrderValueColumn),
                        usernameOfWhoClaimed,
                        resultSet.getString(Constants.unusedCouponsTableCreatedByColumn),
                        GeneralUtility.getCurrentUser().username
                );
        
        PreparedStatement preparedSInsert = SQLUtility.createPreparedInsert(ETables.USED_COUPONS);
        int insertResult = SQLUtility.insertEntry(ETables.USED_COUPONS, usedCoupon, preparedSInsert);
        
        //Delete from unused coupons
        if (insertResult > 0)
        {
            PreparedStatement preparedDeleteWhere = SQLUtility.createPreparedDeleteWhere(
                    database, ETables.UNUSED_COUPONS, Constants.unusedCouponsTableCouponValueColumn, whereClauses);
            
            SQLUtility.deleteEntry(preparedDeleteWhere);
        }
        
        return couponValue;
    }
    
}
