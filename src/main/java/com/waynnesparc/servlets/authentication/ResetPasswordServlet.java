
package com.waynnesparc.servlets.authentication;

import com.waynnesparc.enums.EDatabases;
import com.waynnesparc.enums.EDispatchType;
import com.waynnesparc.enums.ETables;
import com.waynnesparc.enums.TaskStatus;
import com.waynnesparc.servlets.database.DatabaseServletBase;
import com.waynnesparc.structs.DbWhere;
import com.waynnesparc.utils.Constants;
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
 * Created by Khalil Kabara khalilkabara@gmail.com on 2/4/2019.
 */

@WebServlet(name = "resetPasswordServlet", urlPatterns = {"/resetPasswordServlet"})
public class ResetPasswordServlet extends DatabaseServletBase
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
    
    private void doLogout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException
    {
        String emailAddress = request.getParameter(Constants.usersTableEmailColumn);
        String generatedPassword = GeneralUtility.generateRandomUID(8);
        
        DbWhere[] valueToSet = new DbWhere[]
                {
                        new DbWhere(
                                Constants.usersTablePasswordColumn,
                                generatedPassword,
                                true
                        )
                };
        
        DbWhere[] wheres = new DbWhere[]
                {
                        new DbWhere(
                                Constants.usersTableEmailColumn,
                                emailAddress,
                                true)
                };
        
        PreparedStatement preparedStatement = SQLUtility.createPreparedUpdateWhere(
                database,
                table,
                valueToSet,
                wheres
        );
        
        assert preparedStatement != null;
        SQLUtility.updateEntry(preparedStatement);
        
        String message = "Your new Wynnesparc password is " +
                generatedPassword +
                ". Please change ths password after login";
        
        GeneralUtility.mailTo(emailAddress, message);
    
        Toast.makeText("Password Reset Successful.", TaskStatus.SUCCESS);
        dispatch(Constants.homePageName, null, request, response, EDispatchType.FORWARD);
    }
    
    public void destroy()
    {
        super.destroy();
    }
}
