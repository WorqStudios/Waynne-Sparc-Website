package com.waynnesparc.utils;

/**
 * Created by Khalil Kabara khalilkabara@gmail.com on 1/22/2019.
 */
public class Constants
{
    public final static String mainDatabaseName = "waynne_sparc_db_main";
    public final static String mainDatabaseUsername = "root";
    public final static String mainDatabasePassword = "admin";
    public final static String formerJdbcDriverName = "com.mysql.jdbc.Driver";
    public final static String jdbcDriverName = "com.mysql.cj.jdbc.Driver";
    
    public static final String mainDatabaseConnectionURL =
            "jdbc:mysql://localhost/waynne_sparc_db_main?useUnicode=true&useJDBCCompliantTimezoneShift=" +
                    "true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    
    public static final String sqlAll = "*";
    
    //User Table
    public final static String usersTableName = "waynne_sparc_users";
    public final static int usersTableColumnsCount = 9;
    
    public final static String usersTableUserTypeColumn = "user_type";
    public final static String usersTableEmailColumn = "email";
    public final static String usersTableUsernameColumn = "username";
    public final static String usersTablePasswordColumn = "password";
    public final static String usersTableRePasswordColumn = "re_password";
    public final static String usersTableFirstNameColumn = "fname";
    public final static String usersTableLastNameColumn = "lname";
    public final static String usersTablePhoneColumn = "phone";
    public final static String usersTableDOBColumn = "dob";
    public final static String usersTableAddressColumnColumn = "address";
    
    //Items Table
    public final static String itemsTableName = "waynne_sparc_items";
    public final static int itemsTableColumnsCount = 14;
    
    public final static String itemsTableUidColumn = "item_uid";
    public final static String itemsTableNameColumn = "item_name";
    public final static String itemsTableDescriptionColumn = "item_description";
    public final static String itemsTableAvailableQuantityColumn = "available_quantity";
    public final static String itemsTableItemPriceColumn = "item_price";
    public final static String itemsTableItemCategoryColumn = "item_category";
    public final static String itemsTableItemSubCategoryColumn = "item_sub_category";
    public final static String itemsTableIsOnSaleColumn = "is_on_sale";
    public final static String itemsTableBeforeSalePriceColumn = "before_sale_price";
    public final static String itemsTableSaleBeginDateColumn = "sale_begin_date";
    public final static String itemsTableSaleEndDateColumn = "sale_end_date";
    public final static String itemsTablePathToMainImageColumn = "path_to_main_image";
    public final static String itemsPathsToOtherImagesColumn = "paths_to_other_images";
    public final static String itemsDateTimeAddedColumn = "date_time_added";
    
    //UnprocessedOrders Table
    public final static String unprocessedOrdersTableName = "waynne_sparc_unprocessed_orders";
    public final static int unprocessedOrdersTableColumnsCount = 12;
    
    public final static String unprocessedOrdersTableOrderUidColumn = "order_uid";
    public final static String unprocessedOrdersTableItemUidColumn = "item_uid";
    public final static String unprocessedOrdersTableItemNameColumn = "item_name";
    public final static String unprocessedOrdersTableCustomerUsernameColumn = "customer_username";
    public final static String unprocessedOrdersTableQuantityColumn = "quantity";
    public final static String unprocessedOrdersTableCostPerItemColumn = "cost_per_item";
    public final static String unprocessedOrdersTableDateTimeOfOrderColumn = "date_time_of_order";
    public final static String unprocessedOrdersTableShippingAddressColumn = "shipping_address";
    public final static String unprocessedOrdersTableShippingTypeColumn = "shipping_type";
    public final static String unprocessedOrdersTableShippingCostColumn = "shipping_cost";
    public final static String unprocessedOrdersTableHasCouponColumn = "has_coupon";
    public final static String unprocessedOrdersTableCouponValueColumn = "coupon_value";
    
    //ProcessedOrders Table
    public final static String processedOrdersTableName = "waynne_sparc_processed_orders";
    public final static int processedOrdersTableColumnsCount = 14;
    
    public final static String processedOrdersTableOrderUidColumn = "order_uid";
    public final static String processedOrdersTableItemUidColumn = "item_uid";
    public final static String processedOrdersTableItemNameColumn = "item_name";
    public final static String processedOrdersTableCustomerUsernameColumn = "customer_username";
    public final static String processedOrdersTableQuantityColumn = "quantity";
    public final static String processedOrdersTableCostPerItemColumn = "cost_per_item";
    public final static String processedOrdersTableDateTimeOfOrderColumn = "date_time_of_order";
    public final static String processedOrdersTableDateTimeOfProcessingColumn = "date_time_of_processing";
    public final static String processedOrdersTableShippingAddressColumn = "shipping_address";
    public final static String processedOrdersTableShippingTypeColumn = "shipping_type";
    public final static String processedOrdersTableShippingCostColumn = "shipping_cost";
    public final static String processedOrdersTableHasCouponColumn = "has_coupon";
    public final static String processedOrdersTableCouponValueColumn = "coupon_value";
    public final static String processedOrdersTableProcessedByColumn = "order_processed_by";
    
    //Unused Coupons Table
    public final static String unusedCouponsTableName = "waynne_sparc_unused_coupons";
    public final static int unusedCouponsTableColumnsCount = 5;
    
    public final static String unusedCouponsTableCouponCodeColumn = "coupon_code";
    public final static String unusedCouponsTableCouponCategoryColumn = "coupon_category";
    public final static String unusedCouponsTableCouponValueColumn = "coupon_value";
    public final static String unusedCouponsTableMinOrderValueColumn = "min_order_value";
    public final static String unusedCouponsTableCreatedByColumn = "created_by";
    
    //Used Coupons Table
    public final static String usedCouponsTableName = "waynne_sparc_used_coupons";
    public final static int usedCouponsTableColumnsCount = 7;
    
    public final static String usedCouponsTableCouponCodeColumn = "coupon_code";
    public final static String usedCouponsTableCouponCategoryColumn = "coupon_category";
    public final static String usedCouponsTableCouponValueColumn = "coupon_value";
    public final static String usedCouponsTableMinOrderValueColumn = "min_order_value";
    public final static String usedCouponsTableUsernameOfWhoClaimedColumn = "username_of_who_claimed";
    public final static String usedCouponsTableCreatedByColumn = "created_by";
    public final static String usedCouponsTableConfirmedByColumn = "confirmed_by";
    
    //Carts Table
    public final static String cartsTableName = "waynne_sparc_carts";
    public final static int cartsTableColumnsCount = 2;
    
    public final static String cartsTableUsernameColumn = "username";
    public final static String cartsTableItemsInCartColumn = "items_in_cart";
    
    
    public final static String changePasswordOldPassword = "old_password";
    public final static String changePasswordNewPassword = "new_password";
    public final static String changePasswordReNewPassword = "re_new_password";
    
    
    //General Strings
    public final static String stringConcatDelimiter = "-#-";
    public final static String currentUser = "current_user";
    public final static String currentUserType = "current_user_type";
    public final static String currentConnection = "current_connection";
    public final static String orderProcessedString = "PROCESSED";
    public final static String orderNotProcessedString = "NOT_PROCESSED";
    
    //Shopping Categories
    public final static String categoryAnyName = "any";
    public final static String categoryClothingName = "clothing";
    public final static String categoryBagsAndBeautyName = "bags_and_beauty";
    public final static String categoryAccessoriesAndElectronicsName = "accessories_and_electronics";
    //Sub Categories
    public final static String subCategoryOther = "other";
    public final static String subCategoryDresses = "dresses";
    public final static String subCategoryTops = "tops";
    public final static String subCategorySportWears = "sport_wears";
    public final static String subCategoryJeans = "jeans";
    public final static String subCategoryShorts = "shorts";
    public final static String subCategoryTrousersAndLeggings = "trousers_and_leggings";
    public final static String subCategorySkirt = "skirt";
    public final static String subCategoryDuoSets = "duo_sets";
    public final static String subCategoryJumpsuitsAndPlaysuits = "jumpsuits_and_playsuits";
    public final static String subCategoryBags = "bags";
    public final static String subCategoryAfricanPrints = "african_prints";
    public final static String subCategoryJewelry = "jewelry";
    public final static String subCategoryHair = "hair";
    public final static String subCategoryBeauty = "beauty";
    public final static String subCategoryGifts = "gifts";
    public final static String subCategoryElectronics = "electronics";
    public final static String subCategoryToolsAndAccessories = "tools_and_accessories";
    
    public final static String pathToGenericItemImage = "";
    public final static String defaultDateValue = "2001-01-10";
    
    //Toast
    public final static String accountCreationSuccesful = "Successfully created account.";
    public final static String accountCreationFailed = "Failed creating account.";
    
    //Enums
    public final static String customerTypeName = "CUSTOMER";
    public final static String adminTypeName = "ADMIN";
    public final static String superAdminTypeName = "SUPER_ADMIN";
    public final static String guestTypeName = "GUEST";
    public final static String checkboxOnName = "ON";
    
    //pages
    public final static String homePageName = "index.jsp";
    public final static String loginPageName = "login.jsp";
    public final static String signupPageName = "login.jsp";
    public final static String cartPageName = "cart.jsp";
    
    public final static String adminIndexPageName = "admin_index.jsp";
    public final static String adminHomePageName = "admin_home.jsp";
    public final static String adminAddPageName = "admin_add.jsp";
    public final static String adminRegisterPageName = "admin_registration.jsp";
    public final static String adminSettingsPageName = "admin_settings.jsp";
    public final static String adminForgotPasswordPageName = "admin_forgotpassword.jsp";
    public final static String changePasswordPageName = "change-password.html";
    
    
    public final static int defaultUIDLength = 12;
    public final static String itemToRemoveFromCart = "itemToRemoveFromCart";
    public final static String flatRateShippingName = "FLAT_RATE_SHIPPING";
    public final static String bestWayShippingName = "BEST_WAY_SHIPPING";
    public final static double flatRateShippingCost = 15.0;
    public final static double bestWayRateShippingCost = 20.0;
}
