<%--
  Created by IntelliJ IDEA.
  User: Khalil Kabara
  Date: 2/8/2019
  Time: 7:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>cart</title>
</head>
<body>

<%@ include file="cart_head.jsp" %>

<%@ page import="com.waynnesparc.structs.ItemEntry" %>
<%@ page import="com.waynnesparc.utils.CartUtil" %>
<%@ page import="java.sql.SQLException" %>


<%
    ArrayList<ItemEntry> allCartItems = null;

    try
    {
        allCartItems = CartUtil.getAllCartItems();
    } catch (SQLException e)
    {
        e.printStackTrace();
    }

    assert allCartItems != null;
    int allCartItemsCount = allCartItems.size();

    GeneralUtility.totalOrderPrice = 0;

    if (allItemsCount > 0)
    {
    for (ItemEntry cartItem : allCartItems)
    {
        GeneralUtility.totalOrderPrice += cartItem.price;

        out.print
                (
                        "</thead>\n" +
                                "                                <tbody>\n" +
                                "                                    <tr class=\"product-row\">\n" +
                                "                                        <td class=\"product-col\">\n" +
                                "                                            <figure class=\"product-image-container\">\n" +
                                "                                                <a href=\"product.jsp\" class=\"product-image\">\n" +
                                "                                                    <img src=\"");
        out.print(cartItem.pathToMainImage);
        out.print(
                "\" alt=\"product\">\n" +
                        "                                                </a>\n" +
                        "                                            </figure>\n" +
                        "                                            <h2 class=\"product-title\">\n" +
                        "                                                <a href=\"product.jsp\">"
        );

//        if (allCartItemsCount > 0)
//        {
        out.print(cartItem.name);


        out.print("</a>\n"
                +
                "                                            </h2>\n"
                +
                "                                        </td>\n"
                +
                "                                        <td>CD "
        );

        out.print(cartItem.price);
//
//        out.print(
//                "</td>\n"
//                        +
//                        "                                        <td>\n"
//                        +
//                        "                                            <input class=\"vertical-quantity form-control\" type=\"text\">\n"
//                        +
//                        "                                        </td>\n"
//                        +
//                        "                                        <td>CD "
//        );
//
//
//        out.print(cartItem.price * 3);

        out.print(
                "</td>\n"
                        +
                        "                                    </tr>\n"
                        +
                        "                                    <tr class=\"product-action-row\">\n"
                        +
                        "                                        <td colspan=\"4\" class=\"clearfix\">\n"
                        +
                        "                                            <div class=\"float-left\">\n"
                        +
                        "                                                <a href=\"#\" class=\"btn-move\">Move to Wishlist</a>\n"
                        +
                        "                                            </div><!-- End .float-left -->\n"
                        +
                        "                                            \n"
                        +
                        "                                            <div class=\"float-right\">\n"
                        +
                        "                                                <!--\n"
                        +
                        "                                                <a href=\"#\" title=\"Edit product\" class=\"btn-edit\"><span class=\"sr-only\">Edit</span><i class=\"icon-pencil\"></i></a>\n"
                        +
                        "                                                -->\n"
                        +
                        "                                                <form action=\"removeCartItemServlet\" method=\"get\">\n"
        );

        out.print("<input type=\"text\" hidden name=\"itemToRemoveFromCart\" value=\"");
        out.print(cartItem.uid);
        out.print("\"/>");

        out.print("<input type=\"submit\"  name=\"removeItem\" value=\"Remove\"/>");

        out.print("</form>\n");


        out.print("</div><!-- End .float-right -->\n"
                +
                "                                        </td>\n"
                +
                "                                    </tr>\n"
                +
                "\n"
        );
    }
    out.print(
            "                                </tbody>\n"
                    +
                    "\n"
                    +
                    "                                <tfoot>\n"
                    +
                    "                                    <tr>\n"
                    +
                    "                                        <td colspan=\"4\" class=\"clearfix\">\n"
                    +
                    "                                            <div class=\"float-left\">\n"
                    +
                    "                                                <a href=\"category.jsp\" class=\"btn btn-outline-secondary\">Continue Shopping</a>\n"
                    +
                    "                                            </div><!-- End .float-left -->\n"
                    +
                    "\n"
                    +
                    "                                            <div class=\"float-right\">\n"
                    +
                    "                                                <a href=\"#\" class=\"btn btn-outline-secondary btn-clear-cart\">Clear Shopping Cart</a>\n"
                    +
                    "                                                <a href=\"#\" class=\"btn btn-outline-secondary btn-update-cart\">Update Shopping Cart</a>\n"
                    +
                    "                                            </div><!-- End .float-right -->\n"
                    +
                    "                                        </td>\n"
                    +
                    "                                    </tr>\n"
                    +
                    "                                </tfoot>\n"
                    +
                    "                            </table>\n"
                    +
                    "                        </div><!-- End .cart-table-container --> \n" +
                    "\n" +
                    "<div class=\"cart-discount\">\n" +
                    "    <h4>Apply Discount Code</h4>\n" +
                    "    <form action=\"#\">\n" +
                    "        <div class=\"input-group\">\n" +
                    "            <input type=\"text\" class=\"form-control form-control-sm\" placeholder=\"Enter discount code\"  required>\n" +
                    "            <div class=\"input-group-append\">\n" +
                    "                <button class=\"btn btn-sm btn-primary\" type=\"submit\">Apply Discount</button>\n" +
                    "            </div>\n" +
                    "        </div><!-- End .input-group -->\n" +
                    "    </form>\n" +
                    "</div><!-- End .cart-discount -->\n" +
                    "</div><!-- End .col-lg-8 -->\n" +


                    "\n" +
                    "\n" +
                    "\n" +
                    "<div class=\"col-lg-4\">\n" +
                    "    <div class=\"cart-summary\">\n" +
                    "        <h3>Summary</h3>\n" +
                    "\n" +
                    "        <h4>\n" +
                    "            <a data-toggle=\"collapse\" href=\"#total-estimate-section\" class=\"collapsed\" role=\"button\" aria-expanded=\"false\" aria-controls=\"total-estimate-section\">Estimate Shipping and Tax</a>\n" +
                    "        </h4>\n" +
                    "\n" +
                    "        <div class=\"collapse\" id=\"total-estimate-section\">\n" +
                    "            <form action=\"#\">\n" +
                    "                <div class=\"form-group form-group-sm\">\n" +
                    "                    <label>Country</label>\n" +
                    "                    <div class=\"select-custom\">\n" +
                    "                        <select class=\"form-control form-control-sm\">\n" +
                    "                            <option value=\"USA\">United States</option>\n" +
                    "                            <option value=\"Turkey\">Turkey</option>\n" +
                    "                            <option value=\"China\">China</option>\n" +
                    "                            <option value=\"Germany\">Germany</option>\n" +
                    "                        </select>\n" +
                    "                    </div><!-- End .select-custom -->\n" +
                    "                </div><!-- End .form-group -->\n" +
                    "\n" +
                    "                <div class=\"form-group form-group-sm\">\n" +
                    "                    <label>State/Province</label>\n" +
                    "                    <div class=\"select-custom\">\n" +
                    "                        <select class=\"form-control form-control-sm\">\n" +
                    "                            <option value=\"CA\">California</option>\n" +
                    "                            <option value=\"TX\">Texas</option>\n" +
                    "                        </select>\n" +
                    "                    </div><!-- End .select-custom -->\n" +
                    "                </div><!-- End .form-group -->\n" +
                    "\n" +
                    "                <div class=\"form-group form-group-sm\">\n" +
                    "                    <label>Zip/Postal Code</label>\n" +
                    "                    <input type=\"text\" class=\"form-control form-control-sm\">\n" +
                    "                </div><!-- End .form-group -->\n" +
                    "\n" +
                    "                <div class=\"form-group form-group-custom-control\">\n" +
                    "                    <label>Flat Way</label>\n" +
                    "                    <div class=\"custom-control custom-checkbox\">\n" +
                    "                        <input type=\"checkbox\" class=\"custom-control-input\" id=\"flat-rate\">\n" +
                    "                        <label class=\"custom-control-label\" for=\"flat-rate\">Fixed $5.00</label>\n" +
                    "                    </div><!-- End .custom-checkbox -->\n" +
                    "                </div><!-- End .form-group -->\n" +
                    "\n" +
                    "                <div class=\"form-group form-group-custom-control\">\n" +
                    "                    <label>Best Rate</label>\n" +
                    "                    <div class=\"custom-control custom-checkbox\">\n" +
                    "                        <input type=\"checkbox\" class=\"custom-control-input\" id=\"best-rate\">\n" +
                    "                        <label class=\"custom-control-label\" for=\"best-rate\">Table Rate $15.00</label>\n" +
                    "                    </div><!-- End .custom-checkbox -->\n" +
                    "                </div><!-- End .form-group -->\n" +
                    "            </form>\n" +
                    "        </div><!-- End #total-estimate-section -->\n" +
                    "\n" +
                    "        <table class=\"table table-totals\">\n" +
                    "            <tbody>\n" +
                    "            <tr>\n" +
                    "                <td>Subtotal</td>\n" +
                    "<td>CD ");

    out.print(GeneralUtility.totalOrderPrice);

    out.print("</td>\n" +
            "            </tr>\n" +
            "\n" +
            "            <tr>\n" +
            "                <td>Tax</td>\n" +
            "                <td>CD 0.00</td>\n" +
            "            </tr>\n" +
            "            </tbody>\n" +
            "            <tfoot>\n" +
            "            <tr>\n" +
            "                <td>Order Total</td>\n" +
            "                <td>CD ");

    out.print(GeneralUtility.totalOrderPrice);






        out.print("</td>\n" +
                "            </tr>\n" +
                "            </tfoot>\n" +
                "        </table>\n" +
                "\n" +
                "        <div class=\"checkout-methods\">\n" +
                "            <a href=\"checkout-shipping.jsp\" class=\"btn btn-block btn-sm btn-primary\">Go to Checkout</a>\n" +
                "            <a href=\"#\" class=\"btn btn-link btn-block\">Check Out with Multiple Addresses</a>\n" +
                "        </div><!-- End .checkout-methods -->\n" +
                "</div><!-- End .cart-summary -->\n" +
                "</div><!-- End .col-lg-4 -->\n" +
                "</div><!-- End .row -->\n" +
                "</div><!-- End .container -->\n" +
                "\n" +
                "<div class=\"mb-6\"></div><!-- margin -->\n" +
                "</main><!-- End .main -->\n" +
                "\n"
        );


        out.print(
                "<footer class=\"footer\">\n" +
                        "    <div class=\"footer-middle\">\n" +
                        "        <div class=\"container-fluid\">\n" +
                        "            <div class=\"row\">\n" +
                        "                <div class=\"col-lg-2 col-md-4 col-sm-6\">\n" +
                        "                    <div class=\"widget\">\n" +
                        "                        <h4 class=\"widget-title\">Menu</h4>\n" +
                        "\n" +
                        "                        <ul class=\"links\">\n" +
                        "                            <li><a href=\"about.jsp\">About Us</a></li>\n" +
                        "                            <li><a href=\"my-account.jsp\">My Account</a></li>\n" +
                        "                            <li><a href=\"#\">Orders History</a></li>\n" +
                        "                            <li><a href=\"#\">Advanced Search</a></li>\n" +
                        "                        </ul>\n" +
                        "                    </div><!-- End .widget -->\n" +
                        "                </div><!-- End .col-lg-2 -->\n" +
                        "\n" +
                        "                <div class=\"col-lg-2 col-md-4 col-sm-6\">\n" +
                        "                    <div class=\"widget\">\n" +
                        "                        <h4 class=\"widget-title\">Features</h4>\n" +
                        "                        <ul class=\"links\">\n" +
                        "                            <li><a href=\"#\">Page 1 - Lorem ipsum dolor</a></li>\n" +
                        "                            <li><a href=\"#\">Page 2 -  Consectetur</a></li>\n" +
                        "                            <li><a href=\"#\">Page 3 - Adipiscing elit</a></li>\n" +
                        "                            <li><a href=\"#\">Page 4 - Integer iaculis nisl</a></li>\n" +
                        "                            <li><a href=\"#\">Page 5 - Pretium ligula ornare</a></li>\n" +
                        "                            <li><a href=\"#\">Page 6 - Pellentesque</a></li>\n" +
                        "                        </ul>\n" +
                        "                    </div><!-- End .widget -->\n" +
                        "                </div><!-- End .col-lg-2 -->\n" +
                        "\n" +
                        "                <div class=\"col-lg-2 col-md-4 col-sm-6\">\n" +
                        "                    <div class=\"widget\">\n" +
                        "                        <h4 class=\"widget-title\">Contact Us</h4>\n" +
                        "                        <ul class=\"contact-info\">\n" +
                        "                            <li>\n" +
                        "                                <span class=\"contact-info-label\">Address:</span>123 Street Name, City, <br>United states\n" +
                        "                            </li>\n" +
                        "                            <li>\n" +
                        "                                <span class=\"contact-info-label\">Phone:</span><a href=\"tel:\">(123) 456-7890</a>\n" +
                        "                            </li>\n" +
                        "                            <li>\n" +
                        "                                <span class=\"contact-info-label\">Email:</span> <a href=\"mailto:mail@example.com\">mail@example.com</a>\n" +
                        "                            </li>\n" +
                        "                            <li>\n" +
                        "                                <span class=\"contact-info-label\">Working Days/Hours:</span>\n" +
                        "                                Mon - Sun / 9:00AM - 8:00PM <br>\n" +
                        "                                <span class=\"work-status\">Open now</span>\n" +
                        "                            </li>\n" +
                        "                        </ul>\n" +
                        "                    </div><!-- End .widget -->\n" +
                        "                </div><!-- End .col-lg-2 -->\n" +
                        "\n" +
                        "                <div class=\"col-lg-2 col-md-4 col-sm-6\">\n" +
                        "                    <div class=\"widget\">\n" +
                        "                        <h4 class=\"widget-title\">Follow Us</h4>\n" +
                        "\n" +
                        "                        <ul class=\"social-info\">\n" +
                        "                            <li>\n" +
                        "                                <a href=\"#\" target=\"_blank\">\n" +
                        "                                    <i class=\"icon-facebook\"></i>\n" +
                        "                                    <span>/portoeccomerce</span>\n" +
                        "                                </a>\n" +
                        "                            </li>\n" +
                        "                            <li>\n" +
                        "                                <a href=\"#\" target=\"_blank\">\n" +
                        "                                    <i class=\"icon-instagram\"></i>\n" +
                        "                                    <span>/porto</span>\n" +
                        "                                </a>\n" +
                        "                            </li>\n" +
                        "                            <li>\n" +
                        "                                <a href=\"#\" target=\"_blank\">\n" +
                        "                                    <i class=\"icon-twitter\"></i>\n" +
                        "                                    <span>/portoofficial</span>\n" +
                        "                                </a>\n" +
                        "                            </li>\n" +
                        "                        </ul>\n" +
                        "                    </div><!-- End .widget -->\n" +
                        "                </div><!-- End .col-lg-2 -->\n" +
                        "\n" +
                        "                <div class=\"col-lg-2 col-md-4 col-sm-6\">\n" +
                        "                    <div class=\"widget widget-newsletter\">\n" +
                        "                        <h4 class=\"widget-title\">Join Us</h4>\n" +
                        "\n" +
                        "                        <p>Get all the latest information on Events, Sales and Offers. Sign up for newsletter today.</p>\n" +
                        "\n" +
                        "                        <form action=\"#\">\n" +
                        "                            <input type=\"email\" class=\"form-control\" placeholder=\"YOUR EMAIL\" required>\n" +
                        "\n" +
                        "                            <input type=\"submit\" class=\"btn\" value=\"Send\">\n" +
                        "                        </form>\n" +
                        "                    </div><!-- End .widget -->\n" +
                        "                </div><!-- End .col-lg-2 -->\n" +
                        "\n" +
                        "            </div><!-- End .row -->\n" +
                        "        </div><!-- End .container-fluid -->\n" +
                        "    </div><!-- End .footer-middle -->\n" +
                        "    <div class=\"container-fluid\">\n" +
                        "        <div class=\"footer-bottom\">\n" +
                        "            <p class=\"footer-copyright\">Copyright 2018 Wynne Sparc. All Rights Reserved.</p>\n" +
                        "\n" +
                        "            <img src=\"assets/images/payments.png\" alt=\"payment methods\" class=\"footer-payments\">\n" +
                        "        </div><!-- End .footer-bottom -->\n" +
                        "    </div><!-- End .container-fluid -->\n" +
                        "</footer><!-- End .footer -->\n" +
                        "</div><!-- End .page-wrapper -->\n" +
                        "\n" +
                        "<div class=\"mobile-menu-overlay\"></div><!-- End .mobil-menu-overlay -->\n" +
                        "\n" +
                        "<div class=\"mobile-menu-container\">\n" +
                        "    <div class=\"mobile-menu-wrapper\">\n" +
                        "        <span class=\"mobile-menu-close\"><i class=\"icon-cancel\"></i></span>\n" +
                        "        <nav class=\"mobile-nav\">\n" +
                        "            <ul class=\"mobile-menu\">\n" +
                        "\n" +
                        "                <li class=\"active\"><a href=\"index.jsp\">Home</a></li>\n" +
                        "\n" +
                        "                <li>\n" +
                        "                    <a href=\"#\">Products</a>\n" +
                        "                    <ul>\n" +
                        "                        <li>\n" +
                        "                            <a href=\"#\">Clothing</a>\n" +
                        "                            <ul>\n" +
                        "                                <li><a href=\"product-banner-dresses.jsp\">Dresses<span class=\"tip tip-hot\">Hot!</span></a></li>\n" +
                        "                                <li><a href=\"product-banner-tops.jsp\">Tops</a></li>\n" +
                        "                                <li><a href=\"product-banner-sportswear.jsp\">Sportwear</a></li>\n" +
                        "                                <li><a href=\"product-banner-jeans.jsp\">Jeans</a></li>\n" +
                        "                                <li><a href=\"product-banner-shorts.jsp\">Shorts</a></li>\n" +
                        "                                <li><a href=\"product-banner-trousers-leggings.jsp\">Trousers & Leggings</a></li>\n" +
                        "                                <li><a href=\"product-banner-skirt.jsp\">Skirt</a></li>\n" +
                        "                                <li><a href=\"product-banner-duoset.jsp\">Duo Set</a></li>\n" +
                        "                                <li><a href=\"product-banner-jumpsuit-playsuit.jsp\">Jumpsuit & Play Suits</a></li>\n" +
                        "                            </ul>\n" +
                        "                        </li>\n" +
                        "                        <li>\n" +
                        "                            <a href=\"#\">Bags & Beauty</a>\n" +
                        "                            <ul>\n" +
                        "                                <li><a href=\"product-banner-viewallbags.jsp\">View all Bags</a></li>\n" +
                        "                                <li><a href=\"product-banner-africanprints.jsp\">African Prints</a></li>\n" +
                        "                                <li><a href=\"product-banner-jewelry.jsp\"> Jewelry</a></li>\n" +
                        "                                <li><a href=\"product-banner-hair.jsp\">Hair</a></li>\n" +
                        "                                <li><a href=\"product-banner-beauty.jsp\">Beauty</a></li>\n" +
                        "                            </ul>\n" +
                        "                        </li>\n" +
                        "                        <li>\n" +
                        "                            <a href=\"#\">Accesories & Electronics</a>\n" +
                        "                            <ul>\n" +
                        "                                <li><a href=\"product-banner-gifts.jsp\">Gifts <span class=\"tip tip-new\">New</span></a></li>\n" +
                        "                                <li><a href=\"product-banner-electronics.jsp\">Electronics</a></li>\n" +
                        "                                <li><a href=\"product-banner-tools-accessories.jsp\">Tools & Accessories</a></li>\n" +
                        "                            </ul>\n" +
                        "                        </li>\n" +
                        "                    </ul>\n" +
                        "                </li>\n" +
                        "                <li>\n" +
                        "                    <a href=\"#\">My Menue<span></a>\n" +
                        "                    <ul>\n" +
                        "                        <li><a href=\"cart_head.jsp\">Shopping Cart</a></li>\n" +
                        "                        <li>\n" +
                        "                            <a href=\"#\">Checkout</a>\n" +
                        "                            <ul>\n" +
                        "                                <li><a href=\"checkout-shipping.jsp\">Checkout Shipping</a></li>\n" +
                        "                                <li><a href=\"checkout-review.jsp\">Review Payment</a></li>\n" +
                        "                            </ul>\n" +
                        "                        </li>\n" +
                        "                        <li><a href=\"forgot-password.html\">Forgot Password</a></li>\n" +
                        "                    </ul>\n" +
                        "                </li>\n" +
                        "\n" +
                        "                <ul>\n" +
                        "\n" +
                        "                </ul>\n" +
                        "                </li>\n" +
                        "                <li><a href=\"contact.jsp\">Contact Us</a></li>\n" +
                        "                <li><a href=\"about.jsp\">About Us</a></li>\n" +

                        "            </ul>\n" +
                        "        </nav><!-- End .mobile-nav -->\n" +
                        "\n" +
                        "        <div class=\"social-icons\">\n" +
                        "            <a href=\"#\" class=\"social-icon\" target=\"_blank\"><i class=\"icon-facebook\"></i></a>\n" +
                        "            <a href=\"#\" class=\"social-icon\" target=\"_blank\"><i class=\"icon-twitter\"></i></a>\n" +
                        "            <a href=\"#\" class=\"social-icon\" target=\"_blank\"><i class=\"icon-instagram\"></i></a>\n" +
                        "        </div><!-- End .social-icons -->\n" +
                        "    </div><!-- End .mobile-menu-wrapper -->\n" +
                        "</div><!-- End .mobile-menu-container -->\n"

        );
    } else {
        out.print("<h1><b>CART IS EMPTY</b></h1>");
    }
%>

<%@ include file="cart_foot.html" %>

</body>
</html>
