package com.waynnesparc.utils;

import com.waynnesparc.enums.EDatabases;
import com.waynnesparc.enums.ETables;
import com.waynnesparc.structs.ItemEntry;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by Khalil Kabara khalilkabara@gmail.com on 2/12/2019.
 */
public class ItemsUtil
{
    public static void addItem()
    {
    
    }
    
    public static void loadAllStoreItems() throws SQLException
    {
        PreparedStatement statement = SQLUtility.createPreparedSelectAll(
                EDatabases.MAIN_DB, ETables.ITEMS, Constants.sqlAll);
        
        ResultSet resultSet = SQLUtility.executeQueryReturnResults(statement);
        
        ArrayList<ItemEntry> allItems = new ArrayList<>();
        
        while (resultSet.next())
        {
            allItems.add(
                    new ItemEntry(
                            resultSet.getString(Constants.itemsTableUidColumn),
                            resultSet.getString(Constants.itemsTableNameColumn),
                            resultSet.getString(Constants.itemsTableDescriptionColumn),
                            resultSet.getInt(Constants.itemsTableAvailableQuantityColumn),
                            resultSet.getDouble(Constants.itemsTableItemPriceColumn),
                            resultSet.getString(Constants.itemsTableItemCategoryColumn),
                            resultSet.getString(Constants.itemsTableItemSubCategoryColumn),
                            resultSet.getInt(Constants.itemsTableIsOnSaleColumn),
                            resultSet.getDouble(Constants.itemsTableBeforeSalePriceColumn),
                            resultSet.getString(Constants.itemsTableSaleBeginDateColumn),
                            resultSet.getString(Constants.itemsTableSaleEndDateColumn),
                            resultSet.getString(Constants.itemsTablePathToMainImageColumn),
                            resultSet.getString(Constants.itemsPathsToOtherImagesColumn),
                            resultSet.getString(Constants.itemsDateTimeAddedColumn)
                    )
            );
        }
        
        GeneralUtility.setAllItems(allItems);
    }
    
    public static ItemEntry getItemFromUID(String uid) throws SQLException
    {
        ItemEntry itemToReturn = null;
    
        for (ItemEntry item : GeneralUtility.getAllItems())
        {
            if(item.uid.equalsIgnoreCase(uid)){
                itemToReturn = item;
            }
        }
        
        return itemToReturn;
    }
    
    public static void getItemsOfCategory(String category)
    {
    
    }
    
    public static void getItemsOfSubCategory(String subCategory)
    {
    
    }
    
    
}
