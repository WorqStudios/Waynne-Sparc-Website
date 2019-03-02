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

    <title>Wynne Sparc Co Ltd</title>

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
                                                        <li><a href="product-banner-dresses.jsp">Dresses<span
                                                                class="tip tip-hot">Hot!</span></a></li>
                                                        <li><a href="product-banner-tops.jsp">Tops</a></li>
                                                        <li><a href="product-banner-sportswear.jsp">Sportwear</a></li>
                                                        <li><a href="product-banner-jeans.jsp">Jeans</a></li>
                                                        <li><a href="product-banner-shorts.jsp">Shorts</a></li>
                                                        <li><a href="product-banner-trousers-leggings.jsp">Trousers &
                                                            Leggings</a></li>
                                                        <li><a href="product-banner-skirt.jsp">Skirt</a></li>
                                                        <li><a href="product-banner-duoset.jsp">Duo Set</a></li>
                                                        <li><a href="product-banner-jumpsuit-playsuit.jsp">Jumpsuit &
                                                            Play Suits</a></li>
                                                </div><!-- End .col-lg-2 -->
                                                <div class="col-lg-4">
                                                    <div class="menu-title">
                                                        <a href="#">Bags & Beauty</a>
                                                    </div>
                                                    <ul>
                                                        <li><a href="product-banner-viewallbags.jsp">View all Bags</a>
                                                        </li>
                                                        <li><a href="product-banner-africanprints.jsp">African
                                                            Prints</a></li>
                                                        <li><a href="product-banner-jewelry.jsp"> Jewelry</a></li>
                                                        <li><a href="product-banner-hair.jsp">Hair</a></li>
                                                        <li><a href="product-banner-beauty.jsp">Beauty</a></li>
                                                    </ul>
                                                </div><!-- End .col-lg-2 -->
                                                <div class="col-lg-4">
                                                    <div class="menu-title">
                                                        <a href="#">Accessories & Electronics</a>
                                                    </div>
                                                    <ul>
                                                        <li><a href="product-banner-gifts.jsp">Gifts <span
                                                                class="tip tip-new">New</span></a></li>
                                                        <li><a href="product-banner-electronics.jsp">Electronics</a>
                                                        </li>
                                                        <li><a href="product-banner-tools-accessories.jsp">Tools &
                                                            Accessories</a></li>
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
                            <li><a href="login.jsp">LOGIN</a></li>
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





                        </div><!-- End .header-right -->
            </div><!-- End .container-fluid -->
        </div><!-- End .header-middle -->
    </header><!-- End .header -->

    <main class="main">
        <nav aria-label="breadcrumb" class="breadcrumb-nav">
            <div class="container-fluid">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">LOGIN</li>
                </ol>
            </div><!-- End .container-fluid -->
        </nav>

        <div class="page-header">
            <div class="container">
                <h1>Login and Create Account</h1>
            </div><!-- End .container -->
        </div><!-- End .page-header -->

        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="heading">
                        <h2 class="title">Login</h2>
                        <p>If you have an account with us, please log in.</p>
                    </div><!-- End .heading -->

                    <form method="post" action="loginServlet">
                        <input type="text" name="login_username" class="form-control" placeholder="Username" required>
                        <input type="password" name="login_password" class="form-control" placeholder="Password"
                               required>

                        <div class="form-footer">
                            <button type="submit" class="btn btn-primary">LOGIN</button>
                            <a href="forgot-password.html" class="forget-pass"> Forgot your password?</a>
                        </div><!-- End .form-footer -->
                    </form>
                </div><!-- End .col-md-6 -->

                <div class="col-md-6">
                    <div class="heading">
                        <h2 class="title">Create An Account</h2>
                        <p>By creating an account with our store, you will be able to move through the checkout process
                            faster, store multiple shipping addresses, view and track your orders in your account and
                            more.</p>
                    </div><!-- End .heading -->

                    <form method="post" action="createUserServlet">
                        <input type="text" value="CUSTOMER" name="user_type" class="form-control"
                               placeholder="user_type" hidden><br>
                        <input type="text" name="username" class="form-control" placeholder="Username" required>
                        <input type="text" name="fname" class="form-control" placeholder="First Name" required>
                        <input type="text" name="lname" class="form-control" placeholder="Last Name" required>
                        <input type="text" name="phone" class="form-control" placeholder="Phone Number" required>
                        <input type="text" name="address" class="form-control" placeholder="Address" required>
                        <input type="date" name="dob" class="form-control" placeholder="Date Of Birth" required>

                        <h2>Login information</h2>
                        <input type="email" name="email" class="form-control" placeholder="Email Address" required>
                        <input type="password" name="password" class="form-control" placeholder="Password" required>
                        <input type="password" name="re_password" class="form-control" placeholder="Confirm Password"
                               required>

                        <div class="custom-control custom-checkbox">
                            <!--
                            <input type="checkbox" class="custom-control-input" id="newsletter-signup">
                            <label class="custom-control-label" for="newsletter-signup">Sing up our Newsletter</label>
                            -->
                        </div><!-- End .custom-checkbox -->

                        <div class="form-footer">
                            <button type="submit" class="btn btn-primary">Create Account</button>
                        </div><!-- End .form-footer -->
                    </form>
                </div><!-- End .col-md-6 -->
            </div><!-- End .row -->
        </div><!-- End .container -->

        <div class="mb-5"></div><!-- margin -->
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
                <p class="footer-copyright">Copyright 2018 Wynne Sparc. All Rights Reserved.</p>

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
                                <li><a href="product-banner-dresses.jsp">Dresses<span
                                        class="tip tip-hot">Hot!</span></a></li>
                                <li><a href="product-banner-tops.jsp">Tops</a></li>
                                <li><a href="product-banner-sportswear.jsp">Sportwear</a></li>
                                <li><a href="product-banner-jeans.jsp">Jeans</a></li>
                                <li><a href="product-banner-shorts.jsp">Shorts</a></li>
                                <li><a href="product-banner-trousers-leggings.jsp">Trousers & Leggings</a></li>
                                <li><a href="product-banner-skirt.jsp">Skirt</a></li>
                                <li><a href="product-banner-duoset.jsp">Duo Set</a></li>
                                <li><a href="product-banner-jumpsuit-playsuit.jsp">Jumpsuit & Play Suits</a></li>
                                </li>
                                <li>
                                    <a href="#">Bags & Beauty</a>
                                    <ul>
                                        <li><a href="product-banner-viewallbags.jsp">View all Bags</a></li>
                                        <li><a href="product-banner-africanprints.jsp">African Prints</a></li>
                                        <li><a href="product-banner-jewelry.jsp"> Jewelry</a></li>
                                        <li><a href="product-banner-hair.jsp">Hair</a></li>
                                        <li><a href="product-banner-beauty.jsp">Beauty</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Accesories & Electronics</a>
                                    <ul>
                                        <li><a href="product-banner-gifts.jsp">Gifts <span
                                                class="tip tip-new">New</span></a></li>
                                        <li><a href="product-banner-electronics.jsp">Electronics</a></li>
                                        <li><a href="product-banner-tools-accessories.jsp">Tools & Accessories</a></li>
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
                        <li><a href="login.jsp">LOGIN</a></li>
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