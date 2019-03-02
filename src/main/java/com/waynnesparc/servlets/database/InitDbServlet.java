package com.waynnesparc.servlets.database;

import com.waynnesparc.enums.EDatabases;
import com.waynnesparc.enums.EDispatchType;
import com.waynnesparc.enums.ETables;
import com.waynnesparc.structs.UsedCouponEntry;
import com.waynnesparc.utils.Constants;
import com.waynnesparc.utils.GeneralUtility;
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

@WebServlet(name = "initDbServlet", urlPatterns = {"/initDbServlet"})
public class InitDbServlet extends DatabaseServletBase
{
    PreparedStatement preparedInsert;
    
    @Override
    public void defineDbAndTable()
    {
    }
    
    public void init()
    {
        super.init();
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
        
        try
        {
            GeneralUtility.loadAllItemsIfNull();
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        
        dispatch(request.getRequestURI(), null, request, response, EDispatchType.FORWARD);
    }
    
    public void destroy()
    {
        super.destroy();
    }
}
