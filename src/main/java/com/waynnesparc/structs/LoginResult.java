package com.waynnesparc.structs;

/**
 * Created by Khalil Kabara khalilkabara@gmail.com on 2/4/2019.
 */
public class LoginResult
{
    public boolean loginSuccessful;
    public UserEntry user;
    
    public LoginResult(boolean loginSuccessful, UserEntry user)
    {
        this.loginSuccessful = loginSuccessful;
        this.user = user;
    }
}
