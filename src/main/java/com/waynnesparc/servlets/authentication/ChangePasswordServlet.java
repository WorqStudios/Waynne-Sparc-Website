package com.waynnesparc.servlets.authentication;

import com.waynnesparc.enums.EDatabases;
import com.waynnesparc.enums.EDispatchType;
import com.waynnesparc.enums.ETables;
import com.waynnesparc.enums.TaskStatus;
import com.waynnesparc.servlets.database.DatabaseServletBase;
import com.waynnesparc.structs.DbWhere;
import com.waynnesparc.utils.Constants;
import com.waynnesparc.utils.GeneralUtility;
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
 * Created by Khalil Kabara khalilkabara@gmail.com on 2/4/2019.
 */
@WebServlet(name = "changePasswordServlet", urlPatterns = {"/changePasswordServlet"})
public class ChangePasswordServlet extends DatabaseServletBase
{
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
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        if (!request.getParameter(Constants.changePasswordNewPassword).equals
                (request.getParameter(Constants.changePasswordReNewPassword)))
        {
            Toast.makeText("New Passwords Do Not Match Check Details", TaskStatus.FAILURE);
            dispatch(Constants.changePasswordPageName, null, request, response, EDispatchType.FORWARD);
            return;
        }
        
        DbWhere[] keyValues = new DbWhere[]
                {
                        new DbWhere
                                (
                                        Constants.usersTablePasswordColumn,
                                        request.getParameter(Constants.changePasswordNewPassword),
                                        true
                                )
                };
        
        DbWhere[] wheres = new DbWhere[]
                {
                        new DbWhere
                                (
                                        Constants.usersTableUsernameColumn,
                                        GeneralUtility.getCurrentUser().username,
                                        true
                                )
                };
        
        String oldPasswordOnDb = null;
        ResultSet resultSet = null;
        PreparedStatement statement = null;
        
        try
        {
            statement = SQLUtility.createPreparedSelectWhere(
                    database, table, Constants.usersTablePasswordColumn, wheres
            );
            
            resultSet = SQLUtility.executeQueryReturnResults(statement);
            
            if (resultSet.next())
            {
                oldPasswordOnDb = resultSet.getString(Constants.usersTablePasswordColumn);
            }
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        
        if (!request.getParameter(Constants.changePasswordOldPassword).equals(oldPasswordOnDb))
        {
            Toast.makeText("Wrong Old Password Entered. Check Details", TaskStatus.FAILURE);
            dispatch(Constants.changePasswordPageName, null, request, response, EDispatchType.FORWARD);
            return;
        }
        
        try
        {
            statement = SQLUtility.createPreparedUpdateWhere(database, table, keyValues, wheres);
            
            boolean result = SQLUtility.updateEntry(statement);
            
            Toast.makeText("Password Change Successful.", TaskStatus.SUCCESS);
            dispatch(Constants.adminHomePageName, null, request, response, EDispatchType.FORWARD);
            
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        
    }
    
    public void destroy()
    {
        super.destroy();
    }
}
