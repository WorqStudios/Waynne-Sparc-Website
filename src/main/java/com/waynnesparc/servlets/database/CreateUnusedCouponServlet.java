package com.waynnesparc.servlets.database;

import com.waynnesparc.enums.EDatabases;
import com.waynnesparc.enums.ETables;
import com.waynnesparc.enums.TaskStatus;
import com.waynnesparc.structs.UnusedCouponEntry;
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

@WebServlet(name = "createUnusedCouponServlet", urlPatterns = {"/createUnusedCouponServlet"})
public class CreateUnusedCouponServlet extends DatabaseServletBase
{
    PreparedStatement preparedInsert;
    
    @Override
    public void defineDbAndTable()
    {
        database = EDatabases.MAIN_DB;
        table = ETables.UNUSED_COUPONS;
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
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    {
        try
        {
            super.doPost(request, response);
        } catch (ServletException | IOException e)
        {
            e.printStackTrace();
        }
        
        //debugPassedParams(request, response);
        
        UnusedCouponEntry unusedCoupon = new UnusedCouponEntry(
                request.getParameter(Constants.unusedCouponsTableCouponCodeColumn),
                request.getParameter(Constants.unusedCouponsTableCouponCategoryColumn),
                Double.parseDouble(request.getParameter(Constants.unusedCouponsTableCouponValueColumn)),
                Double.parseDouble(request.getParameter(Constants.unusedCouponsTableMinOrderValueColumn)),
                request.getParameter(Constants.unusedCouponsTableCreatedByColumn)
        );
    
        int executionResult = 0;
        try
        {
            executionResult = SQLUtility.insertEntry(table, unusedCoupon, preparedInsert);
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
    
    
        if (executionResult > 0)
        {
            Toast.makeText("Successfully Created Unused Coupon", TaskStatus.SUCCESS);
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
