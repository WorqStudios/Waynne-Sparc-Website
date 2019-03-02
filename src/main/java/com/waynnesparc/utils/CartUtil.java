package com.waynnesparc.utils;

import com.waynnesparc.enums.EDatabases;
import com.waynnesparc.enums.ETables;
import com.waynnesparc.enums.TaskStatus;
import com.waynnesparc.structs.CartEntry;
import com.waynnesparc.structs.DbWhere;
import com.waynnesparc.structs.ItemEntry;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by Khalil Kabara khalilkabara@gmail.com on 2/6/2019.
 */

public class CartUtil
{
    public static void saveCart() throws SQLException
    {
        if (GeneralUtility.currentCart == null || GeneralUtility.currentCart.size() < 1)
        {
            return;
        }
        
        String allCartItems = GeneralUtility.concatenateStrings(GeneralUtility.currentCart);
        
        DbWhere[] setConditions = new DbWhere[]
                {
                        new DbWhere
                                (
                                        Constants.cartsTableItemsInCartColumn,
                                        allCartItems,
                                        true)
                };
        
        DbWhere[] whereClauses = new DbWhere[]
                {
                        new DbWhere
                                (
                                        Constants.usersTableUsernameColumn,
                                        GeneralUtility.getCurrentUser().username,
                                        true
                                )
                };
        
        //if exists on table
        PreparedStatement preparedSelect = SQLUtility.createPreparedSelectWhere
                (
                        EDatabases.MAIN_DB,
                        ETables.CARTS,
                        Constants.cartsTableUsernameColumn,
                        whereClauses
                );
        if (SQLUtility.selectEntry(preparedSelect))
        {
            PreparedStatement preparedUpdate = SQLUtility.createPreparedUpdateWhere
                    (
                            EDatabases.MAIN_DB,
                            ETables.CARTS,
                            setConditions,
                            whereClauses
                    );
            
            SQLUtility.updateEntry(preparedUpdate);
            System.out.println("Successfully saved user cart");
        } else
        {
            CartEntry cartEntry = new CartEntry(
                    GeneralUtility.getCurrentUser().username,
                    allCartItems
            );
            
            PreparedStatement preparedInsert = SQLUtility.createPreparedInsert(ETables.CARTS);
            
            if (SQLUtility.insertEntry(ETables.CARTS, cartEntry, preparedInsert) > 0)
            {
                System.out.println("Created and saved user cart successfully");
            }
        }
    }
    
    public static ArrayList<String> getAllCartItemsUIDs()
    {
        if (GeneralUtility.currentCart == null || GeneralUtility.currentCart.size() < 1)
        {
            GeneralUtility.currentCart = new ArrayList<>();
        }
        return GeneralUtility.currentCart;
    }
    
    private static ArrayList<ItemEntry> getAllCartItems(ArrayList<String> itemUIDs) throws SQLException
    {
        if (getAllCartItemsUIDs() == null || getAllCartItemsUIDs().size() < 1)
        {
            return new ArrayList<>();
        }
        
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        ArrayList<ItemEntry> returnResult = new ArrayList<>();
        
        for (int i = 0; i < itemUIDs.size(); i++)
        {
            DbWhere[] wheres = new DbWhere[]
                    {
                            new DbWhere(Constants.itemsTableUidColumn, itemUIDs.get(i), true)
                    };
            
            preparedStatement = SQLUtility.createPreparedSelectWhere(
                    EDatabases.MAIN_DB, ETables.ITEMS, Constants.sqlAll, wheres);
            
            resultSet = SQLUtility.executeQueryReturnResults(preparedStatement);
            
            if (resultSet == null || !resultSet.next()) return new ArrayList<>();
            
            returnResult.add(
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
        
        return returnResult;
    }
    
    public static ArrayList<ItemEntry> getAllCartItems() throws SQLException
    {
        return getAllCartItems(getAllCartItemsUIDs());
    }
    
    
    public static void addToCurrentCart(String itemId) throws SQLException
    {
        if (GeneralUtility.currentCart == null)
        {
            GeneralUtility.currentCart = new ArrayList<>();
        }
        GeneralUtility.currentCart.add(itemId);
        saveCart();
        Toast.makeText("Successfully Added " + itemId + " To Cart", TaskStatus.SUCCESS);
    }
    
    public static void removeFromCurrentCart(String itemId) throws SQLException
    {
        if (GeneralUtility.currentCart == null || GeneralUtility.currentCart.toArray().length < 1)
        {
            return;
        }
        
        for (int i = 0; i < GeneralUtility.currentCart.size(); i++)
        {
            if (itemId.equals(GeneralUtility.currentCart.get(i)))
            {
                GeneralUtility.currentCart.remove(i);
                Toast.makeText("Successfully Removed" + itemId + "From Cart", TaskStatus.SUCCESS);
            }
        }
        saveCart();
    }
    
    public static void clearUserCart(String username) throws SQLException
    {
        GeneralUtility.currentCart = new ArrayList<>();
        
        PreparedStatement delete = SQLUtility.createPreparedDeleteWhere(
                EDatabases.MAIN_DB, ETables.CARTS,
                Constants.cartsTableUsernameColumn,
                "'" + username + "'"
        );
        
        boolean result = SQLUtility.deleteEntry(delete);
        
        if (result)
        {
            Toast.makeText("Cart Cleared", TaskStatus.SUCCESS);
        } else
        {
            //Toast.makeText("Cart Not Cleared", TaskStatus.FAILURE);
        }
    }
}
