
package com.waynnesparc.servlets.database;

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

@WebServlet(name = "removeCartItemServlet", urlPatterns = {"/removeCartItemServlet"})
public class RemoveCartItemServlet extends WaynneSparcServlet
{
    public void init()
    {
        super.init();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        try
        {
            CartUtil.removeFromCurrentCart(request.getParameter(Constants.itemToRemoveFromCart));
            dispatch(Constants.cartPageName, null, request, response, EDispatchType.FORWARD);
            Toast.makeText("Successfully Removed Item From Cart.", TaskStatus.SUCCESS);
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
