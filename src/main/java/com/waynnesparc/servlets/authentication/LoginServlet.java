package com.waynnesparc.servlets.authentication;

import com.waynnesparc.enums.*;
import com.waynnesparc.servlets.database.DatabaseServletBase;
import com.waynnesparc.structs.LoginResult;
import com.waynnesparc.utils.Constants;
import com.waynnesparc.utils.GeneralUtility;
import com.waynnesparc.utils.Login;
import com.waynnesparc.utils.Toast;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by Khalil Kabara khalilkabara@gmail.com on 2/4/2019.
 */
@WebServlet(name = "loginServlet", urlPatterns = {"/loginServlet"})
public class LoginServlet extends DatabaseServletBase
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
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        try
        {
            super.doPost(request, response);
        } catch (ServletException | IOException e)
        {
            e.printStackTrace();
        }
        
        String username = request.getParameter("login_username");
        String password = request.getParameter("login_password");
        
        LoginResult loginResult = null;
        try
        {
            loginResult = Login.attemptLogin(connection, username, password);
        } catch (SQLException e)
        {
            e.printStackTrace();
            Toast.makeText("Login Not Successful. Please Check Your Details", TaskStatus.FAILURE);
            dispatch(Constants.loginPageName, null, request, response, EDispatchType.INCLUDE);
            return;
        }
        
        
        if (loginResult.loginSuccessful)
        {
            //login successful
            
            String pageToDispatchTo;
            
            if (loginResult.user.userType.equals(EUserType.ADMIN) ||
                    loginResult.user.userType.equals(EUserType.SUPER_ADMIN))
            {
                pageToDispatchTo = Constants.adminHomePageName;
            } else
            {
                pageToDispatchTo = Constants.homePageName;
            }
            
            dispatch(pageToDispatchTo, null, request, response, EDispatchType.FORWARD);
            
            Toast.makeText("Login Successful", TaskStatus.SUCCESS);
            out.println("Login Successful");
    
        } else
        {
            //login failed
            dispatch(Constants.loginPageName, null, request, response, EDispatchType.INCLUDE);
            Toast.makeText("Login Failed", TaskStatus.FAILURE);
            out.println("Login Failed");
        }
    }
    
    public void destroy()
    {
        super.destroy();
    }
}
