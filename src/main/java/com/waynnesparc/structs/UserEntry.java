package com.waynnesparc.structs;

import com.waynnesparc.enums.EUserType;

/**
 * Created by Khalil Kabara on 1/21/2019.
 */
public class UserEntry extends DBEntryBase
{
    public EUserType userType;
    public String email;
    public String username;
    public String password;
    public String firstName;
    public String lastName;
    public long phone;
    public String dateOfBirth;
    public String address;
    
    public UserEntry(EUserType userType, String email, String username, String password,
                     String firstName, String lastName, long phone, String dateOfBirth, String address)
    {
        this.userType = userType;
        this.email = email;
        this.username = username;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phone = phone;
        this.dateOfBirth = dateOfBirth;
        this.address = address;
    }
}
