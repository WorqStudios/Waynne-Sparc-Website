package com.waynnesparc.servlets.authentication;

import com.waynnesparc.enums.EDispatchType;
import com.waynnesparc.enums.EUserType;
import com.waynnesparc.servlets.WaynneSparcServlet;
import com.waynnesparc.utils.Constants;
import com.waynnesparc.utils.GeneralUtility;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Khalil Kabara khalilkabara@gmail.com on 2/4/2019.
 */

@WebServlet(name = "adminDispatcherServlet", urlPatterns = {"/adminDispatcherServlet"})
public class AdminDispatcher extends WaynneSparcServlet
{
    
    public void init()
    {
        super.init();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        System.out.println(request.getRequestURI());
        
        if (!GeneralUtility.getCurrentUser().userType.equals(EUserType.ADMIN) &&
                !GeneralUtility.getCurrentUser().userType.equals(EUserType.SUPER_ADMIN))
        {
            dispatch(Constants.homePageName, null, request, response, EDispatchType.INCLUDE);
        }
    }
    
    public void destroy()
    {
        super.destroy();
    }
}
