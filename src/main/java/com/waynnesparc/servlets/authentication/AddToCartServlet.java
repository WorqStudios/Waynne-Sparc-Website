package com.waynnesparc.servlets.authentication;

import com.waynnesparc.enums.EDispatchType;
import com.waynnesparc.enums.TaskStatus;
import com.waynnesparc.servlets.WaynneSparcServlet;
import com.waynnesparc.utils.CartUtil;
import com.waynnesparc.utils.Constants;
import com.waynnesparc.utils.Toast;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Created by Khalil Kabara khalilkabara@gmail.com on 1/22/2019.
 */

@WebServlet(name = "addToCartServlet", urlPatterns = {"/addToCartServlet"})
public class AddToCartServlet extends WaynneSparcServlet
{
    
    public void init()
    {
        super.init();
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String uid = request.getParameter(Constants.itemsTableUidColumn);
        try
        {
            CartUtil.addToCurrentCart(uid);
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        dispatch(request.getRequestURI(), null, request, response, EDispatchType.FORWARD);
        Toast.makeText("Item Successfully Added To Cart", TaskStatus.SUCCESS);
    }
    
    public void destroy()
    {
        super.destroy();
    }
}
