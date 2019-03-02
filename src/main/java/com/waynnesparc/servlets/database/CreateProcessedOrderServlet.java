package com.waynnesparc.servlets.database;

import com.waynnesparc.enums.EDatabases;
import com.waynnesparc.enums.ETables;
import com.waynnesparc.enums.TaskStatus;
import com.waynnesparc.structs.ProcessedOrderEntry;
import com.waynnesparc.utils.Constants;
import com.waynnesparc.utils.ItemsUtil;
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

@WebServlet(name = "createProcessedOrderServlet", urlPatterns = {"/createProcessedOrderServlet"})
public class CreateProcessedOrderServlet extends DatabaseServletBase
{
    PreparedStatement preparedInsert;
    
    @Override
    public void defineDbAndTable()
    {
        database = EDatabases.MAIN_DB;
        table = ETables.PROCESSED_ORDERS;
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
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
    {
        try
        {
            super.doPost(request, response);
        } catch (ServletException | IOException e)
        {
            e.printStackTrace();
        }
        
        //debugPassedParams(request, response);
        
        boolean hasCoupon = request.getParameter(Constants.processedOrdersTableHasCouponColumn).equalsIgnoreCase(Constants.checkboxOnName);
        
        ProcessedOrderEntry processedOrder = new ProcessedOrderEntry(
                request.getParameter(Constants.processedOrdersTableOrderUidColumn),
                request.getParameter(Constants.processedOrdersTableItemUidColumn),
                request.getParameter(Constants.processedOrdersTableItemNameColumn),
                request.getParameter(Constants.processedOrdersTableCustomerUsernameColumn),
                Integer.parseInt(request.getParameter(Constants.processedOrdersTableQuantityColumn)),
                Double.parseDouble(request.getParameter(Constants.processedOrdersTableCostPerItemColumn)),
                Integer.parseInt(request.getParameter(Constants.processedOrdersTableDateTimeOfOrderColumn)),
                Integer.parseInt(request.getParameter(Constants.processedOrdersTableDateTimeOfProcessingColumn)),
                request.getParameter(Constants.processedOrdersTableShippingAddressColumn),
                request.getParameter(Constants.processedOrdersTableShippingTypeColumn),
                Double.parseDouble(request.getParameter(Constants.processedOrdersTableShippingCostColumn)),
                hasCoupon ? 1 : 0,
                Double.parseDouble(request.getParameter(Constants.processedOrdersTableCouponValueColumn)),
                request.getParameter(Constants.processedOrdersTableProcessedByColumn)
        );
        
        int executionResult = 0;
        try
        {
            executionResult = SQLUtility.insertEntry(table, processedOrder, preparedInsert);
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        
        
        if (executionResult > 0)
        {
            Toast.makeText("Successfully processed order", TaskStatus.SUCCESS);
        }
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
