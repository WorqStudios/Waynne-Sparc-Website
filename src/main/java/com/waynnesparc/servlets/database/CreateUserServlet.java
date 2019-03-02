package com.waynnesparc.servlets.database;

import com.waynnesparc.enums.*;
import com.waynnesparc.structs.CartEntry;
import com.waynnesparc.structs.DbWhere;
import com.waynnesparc.structs.LoginResult;
import com.waynnesparc.structs.UserEntry;
import com.waynnesparc.utils.Constants;
import com.waynnesparc.utils.Login;
import com.waynnesparc.utils.SQLUtility;
import com.waynnesparc.utils.Toast;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Khalil Kabara khalilkabara@gmail.com on 1/22/2019.
 */

@WebServlet(name = "createUserServlet", urlPatterns = {"/createUserServlet"})
public class CreateUserServlet extends DatabaseServletBase
{
    
    PreparedStatement preparedInsert;
    
    @Override
    public void defineDbAndTable()
    {
        database = EDatabases.MAIN_DB;
        table = ETables.USERS;
    }
    
    public void init()
    {
        defineDbAndTable();
        super.init();
        try
        {
            preparedInsert = SQLUtility.createPreparedInsert(table);
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        try
        {
            super.doPost(request, response);
        } catch (ServletException | IOException e)
        {
            e.printStackTrace();
        }
        
        String password = request.getParameter(Constants.usersTablePasswordColumn);
        String username = request.getParameter(Constants.usersTableUsernameColumn);
        String rePassword = request.getParameter(Constants.usersTableRePasswordColumn);
        
        if (password.length() < 4 || rePassword.length() < 4)
        {
            Toast.makeText("Passwords Must Be 4 Characters Or More", TaskStatus.FAILURE);
            dispatch(Constants.signupPageName, null, request, response, EDispatchType.INCLUDE);
            return;
        }
        
        if (!password.equals(rePassword))
        {
            Toast.makeText("Passwords do not match. Try again", TaskStatus.FAILURE);
            dispatch(Constants.signupPageName, null, request, response, EDispatchType.INCLUDE);
            return;
        }
        
        EUserType userType = EUserType.CUSTOMER;
        
        if (request.getParameter(Constants.usersTableUserTypeColumn) != null)
        {
            switch (request.getParameter(Constants.usersTableUserTypeColumn))
            {
                case Constants.adminTypeName:
                    userType = EUserType.ADMIN;
                    break;
                case Constants.superAdminTypeName:
                    userType = EUserType.SUPER_ADMIN;
                    break;
                case Constants.customerTypeName:
                    userType = EUserType.CUSTOMER;
                    break;
            }
        }
        
        DbWhere[] wheres = new DbWhere[]
                {
                        new DbWhere(Constants.usersTableUsernameColumn,
                                request.getParameter(Constants.usersTableUsernameColumn),
                                true)
                };
        
        try
        {
            PreparedStatement preparedStatement = SQLUtility.createPreparedSelectWhere(
                    EDatabases.MAIN_DB, ETables.USERS, Constants.usersTableUsernameColumn, wheres);
            
            ResultSet resultSet = SQLUtility.executeQueryReturnResults(preparedStatement);
            
            if (resultSet.next())
            {
                dispatch(Constants.signupPageName, null, request, response, EDispatchType.INCLUDE);
                Toast.makeText("Username exists. Please select a new one.", TaskStatus.FAILURE);
                return;
            }
            
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        
        UserEntry user = new UserEntry(
                userType,
                request.getParameter(Constants.usersTableEmailColumn),
                username,
                request.getParameter(Constants.usersTablePasswordColumn),
                request.getParameter(Constants.usersTableFirstNameColumn),
                request.getParameter(Constants.usersTableLastNameColumn),
                Long.parseLong(request.getParameter(Constants.usersTablePhoneColumn)),
                request.getParameter(Constants.usersTableDOBColumn),
                request.getParameter(Constants.usersTableAddressColumnColumn)
        );
        
        int executionResult = 0;
        try
        {
            executionResult = SQLUtility.insertEntry(table, user, preparedInsert);
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        
        if (executionResult > 0)
        {
            wheres = new DbWhere[]
                    {
                            new DbWhere
                                    (
                                            Constants.cartsTableUsernameColumn,
                                            request.getParameter(Constants.usersTableUsernameColumn),
                                            true
                                    )
                    };
            
            String empty = "";
            DbWhere[] keyVal = new DbWhere[]
                    {
                            new DbWhere
                                    (
                                            Constants.cartsTableItemsInCartColumn,
                                            empty,
                                            true
                                    )
                    };
            
            try
            {
                PreparedStatement preparedStatement = SQLUtility.createPreparedSelectWhere(
                        database,
                        ETables.CARTS,
                        Constants.cartsTableUsernameColumn,
                        wheres
                );
                
                if (SQLUtility.selectEntry(preparedStatement))
                {
                    preparedStatement = SQLUtility.createPreparedUpdateWhere
                            (
                                    database,
                                    ETables.CARTS,
                                    keyVal,
                                    wheres
                            );
                    assert preparedStatement != null;
                    SQLUtility.updateEntry(preparedStatement);
                    
                } else
                {
                    preparedStatement = SQLUtility.createPreparedInsert(ETables.CARTS);
                    CartEntry cartEntry = new CartEntry(request.getParameter(Constants.usersTableUsernameColumn), "");
                    SQLUtility.insertEntry(ETables.CARTS, cartEntry, preparedStatement);
                }
            } catch (SQLException e)
            {
                e.printStackTrace();
            }
    
            //dispatch(Constants.loginPageName, null, request, response, EDispatchType.INCLUDE);
            LoginResult loginResult = null;
            try
            {
                loginResult = Login.attemptLogin(connection, username, password);

                if (loginResult.loginSuccessful)
                    dispatch(Constants.homePageName, null, request, response, EDispatchType.FORWARD);
            } catch (SQLException e)
            {
                e.printStackTrace();
                Toast.makeText("Login Not Successful. Please Check Your Details", TaskStatus.FAILURE);
                dispatch(Constants.loginPageName, null, request, response, EDispatchType.INCLUDE);
                return;
            }
            Toast.makeText("Account Created.", TaskStatus.SUCCESS);
        }
    }
    
    
    public void destroy()
    {
        super.destroy();
    }
}
