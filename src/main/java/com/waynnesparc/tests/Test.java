package com.waynnesparc.tests;

import com.waynnesparc.enums.EDatabases;
import com.waynnesparc.enums.ETables;
import com.waynnesparc.structs.UserEntry;
import com.waynnesparc.utils.SQLUtility;

import java.sql.SQLException;

/**
 * Created by Khalil Kabara on 1/22/2019.
 */
public class Test
{
    public static void main(String[] args)
    {
//        System.out.println("INSERT INTO " + Constants.usersTableName + " Values (" +
//                "\"" + "email@mail.com" + "\"" +
//                ", \"" + "user" + "\"" +
//                ", \"" + "pass" + "\"" +
//                ", \"" + "fname" + "\"" +
//                ", \"" + "lname" + "\"" +
//                ", \"" + "dob" + "\"" +
//                ", \"" + "add" + "\");");
        
//        UserEntry user = new UserEntry(
//                "username@mail.com",
//                "username@mail.com",
//                "mUser",
//                "mPass",
//                "User",
//                "Name",
//                "1928-12-23",
//                "Abuja Central"
//        );

        SQLUtility sqlUtility = new SQLUtility();

//        try
//        {
//            sqlUtility.insertEntry(EDatabases.MAIN_DB, ETables.USERS, user, co);
//        } catch (SQLException e)
//        {
//            e.printStackTrace();
//        } catch (ClassNotFoundException e)
//        {
//            e.printStackTrace();
//        }
    }
}
