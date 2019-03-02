package com.waynnesparc.structs;

/**
 * Created by Khalil Kabara khalilkabara@gmail.com on 1/25/2019.
 */
public class DbWhere extends WaynneSparcKeyValuePair
{
    public boolean whereValueIsString;
    
    public DbWhere(Object key, Object value, boolean whereValueIsString)
    {
        super(key, value);
        this.whereValueIsString = whereValueIsString;
    }
}
