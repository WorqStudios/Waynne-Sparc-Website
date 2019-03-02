<%@ page import="com.waynnesparc.structs.ItemEntry" %>
<%@ page import="com.waynnesparc.utils.CartUtil" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Porto - Wynne Sparc Co Ltd</title>

    <meta name="keywords" content="HTML5 Template"/>
    <meta name="description" content="Porto - Bootstrap eCommerce Template">
    <meta name="author" content="SW-THEMES">

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="assets/images/icons/favicon.ico">

    <!-- Plugins CSS File -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <!-- Main CSS File -->
    <link rel="stylesheet" href="assets/css/style.min.css">
</head>
<body>
<div class="page-wrapper">
    <div class="social-icons social-icons-fixed">
        <a href="#" class="social-icon"><i class="icon-facebook"></i></a>
        <a href="#" class="social-icon"><i class="icon-instagram"></i></a>
        <a href="#" class="social-icon"><i class="icon-twitter"></i></a>
    </div><!-- End .social-icons -->

    <header class="header">
        <div class="header-middle sticky-header">
            <div class="container-fluid">
                <div class="header-left">
                    <a href="index.jsp" class="logo">
                        <img src="assets/images/logomain.png" alt="Porto Logo">
                    </a>
                </div><!-- End .header-left -->

                <div class="header-right">
                    <nav class="main-nav">
                        <ul class="menu sf-arrows">
                            <li class="active"><a href="index.jsp">Home</a></li>
                            <li class="megamenu-container">
                            </li>
                            <li class="megamenu-container">
                                <a href="#" class="sf-with-ul">Products</a>
                                <div class="megamenu" style="background-image: url('assets/images/menu-bg.png');">
                                    <div class="row">
                                        <div class="col-lg-10 col-xl-8">
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="menu-title">
                                                        <a href="#">Clothing</a>
                                                    </div>
                                                    <ul>
                                                        <li><a href="category-banner-full-width.html">Dresses<span
                                                                class="tip tip-hot">Hot!</span></a></li>
                                                        <li><a href="category-banner-boxed-slider.html">Tops</a></li>
                                                        <li><a href="category-banner-boxed-image.html">Sportwear</a>
                                                        </li>
                                                        <li><a href="category.jsp">Jeans</a></li>
                                                        <li><a href="category-sidebar-right.html">Shorts</a></li>
                                                        <li><a href="category-flex-grid.html">Trousers & Leggings</a>
                                                        </li>
                                                        <li><a href="category-horizontal-filter1.html">Skirt</a></li>
                                                        <li><a href="category-horizontal-filter2.html">Duo Set</a></li>
                                                        <li><a href="category-horizontal-filter2.html">Jumpsuit & Play
                                                            Suits</a></li>
                                                </div><!-- End .col-lg-2 -->
                                                <div class="col-lg-4">
                                                    <div class="menu-title">
                                                        <a href="#">Bags & Beauty</a>
                                                    </div>
                                                    <ul>
                                                        <li><a href="category-infinite-scroll.html">View all Bags</a>
                                                        </li>
                                                        <li><a href="category-8col.html">African Prints</a></li>
                                                        <li><a href="category-3col.html"> Jewelry</a></li>
                                                        <li><a href="category-5col.html">Hair</a></li>
                                                        <li><a href="category-6col.html">Beauty</a></li>
                                                    </ul>
                                                </div><!-- End .col-lg-2 -->
                                                <div class="col-lg-4">
                                                    <div class="menu-title">
                                                        <a href="#">Accessories & Electronics</a>
                                                    </div>
                                                    <ul>
                                                        <li><a href="category.jsp">Gifts <span
                                                                class="tip tip-new">New</span></a></li>
                                                        <li><a href="category-7col.html">Electronics</a></li>
                                                        <li><a href="product-grid-layout.html">Tools & Accessories</a>
                                                        </li>
                                                    </ul>
                                                </div><!-- End .col-lg-2 -->
                                            </div><!-- End .row -->
                                        </div><!-- End .col-lg-10 -->
                                    </div><!-- End .row -->
                                </div><!-- End .megamenu -->
                            </li>
                            <li>
                                <a href="#" class="sf-with-ul">My Menue</a>

                                <ul>


                                    <li><a href="cart_head.jsp">Shopping Cart</a></li>
                                    <li><a href="#">Checkout<span></a>
                                        <ul>
                                            <li><a href="checkout-shipping.jsp">Checkout Shipping</a></li>
                                            <li><a href="checkout-review.jsp"> Review Payment</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Dashboard</a>
                                        <ul>
                                            <li><a href="dashboard.jsp">Dashboard</a></li>
                                            <li><a href="my-account.jsp">My Account</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="contact.jsp">Contact Us</a></li>
                            <li><a href="about.jsp">About Us</a></li>


                        </ul>
                        </li>
                        </ul>
                    </nav>

                    <button class="mobile-menu-toggler" type="button">
                        <i class="icon-menu"></i>
                    </button>


                    <div class="header-search">
                        <a href="#" class="search-toggle" role="button">
                            <i class="icon-search-2"></i><span class="search-text">Search</span></a>
                        <div class="header-search-wrapper">
                            <form action="#" method="get">
                                <input type="search" class="form-control" name="q" id="q" placeholder="Search..."
                                       required>
                                <button class="btn" type="submit"><i class="icon-search-2"></i></button>
                            </form>
                        </div><!-- End .header-search-wrapper -->
                    </div><!-- End .header-search -->
                </div><!-- End .header-dropdowns -->




                <%!
                    ArrayList<ItemEntry> allItems;
                    int allItemsCount;
                    int currentIndex = 0;
                %>

                <%
                    try
                    {
                        allItems = CartUtil.getAllCartItems();
                    } catch (SQLException e)
                    {
                        e.printStackTrace();
                    }

                    allItemsCount = allItems.size();
                %>


                <div class="dropdown cart-dropdown">
                    <a href="#" class="dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true"
                       aria-expanded="false" data-display="static">
                        <i class="icon-bag-1"></i>
                        <span class="cart-text"><span class="cart-count">

                            <%out.print(allItemsCount);%>

                        </span> Items on bag</span>
                    </a>

                    <div class="dropdown-menu">
                        <div class="dropdownmenu-wrapper">
                            <a href="#" title="Clear Products" class="cart-clear-btn">
                                <i class="icon-cancel"></i>
                            </a>
                            <div class="dropdown-cart-products">


                                <% for (int i = 0; i < CartUtil.getAllCartItemsUIDs().size(); i++)
                                {
                                    currentIndex = i;
                                    out.print(" <div class=\"product\">\n" +
                                            "                                            <figure class=\"product-image-container\">\n" +
                                            "                                                <a href=\"product.jsp\" class=\"product-image\">\n" +
                                            "                                                    <img src=\"");
                                    out.print(allItems.get(currentIndex).pathToMainImage);
                                    out.print("\" alt=\"product\">\n" +
                                            "                                                </a>\n" +
                                            "                                            </figure>\n" +
                                            "                                            <div class=\"product-details\">\n" +
                                            "                                                <h4 class=\"product-title\">\n" +
                                            "                                                    <a href=\"product.jsp\">");

                                    out.print(allItems.get(currentIndex).name);
                                    out.print("</a>\n" +
                                            "                                                </h4>\n" +
                                            "\n" +
                                            "                                                <div class=\"price-box\">");

                                    if (allItems.get(i).isOnSale == 1)
                                    {
                                        out.print("<span class=\"old-price\">CD ");
                                        out.print(allItems.get(i).beforeSalePrice);
                                        out.print("</span>");
                                    }
                                    out.print("<span class=\"product-price\">CD ");
                                    out.print(allItems.get(i).price);
                                    out.print("</span>");

                                    //out.print(allItems.get(currentIndex).price);

                                    out.print("</div><!-- End .price-box -->\n" +
                                            "                                            </div><!-- End .product-details -->\n" +
                                            "                                        </div><!-- End .product -->\n");
                                }
                                %>
                            </div><!-- End .cart-product -->






                            <div class="dropdown-cart-action">
                                    <a href="cart.jsp" class="btn">View Cart</a>
                                    <a href="checkout-shipping.html" class="btn">Checkout</a>
                                </div><!-- End .dropdown-cart-total -->
                            </div><!-- End .dropdownmenu-wrapper -->
                        </div><!-- End .dropdown-menu -->
                    </div><!-- End .dropdown -->


                </div><!-- End .header-right -->
            </div><!-- End .container-fluid -->
        </div><!-- End .header-middle -->
    </header><!-- End .header -->

    <main class="main">
        <nav aria-label="breadcrumb" class="breadcrumb-nav">
            <div class="container-fluid">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                    <li class="breadcrumb-item"><a href="index.jsp">My Menue</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Checkout Review</li>
                </ol>
            </div><!-- End .container-fluid -->
        </nav>

        <div class="page-header">
            <div class="container">
                <h1>Checkout</h1>
            </div><!-- End .container -->
        </div><!-- End .page-header -->

        <div class="container">
            <ul class="checkout-progress-bar">
                <li>
                    <span>Shipping</span>
                </li>
                <li class="active">
                    <span>Review &amp; Payments</span>
                </li>
            </ul>
            <div class="row">


                <div class="col-lg-4">
                    <div class="order-summary">
                        <h3>Summary</h3>

                        <h4>
                            <a data-toggle="collapse" href="#order-cart-section" class="collapsed" role="button"
                               aria-expanded="false" aria-controls="order-cart-section">

                                <%out.print(allItemsCount + "  products in Cart");%>

                            </a>
                        </h4>

                        <div class="collapse" id="order-cart-section">
                            <table class="table table-mini-cart">
                                <tbody>
                                <tr>

                                        <% for (int i = 0; i < CartUtil.getAllCartItemsUIDs().size(); i++)
                                    {
                                        out.print("<td class=\"product-col\">\n" +
                                                "                                        <figure class=\"product-image-container\">\n" +
                                                "                                            <a href=\"product.jsp\" class=\"product-image\">\n" +
                                                "                                                <img src=\"");
                                        out.print(allItems.get(i).pathToMainImage);
                                        out.print("\" alt=\"product\">");
                                        out.print("</a>\n" +
"                                        </figure>\n" +
"                                        <div>\n" +
"                                            <h2 class=\"product-title\">\n" +
"                                                <a href=\"product.jsp\">");
                                        out.print(allItems.get(i).name);
                                        out.print("</a>\n" +
"                                            </h2>\n" +
"\n" +
"                                            <span class=\"product-qty\">Qty: ");
                                        out.print(allItems.get(i).quantity);
                                        out.print("</span>\n" +
                                                "                        </div>\n" +
                                                "                        </td>\n" +
                                                "                        <td class=\"price-col\">CD ");
                                        out.print(allItems.get(i).price);
                                        out.print("</td>\n" +
"                        </tr>");
                                        out.print("");
                                        out.print("");
                                    }
                                    %>


                                <tr>

                                </tr>
                                </tbody>
                            </table>
                        </div><!-- End #order-cart-section -->
                    </div><!-- End .order-summary -->

                    <div class="checkout-info-box">
                        <h3 class="step-title">Ship To:
                            <a href="#" title="Edit" class="step-title-edit"><span class="sr-only">Edit</span><i
                                    class="icon-pencil"></i></a>
                        </h3>

                        <address>
                            Desmond Mason <br>
                            123 Street Name, City, USA <br>
                            Los Angeles, California 03100 <br>
                            United States <br>
                            (123) 456-7890
                        </address>
                    </div><!-- End .checkout-info-box -->

                    <div class="checkout-info-box">
                        <h3 class="step-title">Shipping Method:
                            <a href="#" title="Edit" class="step-title-edit"><span class="sr-only">Edit</span><i
                                    class="icon-pencil"></i></a>
                        </h3>

                        <p>Flat Rate - Fixed</p>
                    </div><!-- End .checkout-info-box -->
                </div><!-- End .col-lg-4 -->

                <div class="col-lg-8 order-lg-first padding-right-lg">
                    <div class="checkout-payment">
                        <h2 class="step-title">Payment Method:</h2>

                        <h4>Check / Money order</h4>

                        <div class="form-group-custom-control">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="change-bill-address" value="1">
                                <label class="custom-control-label" for="change-bill-address">My billing and shipping
                                    address are the same</label>
                            </div><!-- End .custom-checkbox -->
                        </div><!-- End .form-group -->

                        <div id="checkout-shipping-address">
                            <address>
                                Desmond Mason <br>
                                123 Street Name, City, USA <br>
                                Los Angeles, California 03100 <br>
                                United States <br>
                                (123) 456-7890
                            </address>
                        </div><!-- End #checkout-shipping-address -->

                        <div id="new-checkout-address" class="show">
                            <form action="#">
                                <div class="form-group required-field">
                                    <label>First Name </label>
                                    <input type="text" class="form-control" required>
                                </div><!-- End .form-group -->

                                <div class="form-group required-field">
                                    <label>Last Name </label>
                                    <input type="text" class="form-control" required>
                                </div><!-- End .form-group -->

                                <div class="form-group">
                                    <label>Company </label>
                                    <input type="text" class="form-control">
                                </div><!-- End .form-group -->

                                <div class="form-group required-field">
                                    <label>Street Address </label>
                                    <input type="text" class="form-control" required>
                                    <input type="text" class="form-control" required>
                                </div><!-- End .form-group -->

                                <div class="form-group required-field">
                                    <label>City </label>
                                    <input type="text" class="form-control" required>
                                </div><!-- End .form-group -->

                                <div class="form-group">
                                    <label>State/Province</label>
                                    <div class="select-custom">
                                        <select class="form-control">
                                            <option value="CA">California</option>
                                            <option value="TX">Texas</option>
                                        </select>
                                    </div><!-- End .select-custom -->
                                </div><!-- End .form-group -->

                                <div class="form-group required-field">
                                    <label>Zip/Postal Code </label>
                                    <input type="text" class="form-control" required>
                                </div><!-- End .form-group -->

                                <div class="form-group">
                                    <label>Country</label>
                                    <div class="select-custom">
                                        <select class="form-control">
                                            <option value="USA">United States</option>
                                            <option value="Turkey">Turkey</option>
                                            <option value="China">China</option>
                                            <option value="Germany">Germany</option>
                                        </select>
                                    </div><!-- End .select-custom -->
                                </div><!-- End .form-group -->

                                <div class="form-group required-field">
                                    <label>Phone Number </label>
                                    <div class="form-control-tooltip">
                                        <input type="tel" class="form-control" required>
                                        <span class="input-tooltip" data-toggle="tooltip"
                                              title="For delivery questions." data-placement="right"><i
                                                class="icon-question-circle"></i></span>
                                    </div><!-- End .form-control-tooltip -->
                                </div><!-- End .form-group -->

                                <div class="form-group-custom-control">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="address-save">
                                        <label class="custom-control-label" for="address-save">Save in Address
                                            book</label>
                                    </div><!-- End .custom-checkbox -->
                                </div><!-- End .form-group -->
                            </form>
                        </div><!-- End #new-checkout-address -->

                        <div class="clearfix">
                            <a href="#" class="btn btn-primary float-right">Place Order</a>
                        </div><!-- End .clearfix -->
                    </div><!-- End .checkout-payment -->

                    <div class="checkout-discount">
                        <h4>
                            <a data-toggle="collapse" href="#checkout-discount-section" class="collapsed" role="button"
                               aria-expanded="false" aria-controls="checkout-discount-section">Apply Discount Code</a>
                        </h4>

                        <div class="collapse" id="checkout-discount-section">
                            <form action="#">
                                <input type="text" class="form-control form-control-sm"
                                       placeholder="Enter discount code" required>
                                <button class="btn btn-sm btn-outline-secondary" type="submit">Apply Discount</button>
                            </form>
                        </div><!-- End .collapse -->
                    </div><!-- End .checkout-discount -->
                </div><!-- End .col-lg-8 -->
            </div><!-- End .row -->
        </div><!-- End .container -->

        <div class="mb-6"></div><!-- margin -->
    </main><!-- End .main -->

    <footer class="footer">
        <div class="footer-middle">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-2 col-md-4 col-sm-6">
                        <div class="widget">
                            <h4 class="widget-title">Menu</h4>

                            <ul class="links">
                                <li><a href="about.jsp">About Us</a></li>
                                <li><a href="my-account.jsp">My Account</a></li>
                                <li><a href="#">Orders History</a></li>
                                <li><a href="#">Advanced Search</a></li>
                            </ul>
                        </div><!-- End .widget -->
                    </div><!-- End .col-lg-2 -->

                    <div class="col-lg-2 col-md-4 col-sm-6">
                        <div class="widget">
                            <h4 class="widget-title">Features</h4>
                            <ul class="links">
                                <li><a href="#">Page 1 - Lorem ipsum dolor</a></li>
                                <li><a href="#">Page 2 - Consectetur</a></li>
                                <li><a href="#">Page 3 - Adipiscing elit</a></li>
                                <li><a href="#">Page 4 - Integer iaculis nisl</a></li>
                                <li><a href="#">Page 5 - Pretium ligula ornare</a></li>
                                <li><a href="#">Page 6 - Pellentesque</a></li>
                            </ul>
                        </div><!-- End .widget -->
                    </div><!-- End .col-lg-2 -->

                    <div class="col-lg-2 col-md-4 col-sm-6">
                        <div class="widget">
                            <h4 class="widget-title">Contact Us</h4>
                            <ul class="contact-info">
                                <li>
                                    <span class="contact-info-label">Address:</span>123 Street Name, City, <br>United
                                    states
                                </li>
                                <li>
                                    <span class="contact-info-label">Phone:</span><a href="tel:">(123) 456-7890</a>
                                </li>
                                <li>
                                    <span class="contact-info-label">Email:</span> <a href="mailto:mail@example.com">mail@example.com</a>
                                </li>
                                <li>
                                    <span class="contact-info-label">Working Days/Hours:</span>
                                    Mon - Sun / 9:00AM - 8:00PM <br>
                                    <span class="work-status">Open now</span>
                                </li>
                            </ul>
                        </div><!-- End .widget -->
                    </div><!-- End .col-lg-2 -->

                    <div class="col-lg-2 col-md-4 col-sm-6">
                        <div class="widget">
                            <h4 class="widget-title">Follow Us</h4>

                            <ul class="social-info">
                                <li>
                                    <a href="#" target="_blank">
                                        <i class="icon-facebook"></i>
                                        <span>/portoeccomerce</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" target="_blank">
                                        <i class="icon-instagram"></i>
                                        <span>/porto</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" target="_blank">
                                        <i class="icon-twitter"></i>
                                        <span>/portoofficial</span>
                                    </a>
                                </li>
                            </ul>
                        </div><!-- End .widget -->
                    </div><!-- End .col-lg-2 -->

                    <div class="col-lg-2 col-md-4 col-sm-6">
                        <div class="widget widget-newsletter">
                            <h4 class="widget-title">Join Us</h4>

                            <p>Get all the latest information on Events, Sales and Offers. Sign up for newsletter
                                today.</p>

                            <form action="#">
                                <input type="email" class="form-control" placeholder="YOUR EMAIL" required>

                                <input type="submit" class="btn" value="Send">
                            </form>
                        </div><!-- End .widget -->
                    </div><!-- End .col-lg-2 -->

                </div><!-- End .row -->
            </div><!-- End .container-fluid -->
        </div><!-- End .footer-middle -->
        <div class="container-fluid">
            <div class="footer-bottom">
                <p class="footer-copyright">Copyright 2018 WYNNE SPARC. All Rights Reserved.</p>

                <img src="assets/images/payments.png" alt="payment methods" class="footer-payments">
            </div><!-- End .footer-bottom -->
        </div><!-- End .container-fluid -->
    </footer><!-- End .footer -->
</div><!-- End .page-wrapper -->

<div class="mobile-menu-overlay"></div><!-- End .mobil-menu-overlay -->

<div class="mobile-menu-container">
    <div class="mobile-menu-wrapper">
        <span class="mobile-menu-close"><i class="icon-cancel"></i></span>
        <nav class="mobile-nav">
            <ul class="mobile-menu">

                <li class="active"><a href="index.jsp">Home</a></li>

                <li>
                    <a href="#">Products</a>
                    <ul>
                        <li>
                            <a href="#">Clothing</a>
                            <ul>
                                <li><a href="category-banner-full-width.html">Dresses</a></li>
                                <li><a href="category-banner-boxed-slider.html">Tops</a></li>
                                <li><a href="category-banner-boxed-image.html">Sportwear</a></li>
                                <li><a href="category.jsp">Jeans</a></li>
                                <li><a href="category-sidebar-right.html">Trousers & Leggings</a></li>
                                <li><a href="category-flex-grid.html">Skirt</a></li>
                                <li><a href="category-horizontal-filter1.html">Duo Set</a></li>
                                <li><a href="category-infinite-scroll.html">Jumpsuit & Play Suits<span
                                        class="tip tip-new">New</span></a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">Bags & Beauty</a>
                            <ul>
                                <li><a href="category-3col.html">View all Bags</a></li>
                                <li><a href="category.jsp">African Prints</a></li>
                                <li><a href="category-5col.html">Jewelry</a></li>
                                <li><a href="category-6col.html">Hair</a></li>
                                <li><a href="category-7col.html">Beauty</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">Accesories & Electronics</a>
                            <ul>
                                <li><a href="category-8col.html">Gifts</a></li>
                                <li><a href="category.jsp">Electronics</a></li>
                                <li><a href="category-sidebar-right.html">Tools & Accessories</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">My Menue<span></a>
                    <ul>
                        <li><a href="cart_head.jsp">Shopping Cart</a></li>
                        <li>
                            <a href="#">Checkout</a>
                            <ul>
                                <li><a href="checkout-shipping.jsp">Checkout Shipping</a></li>
                                <li><a href="checkout-review.jsp">Review Payment</a></li>
                            </ul>
                        </li>
                        <li><a href="forgot-password.html">Forgot Password</a></li>
                    </ul>
                </li>

                <ul>

                </ul>
                </li>
                <li><a href="contact.jsp">Contact Us</a></li>
                <li><a href="about.jsp">About Us</a></li>
            </ul>
        </nav><!-- End .mobile-nav -->


        <div class="social-icons">
            <a href="#" class="social-icon" target="_blank"><i class="icon-facebook"></i></a>
            <a href="#" class="social-icon" target="_blank"><i class="icon-twitter"></i></a>
            <a href="#" class="social-icon" target="_blank"><i class="icon-instagram"></i></a>
        </div><!-- End .social-icons -->
    </div><!-- End .mobile-menu-wrapper -->
</div><!-- End .mobile-menu-container -->

<a id="scroll-top" href="#top" title="Top" role="button"><i class="icon-angle-up"></i></a>

<!-- Plugins JS File -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/plugins.min.js"></script>

<!-- Main JS File -->
<script src="assets/js/main.min.js"></script>
</body>
</html>