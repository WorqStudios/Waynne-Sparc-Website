package com.waynnesparc.utils;

import com.waynnesparc.enums.EDatabases;
import com.waynnesparc.enums.ETables;
import com.waynnesparc.enums.EUserType;
import com.waynnesparc.structs.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Khalil Kabara khalilkabara@gmail.com on 1/22/2019.
 */
public class SQLUtility
{
    public static PreparedStatement createPreparedUseDb(EDatabases database) throws SQLException
    {
        Connection connection = GeneralUtility.getCurrentConnection();
        
        PreparedStatement result = null;
        
        switch (database)
        {
            case MAIN_DB:
                result = connection.prepareStatement("USE " + Constants.mainDatabaseName);
                break;
        }
        return result;
    }
    
    public static PreparedStatement createPreparedInsert(ETables table) throws SQLException
    {
        PreparedStatement result = null;
        
        switch (table)
        {
            case USERS:
                //result = connection.prepareStatement("INSERT INTO " + Constants.usersTableName + " VALUES (?,?,?,?,?,?,?,?)");
                result = doCreatePreparedInsert(
                        Constants.usersTableName, Constants.usersTableColumnsCount);
                break;
            case ITEMS:
                result = doCreatePreparedInsert(
                        Constants.itemsTableName, Constants.itemsTableColumnsCount);
                break;
            case UNPROCESSED_ORDERS:
                result = doCreatePreparedInsert(
                        Constants.unprocessedOrdersTableName, Constants.unprocessedOrdersTableColumnsCount);
                break;
            case PROCESSED_ORDERS:
                result = doCreatePreparedInsert(
                        Constants.processedOrdersTableName, Constants.processedOrdersTableColumnsCount);
                break;
            case UNUSED_COUPONS:
                result = doCreatePreparedInsert(
                        Constants.unusedCouponsTableName, Constants.unusedCouponsTableColumnsCount);
                break;
            case USED_COUPONS:
                result = doCreatePreparedInsert(
                        Constants.usedCouponsTableName, Constants.usedCouponsTableColumnsCount);
                break;
            case CARTS:
                result = doCreatePreparedInsert(
                        Constants.cartsTableName, Constants.cartsTableColumnsCount);
                break;
        }
        return result;
    }
    
    private static PreparedStatement doCreatePreparedInsert(String tableName, int columnCount) throws SQLException
    {
        Connection connection = GeneralUtility.getCurrentConnection();
        String query = "";
        query += "INSERT INTO " + tableName + " VALUES (";
        
        for (int i = 0; i < columnCount; i += 1)
        {
            query += "?";
            if (i < columnCount - 1)
            {
                query += ",";
            }
        }
        query += ");";
        
        return connection.prepareStatement(query);
    }
    
    public static PreparedStatement createPreparedSelectWhere(EDatabases database, ETables table,
                                                              String columnToSelect, DbWhere[] whereClauses) throws SQLException
    {
        Connection connection = GeneralUtility.getCurrentConnection();
        String tableName = "";
        
        switch (database)
        {
            case MAIN_DB:
                tableName = getTableName(table);
                break;
        }
        
        String sqlStatement = "SELECT " + columnToSelect + " FROM " + tableName;
        
        if (whereClauses != null && whereClauses.length > 0)
        {
            sqlStatement += createWhereClauses(whereClauses);
        }
        return connection.prepareStatement(sqlStatement);
    }
    
    public static PreparedStatement createPreparedSelectAll(EDatabases database, ETables table, String columnToSelect
    ) throws SQLException
    {
        return createPreparedSelectWhere(database, table, columnToSelect, null);
    }
    
    public static PreparedStatement createPreparedUpdateWhere(EDatabases database, ETables table,
                                                              DbWhere[] keyValues, DbWhere[] whereClauses
    ) throws SQLException
    {
        Connection connection = GeneralUtility.getCurrentConnection();
        
        if (keyValues == null)
        {
            return null;
        }
        
        String tableName = "";
        
        switch (database)
        {
            case MAIN_DB:
                tableName = getTableName(table);
                break;
        }
        
        String sqlStatement = "UPDATE " + tableName + " SET";
        
        for (int i = 0; i < keyValues.length; i++)
        {
            sqlStatement += " ";
            sqlStatement += keyValues[i].key.toString();
            sqlStatement += " = ";
            if (keyValues[i].whereValueIsString)
            {
                sqlStatement += "'" + keyValues[i].value.toString() + "'";
            } else
            {
                sqlStatement += keyValues[i].value.toString();
            }
            
            if (i < keyValues.length - 1)
            {
                sqlStatement += ",";
            }
        }
        
        if (whereClauses != null && whereClauses.length > 0)
        {
            sqlStatement += createWhereClauses(whereClauses);
        }
        
        return connection.prepareStatement(sqlStatement);
    }
    
    public static PreparedStatement createPreparedUpdateAll(EDatabases database, ETables table,
                                                            DbWhere[] keyValues) throws SQLException
    {
        return createPreparedUpdateWhere(database, table, keyValues, null);
    }
    
    public static PreparedStatement createPreparedDeleteWhere(EDatabases database, ETables table,
                                                              String whereColumn, Object whereValue
    ) throws SQLException
    {
        Connection connection = GeneralUtility.getCurrentConnection();
        
        String tableName = "";
        
        switch (database)
        {
            case MAIN_DB:
                tableName = getTableName(table);
                break;
        }
        
        return connection.prepareStatement("DELETE FROM " + tableName + " WHERE " + whereColumn + " = " + whereValue);
    }
    
    private static PreparedStatement createPreparedDropTable(EDatabases database, ETables table
    ) throws SQLException
    {
        Connection connection = GeneralUtility.getCurrentConnection();
        
        String tableName = "";
        
        switch (database)
        {
            case MAIN_DB:
                tableName = getTableName(table);
                break;
        }
        
        return connection.prepareStatement("DROP TABLE IF EXISTS " + tableName);
    }
    
    public static int insertEntry(ETables table, DBEntryBase entry, PreparedStatement statement) throws SQLException
    {
        int result = 0;
        
        switch (table)
        {
            case USERS:
                UserEntry userEntry = (UserEntry) entry;
                
                String customerType = userEntry.userType.equals(EUserType.CUSTOMER) ?
                        Constants.customerTypeName :
                        Constants.adminTypeName;
                
                statement.setString(1, customerType);
                statement.setString(2, userEntry.email);
                statement.setString(3, userEntry.username);
                statement.setString(4, userEntry.password);
                statement.setString(5, userEntry.firstName);
                statement.setString(6, userEntry.lastName);
                statement.setLong(7, userEntry.phone);
                statement.setString(8, userEntry.dateOfBirth);
                statement.setString(9, userEntry.address);
                
                result = statement.executeUpdate();
                
                break;
            case ITEMS:
                ItemEntry itemEntry = (ItemEntry) entry;
                
                statement.setString(1, itemEntry.uid);
                statement.setString(2, itemEntry.name);
                statement.setString(3, itemEntry.description);
                statement.setInt(4, itemEntry.quantity);
                statement.setDouble(5, itemEntry.price);
                statement.setString(6, itemEntry.category);
                statement.setString(7, itemEntry.subCategory);
                statement.setInt(8, itemEntry.isOnSale);
                statement.setDouble(9, itemEntry.beforeSalePrice);
                statement.setString(10, itemEntry.saleBeginDate);
                statement.setString(11, itemEntry.saleEndDate);
                statement.setString(12, itemEntry.pathToMainImage);
                statement.setString(13, itemEntry.pathsToOtherImages);
                statement.setString(14, itemEntry.dateTimeAdded);
                
                result = statement.executeUpdate();
                
                break;
            case UNPROCESSED_ORDERS:
                UnprocessedOrderEntry unprocessedOrderEntry = (UnprocessedOrderEntry) entry;
                
                statement.setString(1, unprocessedOrderEntry.orderUid);
                statement.setString(2, unprocessedOrderEntry.itemUid);
                statement.setString(3, unprocessedOrderEntry.itemName);
                statement.setString(4, unprocessedOrderEntry.customerUsername);
                statement.setInt(5, unprocessedOrderEntry.quantity);
                statement.setDouble(6, unprocessedOrderEntry.pricePerItem);
                statement.setInt(7, unprocessedOrderEntry.dateTimeOfOrder);
                statement.setString(8, unprocessedOrderEntry.shippingAddress);
                statement.setString(9, unprocessedOrderEntry.shippingType);
                statement.setDouble(10, unprocessedOrderEntry.shippingCost);
                statement.setInt(11, unprocessedOrderEntry.hasCoupon);
                statement.setDouble(12, unprocessedOrderEntry.couponValue);
                
                result = statement.executeUpdate();
                
                break;
            case PROCESSED_ORDERS:
                ProcessedOrderEntry processedOrderEntry = (ProcessedOrderEntry) entry;
                
                statement.setString(1, processedOrderEntry.orderUid);
                statement.setString(2, processedOrderEntry.itemUid);
                statement.setString(3, processedOrderEntry.itemName);
                statement.setString(4, processedOrderEntry.customerUsername);
                statement.setInt(5, processedOrderEntry.quantity);
                statement.setDouble(6, processedOrderEntry.pricePerItem);
                statement.setInt(7, processedOrderEntry.dateTimeOfOrder);
                statement.setInt(8, processedOrderEntry.dateTimeOfProcessing);
                statement.setString(9, processedOrderEntry.shippingAddress);
                statement.setString(10, processedOrderEntry.shippingType);
                statement.setDouble(11, processedOrderEntry.shippingCost);
                statement.setInt(12, processedOrderEntry.hasCoupon);
                statement.setDouble(13, processedOrderEntry.couponValue);
                statement.setString(14, processedOrderEntry.orderProcessedBy);
                
                result = statement.executeUpdate();
                
                break;
            case UNUSED_COUPONS:
                UnusedCouponEntry unusedCouponEntry = (UnusedCouponEntry) entry;
                
                statement.setString(1, unusedCouponEntry.couponCode);
                statement.setString(2, unusedCouponEntry.couponCategory);
                statement.setDouble(3, unusedCouponEntry.couponValue);
                statement.setDouble(4, unusedCouponEntry.minOrderValue);
                
                result = statement.executeUpdate();
                
                break;
            case USED_COUPONS:
                UsedCouponEntry usedCouponEntry = (UsedCouponEntry) entry;
                
                statement.setString(1, usedCouponEntry.couponCode);
                statement.setString(2, usedCouponEntry.couponCategory);
                statement.setDouble(3, usedCouponEntry.couponValue);
                statement.setDouble(4, usedCouponEntry.minOrderValue);
                statement.setString(5, usedCouponEntry.usernameOfWhoClaimed);
                
                result = statement.executeUpdate();
                
                break;
            
            case CARTS:
                CartEntry cartEntry = (CartEntry) entry;
                
                statement.setString(1, cartEntry.username);
                statement.setString(2, cartEntry.itemId);
                
                result = statement.executeUpdate();
                
                break;
        }
        
        return result;
    }
    
    public static boolean selectEntry(PreparedStatement preparedStatement) throws SQLException
    {
        boolean result = preparedStatement.execute();
        return result;
    }
    
    public static ResultSet executeQueryReturnResults(PreparedStatement statement) throws SQLException
    {
        ResultSet result = statement.executeQuery();
        
        return result;
    }
    
    public static boolean updateEntry(PreparedStatement preparedStatement) throws SQLException
    {
        boolean result = preparedStatement.execute();
        return result;
    }
    
    public static boolean deleteEntry(PreparedStatement preparedStatement) throws SQLException
    {
        boolean result = preparedStatement.execute();
        return result;
    }
    
    private static String getTableName(ETables table)
    {
        String tableName = "";
        switch (table)
        {
            case USERS:
                tableName = Constants.usersTableName;
                break;
            case ITEMS:
                tableName = Constants.itemsTableName;
                break;
            case PROCESSED_ORDERS:
                tableName = Constants.processedOrdersTableName;
                break;
            case UNPROCESSED_ORDERS:
                tableName = Constants.unprocessedOrdersTableName;
                break;
            case UNUSED_COUPONS:
                tableName = Constants.unusedCouponsTableName;
                break;
            case USED_COUPONS:
                tableName = Constants.usedCouponsTableName;
                break;
            case CARTS:
                tableName = Constants.cartsTableName;
                break;
        }
        return tableName;
    }
    
    private static String createWhereClauses(DbWhere[] whereClauses)
    {
        String wherePart = " WHERE ";
        
        for (int i = 0; i < whereClauses.length; i++)
        {
            wherePart += whereClauses[i].key;
            wherePart += " = ";
            if (whereClauses[i].whereValueIsString)
            {
                wherePart += "'" + whereClauses[i].value + "'";
            } else
            {
                wherePart += whereClauses[i].value;
            }
            if (i < whereClauses.length - 1)
            {
                wherePart += " AND ";
            }
        }
        return wherePart;
    }
}
