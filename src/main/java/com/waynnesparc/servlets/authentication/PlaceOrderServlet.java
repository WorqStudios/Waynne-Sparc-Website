package com.waynnesparc.servlets.authentication;

import com.waynnesparc.enums.ETables;
import com.waynnesparc.enums.TaskStatus;
import com.waynnesparc.servlets.WaynneSparcServlet;
import com.waynnesparc.utils.GeneralUtility;
import com.waynnesparc.utils.SQLUtility;
import com.waynnesparc.utils.Toast;

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

@WebServlet(name = "placeOrderServlet", urlPatterns = {"/placeOrderServlet"})
public class PlaceOrderServlet extends WaynneSparcServlet
{
    
    public void init()
    {
        super.init();
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        PreparedStatement preparedStatement = null;
        
        for (int i = 0; i < GeneralUtility.getOrdersToProcess().size(); i++)
        {
            try
            {
                preparedStatement = SQLUtility.createPreparedInsert(ETables.CARTS);
                SQLUtility.insertEntry(ETables.CARTS,
                        GeneralUtility.ordersToProcess.get(i),
                        preparedStatement);
            } catch (SQLException e)
            {
                e.printStackTrace();
            }
        }
        
        Toast.makeText("Order Successfully Placed.", TaskStatus.SUCCESS);
    }
    
    public void destroy()
    {
        super.destroy();
    }
}
