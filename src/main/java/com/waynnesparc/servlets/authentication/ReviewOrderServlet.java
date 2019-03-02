package com.waynnesparc.servlets.authentication;

import com.waynnesparc.servlets.WaynneSparcServlet;
import com.waynnesparc.structs.UnprocessedOrderEntry;
import com.waynnesparc.utils.Constants;
import com.waynnesparc.utils.GeneralUtility;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by Khalil Kabara khalilkabara@gmail.com on 1/22/2019.
 */

@WebServlet(name = "reviewOrderServlet", urlPatterns = {"/reviewOrderServlet"})
public class ReviewOrderServlet extends WaynneSparcServlet
{
    
    public void init()
    {
        super.init();
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String fname;
        String lname;
        String email;
        long phone;
        String address;
        String shippingType;
        String username;
        
        
        if (GeneralUtility.getCurrentUser().userType.toString().equalsIgnoreCase(Constants.guestTypeName))
        {
            fname = request.getParameter(Constants.usersTableFirstNameColumn);
            lname = request.getParameter(Constants.usersTableLastNameColumn);
            email = request.getParameter(Constants.usersTableEmailColumn);
            phone = Long.parseLong(request.getParameter(Constants.usersTablePhoneColumn));
            address = request.getParameter(Constants.usersTableAddressColumnColumn);
            username = "GUEST" + GeneralUtility.generateRandomUID(7);
        } else
        {
            fname = GeneralUtility.getCurrentUser().firstName;
            lname = GeneralUtility.getCurrentUser().lastName;
            email = GeneralUtility.getCurrentUser().email;
            phone = GeneralUtility.getCurrentUser().phone;
            address = GeneralUtility.getCurrentUser().address;
            username = GeneralUtility.getCurrentUser().username;
        }
        
        shippingType = Constants.flatRateShippingName;
        
        GeneralUtility.ordersToProcess = new ArrayList<>();
        UnprocessedOrderEntry unprocessedOrderEntry = null;
        
        for (int i = 0; i < GeneralUtility.getCurrentCart().size(); i += 1)
        {
            try
            {
                unprocessedOrderEntry = new UnprocessedOrderEntry
                        (
                                GeneralUtility.generateRandomUID(),
                                GeneralUtility.getAllCartItems().get(i).uid,
                                GeneralUtility.getAllCartItems().get(i).name,
                                username,
                                1,
                                GeneralUtility.getAllCartItems().get(i).price,
                                1,
                                address,
                                "",
                                Constants.flatRateShippingCost,
                                0,
                                0
                        );
                
                GeneralUtility.ordersToProcess.add(unprocessedOrderEntry);
            } catch (SQLException e)
            {
                e.printStackTrace();
            }
        }
    }
    
    public void destroy()
    {
        super.destroy();
    }
}
