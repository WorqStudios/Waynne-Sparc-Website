//package com.waynnesparc.tests;
//
//import com.waynnesparc.enums.EDatabases;
//import com.waynnesparc.enums.ETables;
//import com.waynnesparc.enums.TaskStatus;
//import com.waynnesparc.structs.UserEntry;
//import com.waynnesparc.utils.Constants;
//import com.waynnesparc.utils.SQLUtility;
//
//import javax.servlet.ServletConfig;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.sql.*;
//
///**
// * Created by Khalil Kabara khalilkabara@gmail.com on 1/22/2019.
// */
//@WebServlet(name = "createUserSevlet", urlPatterns = {"/createUserSevlet"})
//public class ServTut extends HttpServlet
//{
//    private SQLUtility sqlUtility;
//
//    private TaskStatus executionResult;
//
//    private Connection connection;
//    private Statement statement;
//
//    public void init(ServletConfig config)
//    {
//        //Init params, servlet level.
////        String s = config.getServletName();
////        System.out.println("Servlet is the one known as: " + s);
////
////        //Context params, application level. Can be accessed from any servlet or JSP
////        ServletContext context = getServletContext();
////
////        Enumeration<String> allInitParams = context.getInitParameterNames();
////        while (allInitParams.hasMoreElements())
////        {
////            System.out.println(allInitParams.nextElement());
////        }
//
//        try
//        {
//            Class.forName("com.mysql.jdbc.Driver");
//        } catch (ClassNotFoundException e)
//        {
//            e.printStackTrace();
//        }
//
//        try
//        {
//            connection = DriverManager.getConnection(
//                    Constants.mainDatabaseConnectionURL,
//                    Constants.mainDatabaseUsername,
//                    Constants.mainDatabasePassword);
//
//            statement = connection.createStatement();
//            statement.execute("USE" + " " + Constants.mainDatabaseName);
//
//        } catch (SQLException e)
//        {
//            e.printStackTrace();
//        }
//    }
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
//    {
//        UserEntry user = new UserEntry(
//                request.getParameter("email"),
//                request.getParameter("username"),
//                request.getParameter("password"),
//                request.getParameter("fname"),
//                request.getParameter("lname"),
//                request.getParameter("dob"),
//                request.getParameter("address")
//        );
//
//        sqlUtility = new SQLUtility();
//
//        try
//        {
//            PreparedStatement statement = SQLUtility.createPreparedInsert(connection, ETables.USERS);
//            executionResult = sqlUtility.insertEntry(EDatabases.MAIN_DB, ETables.USERS, user, connection, statement);
//        } catch (Exception e)
//        {
//            e.printStackTrace();
//        }
//
//        //Print status to the screen
//        {
//            response.setContentType("text/html");
//            PrintWriter out = response.getWriter();
//
//            out.println("<html>");
//            out.println("<h1>");
//            if (executionResult.equals(TaskStatus.SUCCESS))
//            {
//                out.println("Successfully added a new user to db");
//            } else
//            {
//                out.println("Failed adding a new user to db");
//            }
//            out.println("</h1>");
//            out.println("</html>");
//        }
//    }
//
//    public void destroy()
//    {
//        try
//        {
//            statement.close();
//            connection.close();
//        } catch (SQLException e)
//        {
//            e.printStackTrace();
//        }
//    }
//}
