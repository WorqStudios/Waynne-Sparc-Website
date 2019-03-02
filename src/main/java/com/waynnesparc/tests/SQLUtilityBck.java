//package com.waynnesparc.utils;
//
//import com.waynnesparc.enums.EDatabases;
//import com.waynnesparc.enums.ETables;
//import com.waynnesparc.enums.TaskStatus;
//import com.waynnesparc.structs.*;
//
//import java.sql.*;
//
///**
// * Created by Khalil Kabara khalilkabara@gmail.com on 1/22/2019.
// */
//public class SQLUtilityBck
//{
//    PreparedStatement preparedCreate;
//    PreparedStatement preparedSelect;
//    PreparedStatement preparedInsert;
//    PreparedStatement preparedDelete;
//    PreparedStatement preparedDropTable;
//
//    public TaskStatus insertEntry(EDatabases database, ETables table, DBEntryBase entry, Connection connection, Statement statement)
//    {
//        Toast.logForAdmin("Connecting to database was", TaskStatus.SUCCESS);
//
//        int result = 0;
//
//        if (table.equals(ETables.USERS) && !(entry instanceof UserEntry))
//        {
//            Toast.logForAdmin("", TaskStatus.FAILURE, "Please provide an instance of UserEntry class");
//            return TaskStatus.FAILURE;
//        } else if (table.equals(ETables.ITEMS) && !(entry instanceof ItemEntry))
//        {
//            Toast.logForAdmin("", TaskStatus.FAILURE, "Please provide an instance of ItemEntry class");
//            return TaskStatus.FAILURE;
//        } else if (table.equals(ETables.PROCESSED_ORDERS) && !(entry instanceof ProcessedOrderEntry))
//        {
//            Toast.logForAdmin("", TaskStatus.FAILURE, "Please provide an instance of ProcessedOrderEntry class");
//            return TaskStatus.FAILURE;
//        } else if (table.equals(ETables.UNUSED_COUPONS) && !(entry instanceof UnusedCouponEntry))
//        {
//            Toast.logForAdmin("", TaskStatus.FAILURE, "Please provide an instance of UnusedCouponEntry class");
//            return TaskStatus.FAILURE;
//        } else if (table.equals(ETables.USED_COUPONS) && !(entry instanceof UsedCouponEntry))
//        {
//            Toast.logForAdmin("", TaskStatus.FAILURE, "Please provide an instance of UsedCouponEntry class");
//            return TaskStatus.FAILURE;
//        } else
//            try
//            {
//                switch (table)
//                {
//                    case USERS:
//                        UserEntry userEntry = (UserEntry) entry;
//
//                        result = statement.executeUpdate("INSERT INTO " + Constants.usersTableName + " VALUES (" +
//                                "'" + userEntry.email + "'" +
//                                ",'" + userEntry.username + "'" +
//                                ", '" + userEntry.password + "'" +
//                                ", '" + userEntry.firstName + "'" +
//                                ", '" + userEntry.lastName + "'" +
//                                ", '" + userEntry.dateOfBirth + "'" +
//                                ", '" + userEntry.address + "');"
//                        );
//
//                        break;
//                    case ITEMS:
//                        ItemEntry itemEntry = (ItemEntry) entry;
//
//                        result = statement.executeUpdate("INSERT INTO " + Constants.itemsTableName + " VALUES (" +
//                                "'" + itemEntry.uid + "'" +
//                                ",'" + itemEntry.name + "'" +
//                                ", '" + itemEntry.description + "'" +
//                                ", '" + itemEntry.quantity + "'" +
//                                ", '" + itemEntry.price + "'" +
//                                ", '" + itemEntry.category + "'" +
//                                ", '" + itemEntry.isOnSale + "'" +
//                                ", '" + itemEntry.beforeSalePrice + "'" +
//                                ", '" + itemEntry.saleBeginDate + "'" +
//                                ", '" + itemEntry.saleEndDate + "'" +
//                                ", '" + itemEntry.pathToMainImage + "'" +
//                                ", '" + itemEntry.pathsToOtherImages + "');"
//                        );
//                        break;
//                    case PROCESSED_ORDERS:
//                        ProcessedOrderEntry orderEntry = (ProcessedOrderEntry) entry;
//
//                        result = statement.executeUpdate("INSERT INTO " + Constants.ordersTableName + " VALUES (" +
//                                "'" + orderEntry.processingStatus + "'" +
//                                ",'" + orderEntry.itemUid + "'" +
//                                ", '" + orderEntry.itemName + "'" +
//                                ", '" + orderEntry.customerUsername + "'" +
//                                ", '" + orderEntry.quantity + "'" +
//                                ", '" + orderEntry.pricePerItem + "'" +
//                                ", '" + orderEntry.dateTimeOfOrder + "'" +
//                                ", '" + orderEntry.shippingAddress + "'" +
//                                ", '" + orderEntry.shippingType + "'" +
//                                ", '" + orderEntry.shippingCost + "'" +
//                                ", '" + orderEntry.pricePerItem + "'" +
//                                ", '" + orderEntry.hasCoupon + "'" +
//                                ", '" + orderEntry.couponValue + "');"
//                        );
//                        break;
//                    case UNUSED_COUPONS:
//                        UnusedCouponEntry unusedCouponEntry = (UnusedCouponEntry) entry;
//
//                        result = statement.executeUpdate("INSERT INTO " + Constants.ordersTableName + " VALUES (" +
//                                "'" + unusedCouponEntry.couponCode + "'" +
//                                ",'" + unusedCouponEntry.couponCategory + "'" +
//                                ", '" + unusedCouponEntry.couponValue + "'" +
//                                ", '" + unusedCouponEntry.minOrderValue + "');"
//                        );
//                        break;
//                    case USED_COUPONS:
//                        UsedCouponEntry usedCouponEntry = (UsedCouponEntry) entry;
//
//                        result = statement.executeUpdate("INSERT INTO " + Constants.ordersTableName + " VALUES (" +
//                                "'" + usedCouponEntry.couponCode + "'" +
//                                ",'" + usedCouponEntry.couponCategory + "'" +
//                                ", '" + usedCouponEntry.couponValue + "'" +
//                                ", '" + usedCouponEntry.minOrderValue + "'" +
//                                ", '" + usedCouponEntry.usernameOfWhoClaimed + "');"
//                        );
//                        break;
//                }
//            } catch (Exception e)
//            {
//            }
//        if (result > 0)
//        {
//            Toast.logForAdmin("", TaskStatus.SUCCESS, "Added " + result + " entry into the table");
//            //closeResources();
//            return TaskStatus.SUCCESS;
//        }
//
//        //closeResources();
//
//        Toast.logForAdmin("", TaskStatus.FAILURE, "No record was inserted into the table");
//        return TaskStatus.FAILURE;
//    }
//
//    public void deleteEntry(EDatabases database, ETables table, DBEntryBase entry)
//    {
//
//    }
//
//    public void resetTable(ETables table)
//    {
//
//    }
//
//    public void deleteTable(ETables table)
//    {
//
//    }
//
////    private void closeResources() throws SQLException
////    {
////        statement.close();
////        connection.close();
////    }
//
//
////    private TaskStatus createDatabaseConnection(EDatabases database, Connection connection, Statement statement) throws SQLException, ClassNotFoundException
////    {
////        Class.forName("com.mysql.jdbc.Driver");
////
////        String connectionUrl = "";
////        if (database == EDatabases.MAIN_DB)
////        {
////            connectionUrl = Constants.mainDatabaseUsername;
////        }
////
////        if (connectionUrl == "" || connectionUrl == null)
////        {
////            return TaskStatus.FAILURE;
////        }
////
////        connection = DriverManager.getConnection(
////                Constants.mainDatabaseConnectionURL,
////                Constants.mainDatabaseUsername,
////                Constants.mainDatabasePassword);
////
////        statement = connection.createStatement();
////        if (database == EDatabases.MAIN_DB)
////        {
////            statement.execute("USE" + " " + Constants.mainDatabaseName);
////        }
////
////        return TaskStatus.SUCCESS;
////    }
//}
