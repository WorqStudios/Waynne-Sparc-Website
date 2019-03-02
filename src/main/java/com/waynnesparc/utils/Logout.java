package com.waynnesparc.utils;

import com.waynnesparc.enums.EDatabases;
import com.waynnesparc.enums.EUserType;

import java.sql.SQLException;

/**
 * Created by Khalil Kabara on 2/4/2019.
 */
public class Logout
{
    public static void logout() throws SQLException
    {
        GeneralUtility.setCurrentUser(GeneralUtility.createBlankUser());
        
        GeneralUtility.endSession(EDatabases.MAIN_DB);
    }
}
