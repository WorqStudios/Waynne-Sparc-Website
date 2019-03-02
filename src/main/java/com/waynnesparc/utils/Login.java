package com.waynnesparc.utils;

import com.waynnesparc.enums.EDatabases;
import com.waynnesparc.enums.ETables;
import com.waynnesparc.enums.EUserType;
import com.waynnesparc.structs.DbWhere;
import com.waynnesparc.structs.LoginResult;
import com.waynnesparc.structs.UserEntry;
import com.waynnesparc.structs.WaynneSparcKeyValuePair;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by Khalil Kabara khalilkabara@gmail.com on 1/25/2019.
 */

public class Login
{
    public static LoginResult attemptLogin(Connection connection, String username, String password) throws SQLException
    {
        boolean credentialsMatch;
        
        DbWhere whereClauses[] = new DbWhere[]{
                new DbWhere(Constants.usersTableUsernameColumn, username, true),
                new DbWhere(Constants.usersTablePasswordColumn, password, true)
        };
        
        PreparedStatement preparedSelectWhere = SQLUtility.createPreparedSelectWhere(
                EDatabases.MAIN_DB,
                ETables.USERS,
                Constants.sqlAll,
                whereClauses
        );
        
        ResultSet resultSet = SQLUtility.executeQueryReturnResults(preparedSelectWhere);
        
        credentialsMatch = resultSet.next();
        
        UserEntry userEntry = null;
        
        EUserType typeOfUser = EUserType.GUEST;
        
        if (credentialsMatch)
        {
            if (resultSet.getString(Constants.usersTableUserTypeColumn).equalsIgnoreCase(Constants.superAdminTypeName))
            {
                typeOfUser = EUserType.SUPER_ADMIN;
            } else if (resultSet.getString(Constants.usersTableUserTypeColumn).equalsIgnoreCase(Constants.adminTypeName))
            {
                typeOfUser = EUserType.ADMIN;
            } else if (resultSet.getString(Constants.usersTableUserTypeColumn).equalsIgnoreCase(Constants.customerTypeName))
            {
                typeOfUser = EUserType.CUSTOMER;
            }
            
            userEntry = new UserEntry(
                    typeOfUser,
                    resultSet.getString(Constants.usersTableEmailColumn),
                    resultSet.getString(Constants.usersTableUsernameColumn),
                    resultSet.getString(Constants.usersTablePasswordColumn),
                    resultSet.getString(Constants.usersTableFirstNameColumn),
                    resultSet.getString(Constants.usersTableLastNameColumn),
                    resultSet.getLong(Constants.usersTablePhoneColumn),
                    resultSet.getString(Constants.usersTableDOBColumn),
                    resultSet.getString(Constants.usersTableAddressColumnColumn)
            );
        } else
        {
            userEntry = GeneralUtility.createBlankUser();
        }
        
        GeneralUtility.setCurrentUser(userEntry);
        populateCurrentCart(username);
        
        return new LoginResult(credentialsMatch, userEntry);
    }
    
    private static void populateCurrentCart(String username) throws SQLException
    {
        GeneralUtility.currentCart = new ArrayList<>();
        
        DbWhere[] whereClause = new DbWhere[]
                {
                        new DbWhere(Constants.cartsTableUsernameColumn, username, true)
                };
        
        PreparedStatement preparedStatement = SQLUtility.createPreparedSelectWhere(
                EDatabases.MAIN_DB, ETables.CARTS, Constants.cartsTableItemsInCartColumn, whereClause
        );
        
        ResultSet resultSet = SQLUtility.executeQueryReturnResults(preparedStatement);
        
        while (resultSet.next())
        {
            System.out.println("Res Set: "+resultSet.getString(Constants.cartsTableItemsInCartColumn));
            String allItemsInCart = resultSet.getString(Constants.cartsTableItemsInCartColumn);
//            if (allItemsInCart.equals("") || allItemsInCart == null)
//            {
//                return;
//            }
            String[] individualItemsInCart = allItemsInCart.split(Constants.stringConcatDelimiter);
            
            for (String s : individualItemsInCart)
            {
                System.out.println(s);
                CartUtil.addToCurrentCart(s);
            }
        }
    }
    
    public static LoginResult attemptLogin(Connection connection, WaynneSparcKeyValuePair usernameEtPassword) throws SQLException
    {
        return attemptLogin(connection, usernameEtPassword.key.toString(), usernameEtPassword.value.toString());
    }
}
