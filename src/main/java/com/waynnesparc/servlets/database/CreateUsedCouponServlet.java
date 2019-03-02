package com.waynnesparc.servlets.database;

import com.waynnesparc.enums.EDatabases;
import com.waynnesparc.enums.ETables;
import com.waynnesparc.enums.TaskStatus;
import com.waynnesparc.structs.UsedCouponEntry;
import com.waynnesparc.utils.Constants;
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

@WebServlet(name = "createUsedCouponServlet", urlPatterns = {"/createUsedCouponServlet"})
public class CreateUsedCouponServlet extends DatabaseServletBase
{
    PreparedStatement preparedInsert;
    
    @Override
    public void defineDbAndTable()
    {
        database = EDatabases.MAIN_DB;
        table = ETables.USED_COUPONS;
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
        
        UsedCouponEntry usedCoupon = new UsedCouponEntry(
                request.getParameter(Constants.usedCouponsTableCouponCodeColumn),
                request.getParameter(Constants.usedCouponsTableCouponCategoryColumn),
                Double.parseDouble(request.getParameter(Constants.usedCouponsTableCouponValueColumn)),
                Double.parseDouble(request.getParameter(Constants.usedCouponsTableMinOrderValueColumn)),
                request.getParameter(Constants.usedCouponsTableUsernameOfWhoClaimedColumn),
                request.getParameter(Constants.usedCouponsTableCreatedByColumn),
                request.getParameter(Constants.usedCouponsTableConfirmedByColumn)
        );
        
        int executionResult = 0;
        try
        {
            executionResult = SQLUtility.insertEntry(table, usedCoupon, preparedInsert);
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        
        
        if (executionResult > 0)
        {
            Toast.makeText("Successfully Used Coupon", TaskStatus.SUCCESS);
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
