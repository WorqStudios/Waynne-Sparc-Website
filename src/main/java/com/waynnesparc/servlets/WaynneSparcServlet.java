package com.waynnesparc.servlets;

import com.waynnesparc.enums.EDispatchType;
import com.waynnesparc.structs.WaynneSparcKeyValuePair;
import com.waynnesparc.utils.GeneralUtility;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/**
 * Created by Khalil Kabara khalilkabara@gmail.com on 1/24/2019.
 */
public abstract class WaynneSparcServlet extends HttpServlet
{
    public Connection connection;
    public PrintWriter out;
    
    public void init()
    {
        try
        {
            GeneralUtility.loadAllItemsIfNull();
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        resp.setContentType("text/html");
        out = resp.getWriter();
    
        try
        {
            setGlobalVariables(req);
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        resp.setContentType("text/html");
        out = resp.getWriter();
    
        try
        {
            setGlobalVariables(req);
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
    }
    
    public void setGlobalVariables(HttpServletRequest req) throws SQLException
    {
        if (GeneralUtility.getCurrentSession() == null)
        {
            GeneralUtility.setCurrentSession(getSession(req));
        }
    }
    
    protected HttpSession getSession(HttpServletRequest req)
    {
        return req.getSession();
    }
    
    public void dispatch(String pageToDispatchTo, WaynneSparcKeyValuePair[] valuesToPass,
                         HttpServletRequest request, HttpServletResponse response, EDispatchType dispatchType)
            throws ServletException, IOException
    {
        if (valuesToPass != null && valuesToPass.length > 0)
        {
            for (int i = 0; i < valuesToPass.length; i++)
            {
                request.setAttribute(valuesToPass[i].key.toString(), valuesToPass[i].value);
            }
        }
        RequestDispatcher requestDispatcher = request.getRequestDispatcher(pageToDispatchTo);
        
        switch (dispatchType)
        {
            
            case FORWARD:
                requestDispatcher.forward(request, response);
                break;
            case INCLUDE:
                requestDispatcher.include(request, response);
                break;
        }
    }
    
    public void destroy()
    {
        try
        {
            connection.close();
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
    }
    
    public void debugPassedParams(HttpServletRequest request, HttpServletResponse response)
    {
        Map<String, String[]> map = request.getParameterMap();
        PrintWriter out = null;
        try
        {
            out = response.getWriter();
        } catch (IOException e)
        {
            e.printStackTrace();
        }
        response.setContentType("text/html");
        
        out.print("<html><body>");
        out.print("<h1>");
        out.print(request.getClass().toString());
        out.print("</h1>");
        out.println("<table border=\"1\" cellpadding = \"5\"" +
                " cellspacing = \"5\">");
        out.println("<tr> <th>Parameter Name</th>" +
                "<th>Parameter Value</th></tr>");
        Set set = map.entrySet();
        Iterator it = set.iterator();
        while (it.hasNext())
        {
            Map.Entry<String, String[]> entry =
                    (Map.Entry<String, String[]>) it.next();
            String paramName = entry.getKey();
            out.print("<tr><td>" + paramName + "</td><td>");
            String[] paramValues = entry.getValue();
            if (paramValues.length == 1)
            {
                String paramValue = paramValues[0];
                if (paramValue.length() == 0)
                    out.println("<b>No Value</b>");
                else
                    out.println(paramValue);
            } else
            {
                out.println("<ul>");
                for (int i = 0; i < paramValues.length; i++)
                {
                    out.println("<li>" + paramValues[i] + "</li>");
                }
                out.println("</ul>");
            }
            out.print("</td></tr>");
        }
        out.println("</table></body></html>");
    }
}
