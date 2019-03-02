<%@ page import="com.waynnesparc.enums.EUserType" %>
<%@ page import="com.waynnesparc.utils.GeneralUtility" %>
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
                                                            <li><a href="product-banner-sportswear.jsp">Sportwear</a>
                                                            </li>
                                                            <li><a href="product-banner-jeans.jsp">Jeans</a></li>
                                                            <li><a href="product-banner-shorts.jsp">Shorts</a></li>
                                                            <li><a href="product-banner-trousers-leggings.jsp">Trousers
                                                                & Leggings</a></li>
                                                            <li><a href="product-banner-skirt.jsp">Skirt</a></li>
                                                            <li><a href="product-banner-duoset.jsp">Duo Set</a></li>
                                                            <li><a href="product-banner-jumpsuit-playsuit.jsp">Jumpsuit
                                                                & Play Suits</a></li>
                                                    </div><!-- End .col-lg-2 -->
                                                    <div class="col-lg-4">
                                                        <div class="menu-title">
                                                            <a href="#">Bags & Beauty</a>
                                                        </div>
                                                        <ul>
                                                            <li><a href="product-banner-viewallbags.jsp">View all
                                                                Bags</a></li>
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
                                                            <li>
                                                                <a href="product-banner-electronics.jsp">Electronics</a>
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


                                        <li><a href="cart.jsp">Shopping Cart</a></li>
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
                                <%
                                    if (GeneralUtility.getCurrentUser().userType.equals(EUserType.GUEST))
                                    {
                                        out.print("<li ><a href = \"login.jsp\" > Login </a ></li >");
                                    } else
                                    {
                                        out.print("<li ><a href = \"logoutServlet\" > Logout </a ></li >");
                                        out.print("<li ><a href = \"change-password.html\" > Change Password </a ></li >");

                                        if (GeneralUtility.getCurrentUser().userType.equals(EUserType.ADMIN) ||
                                                GeneralUtility.getCurrentUser().userType.equals(EUserType.SUPER_ADMIN))
                                        {
                                            out.print("<li ><a href = \"admin_home.jsp\" > Admin Portal </a ></li >");
                                        }
                                    }
                                %>
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
                            <!--
                             <div class="header-search-wrapper">
                                 <form action="" method="get">
                                     <input type="search" class="form-control" name="q" id="q" placeholder="Search..."
                                            required>
                                     <button class="btn" type="submit"><i class="icon-search-2"></i></button>
                                 </form>
                             </div>
                        </div>
                         -->
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
                            <a href="#" class="dropdown-toggle" role="button" data-toggle="dropdown"
                               aria-haspopup="true"
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
                                        <a href="checkout-shipping.jsp" class="btn">Checkout</a>
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
                    <li class="breadcrumb-item"><a href="#">Men</a></li>
                    <li class="breadcrumb-item"><a href="#">Accessories</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Classic Crew Neck Sweatshirt</li>
                </ol>
            </div><!-- End .container-fluid -->
        </nav>

        <div class="page-header">
            <div class="container">
                <h1>Shopping Cart</h1>
            </div><!-- End .container -->
        </div><!-- End .page-header -->

        <div class="container">
            <div class="row">
                <div class="col-lg-8 padding-right-lg">
                    <div class="cart-table-container">
                        <table class="table table-cart">
                            <thead>
                            <tr>
                                <th class="product-col">Product</th>
                                <th class="price-col">Price</th>
                                <th class="qty-col">Qty</th>
                                <th>Subtotal</th>
                            </tr>





