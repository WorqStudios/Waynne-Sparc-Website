package com.waynnesparc.utils;

import com.waynnesparc.enums.EDatabases;
import com.waynnesparc.enums.EUserType;
import com.waynnesparc.structs.ItemEntry;
import com.waynnesparc.structs.UnprocessedOrderEntry;
import com.waynnesparc.structs.UserEntry;

import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Random;

/**
 * Created by Khalil Kabara khalilkabara@gmail.com on 1/22/2019.
 */
public class GeneralUtility
{
    private static final EDatabases MAIN_DB = EDatabases.MAIN_DB;
    private static HttpSession currentSession;
    private static Connection currentConnection;
    public static ArrayList<String> currentCart;
    private static ArrayList<ItemEntry> allCartItems;
    private static ArrayList<ItemEntry> allItems;
    
    public static double totalOrderPrice;
    
    public static ArrayList<UnprocessedOrderEntry> ordersToProcess;
    
    public static HttpSession getCurrentSession()
    {
        return currentSession;
    }
    
    public static void setCurrentSession(HttpSession currentSession)
    {
        GeneralUtility.currentSession = currentSession;
    }
    
    public static Connection getCurrentConnection() throws SQLException
    {
        if (GeneralUtility.currentConnection == null)
        {
            try
            {
                Class.forName(Constants.jdbcDriverName);
            } catch (ClassNotFoundException e)
            {
                e.printStackTrace();
            }
            
            try
            {
                currentConnection = DriverManager.getConnection(
                        Constants.mainDatabaseConnectionURL,
                        Constants.mainDatabaseUsername,
                        Constants.mainDatabasePassword);
            } catch (Exception e)
            {
            
            }
        }
        return currentConnection;
    }
    
    public static void setCurrentConnection(Connection connection)
    {
        currentConnection = connection;
    }
    
    public static ArrayList<UnprocessedOrderEntry> getOrdersToProcess()
    {
        if(ordersToProcess == null){
            ordersToProcess = new ArrayList<>();
        }
        return ordersToProcess;
    }
    
    public static ArrayList<ItemEntry> getAllItems() throws SQLException
    {
//        if (GeneralUtility.allItems == null || GeneralUtility.allItems.size() < 1)
//        {
        ItemsUtil.loadAllStoreItems();
//        }
        return allItems;
    }
    
    public static void setAllItems(ArrayList<ItemEntry> allItems)
    {
        GeneralUtility.allItems = allItems;
    }
    
    public static EUserType getCurrentUserType()
    {
        if (getCurrentUser() == null)
        {
            return EUserType.GUEST;
        }
        return getCurrentUser().userType;
    }
    
    public static void setCurrentUser(UserEntry currentUser)
    {
        currentSession.setAttribute(Constants.currentUser, currentUser);
    }
    
    public static UserEntry getCurrentUser()
    {
        if (currentSession == null || currentSession.getAttribute(Constants.currentUser) == null)
        {
            return createBlankUser();
        }
        
        return (UserEntry) currentSession.getAttribute(Constants.currentUser);
    }
    
    public static ArrayList<String> getCurrentCart()
    {
        return currentCart;
    }
    
    public static void endSession(EDatabases database) throws SQLException
    {
        CartUtil.saveCart();
        //currentSession.invalidate();
    }
    
    public static String concatenateStrings(ArrayList<String> strings)
    {
        String joined = "";
        
        for (int i = 0; i < strings.toArray().length; i++)
        {
            joined += strings.get(i);
            joined += Constants.stringConcatDelimiter;
        }
        //return String.join(Constants.stringConcatDelimiter, strings);
        return joined;
    }
    
    public static String generateRandomUID(int length)
    {
        StringBuilder UID = new StringBuilder();
        Random random = new Random();
        for (int i = 0; i < length; i++)
        {
            if (random.nextInt(10) >= 7)
            {
                UID.append(generateRandomAlphabet());
            } else
            {
                UID.append(new Random().nextInt(9));
            }
        }
        return UID.toString();
    }
    
    public static String generateRandomUID()
    {
        return generateRandomUID(Constants.defaultUIDLength);
    }
    
    private static char generateRandomAlphabet()
    {
        char[] alphabets = new char[]
                {
                        'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u',
                        'v', 'w', 'x', 'y', 'z'
                };
        
        return alphabets[new Random().nextInt(25)];
    }
    
    public static UserEntry createBlankUser()
    {
        return new UserEntry(
                EUserType.GUEST,
                "",
                Constants.guestTypeName,
                "",
                "",
                "",
                0,
                "",
                ""
        );
    }
    
    public static void loadAllItemsIfNull() throws SQLException
    {
        if (GeneralUtility.getAllItems() == null || GeneralUtility.getAllItems().size() < 1)
        {
            ItemsUtil.loadAllStoreItems();
        }
    }
    
    public static ArrayList<ItemEntry> getAllCartItems() throws SQLException
    {
        if(allCartItems == null || allCartItems.size() < 1)
        {
            allCartItems = new ArrayList<>();
            loadAllItemsIfNull();
    
            for (int i = 0; i < GeneralUtility.getAllItems().size(); i++)
            {
                for (int j = 0; j < currentCart.size(); j++)
                {
                    if (currentCart.get(j).equalsIgnoreCase(GeneralUtility.getAllItems().get(i).uid))
                    {
                        allItems.add(GeneralUtility.getAllItems().get(i));
                    }
                }
            }
        }
        return allCartItems;
    }
    
    public static void mailTo(String emailAddrerss, String message)
    {
        // TODO: 2/13/2019 Send email to user email.
    }
    
    public static void textTo(String emailAddrerss, String phoneNumber)
    {
        // TODO: 2/13/2019 Send text message to user email.
    }
}
