package com.waynnesparc.servlets.authentication;

import com.waynnesparc.enums.*;
import com.waynnesparc.servlets.database.DatabaseServletBase;
import com.waynnesparc.utils.Constants;
import com.waynnesparc.utils.GeneralUtility;
import com.waynnesparc.utils.Logout;
import com.waynnesparc.utils.Toast;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Created by Khalil Kabara khalilkabara@gmail.com on 2/4/2019.
 */

@WebServlet(name = "logoutServlet", urlPatterns = {"/logoutServlet"})
public class LogoutServlet extends DatabaseServletBase
{
    @Override
    public void defineDbAndTable()
    {
        database = EDatabases.MAIN_DB;
        table = ETables.USERS;
    }
    
    public void init()
    {
        defineDbAndTable();
        super.init();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doLogout(request, response);
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doLogout(request, response);
    }
    
    private void doLogout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        try
        {
            super.doPost(request, response);
        } catch (ServletException | IOException e)
        {
            e.printStackTrace();
        }
    
        GeneralUtility.setCurrentUser(GeneralUtility.createBlankUser());
        dispatch(Constants.homePageName, null, request, response, EDispatchType.FORWARD);
    
        try
        {
            Logout.logout();
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        
        Toast.makeText("Logout Successful", TaskStatus.SUCCESS);
    }
    
    public void destroy()
    {
        super.destroy();
    }
}
