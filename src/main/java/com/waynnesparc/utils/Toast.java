package com.waynnesparc.utils;

import com.waynnesparc.enums.TaskStatus;

/**
 * Created by Khalil Kabara on 1/22/2019.
 */
public class Toast
{
    public static void makeText(String message, TaskStatus result)
    {
        switch (result){
    
            case RUNNING:
                //yellow
                System.out.println(message + " RESULT:" + result);
                break;
            case SUCCESS:
                //green
                System.out.println(message + " RESULT:" + result);
                break;
            case FAILURE:
                //red
                System.out.println(message + " RESULT:" + result);
                break;
        }
    }
}
