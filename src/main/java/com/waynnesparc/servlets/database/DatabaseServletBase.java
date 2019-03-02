package com.waynnesparc.servlets.database;

import com.waynnesparc.enums.EDatabases;
import com.waynnesparc.enums.EDispatchType;
import com.waynnesparc.enums.ETables;
import com.waynnesparc.servlets.WaynneSparcServlet;
import com.waynnesparc.structs.DBEntryBase;
import com.waynnesparc.structs.WaynneSparcKeyValuePair;
import com.waynnesparc.utils.Constants;
import com.waynnesparc.utils.GeneralUtility;
import com.waynnesparc.utils.SQLUtility;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by Khalil Kabara khalilkabara@gmail.com on 1/24/2019.
 */
public abstract class DatabaseServletBase extends WaynneSparcServlet
{
    public PreparedStatement preparedUseDb;
    public EDatabases database;
    public ETables table;
    //public Object executionResult;
    
    public abstract void defineDbAndTable();
    
    public void init()
    {
        defineDbAndTable();
        super.init();
        
        try
        {
            Class.forName(Constants.jdbcDriverName);
        } catch (ClassNotFoundException e)
        {
            e.printStackTrace();
        }
        
        try
        {
            switch (database)
            {
                
                case MAIN_DB:
                    connection = DriverManager.getConnection(
                            Constants.mainDatabaseConnectionURL,
                            Constants.mainDatabaseUsername,
                            Constants.mainDatabasePassword);
                    break;
            }
            
            GeneralUtility.setCurrentConnection(connection);
            
            preparedUseDb = SQLUtility.createPreparedUseDb(database);
            
            if (preparedUseDb.execute())
            {
                //todo Log switching db successful
            } else
            {
                //todo Log switching db unsuccessful
            }
            
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
    }
//
//    public void executeInsert(ETables table, DBEntryBase entry, PreparedStatement preparedStatement)
//    {
//        try
//        {
//            executionResult = SQLUtility.insertEntry(table, entry, preparedStatement);
//        } catch (Exception e)
//        {
//            e.printStackTrace();
//        }
//    }
    
    public void dispatch(String pageToDispatchTo, WaynneSparcKeyValuePair[] valuesToPass,
                         HttpServletRequest request, HttpServletResponse response, EDispatchType dispatchType) throws ServletException, IOException
    {
        super.dispatch(pageToDispatchTo, valuesToPass, request, response, dispatchType);
    }
    
    @Override
    public void setGlobalVariables(HttpServletRequest req) throws SQLException
    {
        super.setGlobalVariables(req);
        if (GeneralUtility.getCurrentConnection() == null)
        {
            GeneralUtility.setCurrentConnection(connection);
        }
    }
    
    public void destroy()
    {
        try
        {
            connection.close();
            preparedUseDb.close();
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        super.destroy();
    }
}
