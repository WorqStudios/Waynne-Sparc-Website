package com.waynnesparc.servlets.database;

import com.waynnesparc.enums.EDatabases;
import com.waynnesparc.enums.EDispatchType;
import com.waynnesparc.enums.ETables;
import com.waynnesparc.utils.Constants;
import com.waynnesparc.utils.SQLUtility;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by Khalil Kabara khalilkabara@gmail.com on 1/22/2019.
 */

@WebServlet(name = "searchItemsServlet", urlPatterns = {"/searchItemsServlet"})
public class SearchItemsServlet extends DatabaseServletBase
{
    PreparedStatement preparedInsert;
    
    @Override
    public void defineDbAndTable()
    {
        database = EDatabases.MAIN_DB;
        table = ETables.ITEMS;
    }
    
    public void init()
    {
        super.init();
        
        try
        {
            preparedInsert = SQLUtility.createPreparedInsert(table);
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        try
        {
            super.doGet(request, response);
        } catch (ServletException | IOException e)
        {
            e.printStackTrace();
        }
        
        String searchParam = request.getParameter("search_items");
        
        dispatch(Constants.homePageName, null, request
        , response, EDispatchType.FORWARD);
    }
    
    public void destroy()
    {
        try
        {
            preparedInsert.close();
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        super.destroy();
    }
}
