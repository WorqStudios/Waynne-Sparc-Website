<%@ page import="com.waynnesparc.structs.ItemEntry" %>
<%@ page import="com.waynnesparc.utils.ItemsUtil" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <%
        //out.print(request.getParameter("itemUid"));
        //System.out.println(request.getParameter("item_uid"));

        String itemUID = request.getParameter("item_uid");
        ItemEntry item = null;
        try
        {
            item = ItemsUtil.getItemFromUID(itemUID);
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
    %>

    <title>Wynne Sparc Co Ltd </title>

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
                            <li><a href="index.jsp">Home</a></li>
                            <li class="megamenu-container">
                                <a href="product.jsp" class="sf-with-ul">Products</a>
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








                <%--<div class="dropdown cart-dropdown">--%>
                    <%--<a href="#" class="dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true"--%>
                       <%--aria-expanded="false" data-display="static">--%>
                        <%--<i class="icon-bag-1"></i>--%>
                        <%--<span class="cart-text"><span class="cart-count">2</span> Items on bag</span>--%>
                    <%--</a>--%>

                    <%--<div class="dropdown-menu">--%>
                        <%--<div class="dropdownmenu-wrapper">--%>
                            <%--<a href="#" title="Clear Products" class="cart-clear-btn">--%>
                                <%--<i class="icon-cancel"></i>--%>
                            <%--</a>--%>
                            <%--<div class="dropdown-cart-products">--%>
                                <%--<div class="product">--%>
                                    <%--<figure class="product-image-container">--%>
                                        <%--<a href="product.jsp" class="product-image">--%>
                                            <%--<img src="assets/images/products/cart/product-1.jpg" alt="product">--%>
                                        <%--</a>--%>
                                    <%--</figure>--%>

                                    <%--<div class="product-details">--%>
                                        <%--<h4 class="product-title">--%>
                                            <%--<a href="product.jsp">Reason Logo Snapback</a>--%>
                                        <%--</h4>--%>

                                        <%--<div class="price-box">--%>
                                            <%--<span class="product-price">$28.00</span>--%>
                                        <%--</div><!-- End .price-box -->--%>
                                    <%--</div><!-- End .product-details -->--%>
                                <%--</div><!-- End .product -->--%>

                                <%--<div class="product">--%>
                                    <%--<figure class="product-image-container">--%>
                                        <%--<a href="product.jsp" class="product-image">--%>
                                            <%--<img src="assets/images/products/cart/product-2.jpg" alt="product">--%>
                                        <%--</a>--%>
                                    <%--</figure>--%>
                                    <%--<div class="product-details">--%>
                                        <%--<h4 class="product-title">--%>
                                            <%--<a href="product.jsp">Leather Crisscross Slides</a>--%>
                                        <%--</h4>--%>

                                        <%--<div class="price-box">--%>
                                            <%--<span class="old-price">$12.90</span>--%>
                                            <%--<span class="product-price">$8.90</span>--%>
                                        <%--</div><!-- End .price-box -->--%>
                                    <%--</div><!-- End .product-details -->--%>
                                <%--</div><!-- End .product -->--%>
                            <%--</div><!-- End .cart-product -->--%>

                            <%--<div class="dropdown-cart-action">--%>
                                <%--<a href="cart_head.jsp" class="btn">View Cart</a>--%>
                                <%--<a href="checkout-shipping.jsp" class="btn">Checkout</a>--%>
                            <%--</div><!-- End .dropdown-cart-total -->--%>
                        <%--</div><!-- End .dropdownmenu-wrapper -->--%>
                    <%--</div><!-- End .dropdown-menu -->--%>
                <%--</div><!-- End .dropdown -->--%>
                <%----%>







            </div><!-- End .header-right -->
        </div><!-- End .container-fluid -->
</div><!-- End .header-middle -->
</header><!-- End .header -->

<main class="main">
    <nav aria-label="breadcrumb" class="breadcrumb-nav">
        <div class="container-fluid">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.jsp"><i class="icon-home"></i></a></li>
                <li class="breadcrumb-item"><a href="#">Electronics</a></li>
                <li class="breadcrumb-item active" aria-current="page">Headsets</li>
            </ol>
        </div><!-- End .container-fluid -->
    </nav>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-9">
                <div class="product-single-container product-single-default">
                    <div class="row">
                        <div class="col-lg-7 col-md-6 product-single-gallery">
                            <div class="product-slider-container product-item">
                                <div class="product-single-carousel owl-carousel owl-theme">
                                    <div class="product-item">
                                        <img class="product-single-image"
                                             src="assets/images/products/zoom/product-1.jpg"
                                             data-zoom-image="assets/images/products/zoom/product-1-big.jpg"/>
                                    </div>
                                    <div class="product-item">
                                        <img class="product-single-image"
                                             src="assets/images/products/zoom/product-2.jpg"
                                             data-zoom-image="assets/images/products/zoom/product-2-big.jpg"/>
                                    </div>
                                    <div class="product-item">
                                        <img class="product-single-image"
                                             src="assets/images/products/zoom/product-3.jpg"
                                             data-zoom-image="assets/images/products/zoom/product-3-big.jpg"/>
                                    </div>
                                    <div class="product-item">
                                        <img class="product-single-image"
                                             src="assets/images/products/zoom/product-4.jpg"
                                             data-zoom-image="assets/images/products/zoom/product-4-big.jpg"/>
                                    </div>
                                </div>
                                <!-- End .product-single-carousel -->
                                <span class="prod-full-screen">
                                            <i class="icon-plus"></i>
                                        </span>
                            </div>
                            <div class="prod-thumbnail row owl-dots" id='carousel-custom-dots'>
                                <div class="col-3 owl-dot">
                                    <img src="assets/images/products/zoom/product-1.jpg"/>
                                </div>
                                <div class="col-3 owl-dot">
                                    <img src="assets/images/products/zoom/product-2.jpg"/>
                                </div>
                                <div class="col-3 owl-dot">
                                    <img src="assets/images/products/zoom/product-3.jpg"/>
                                </div>
                                <div class="col-3 owl-dot">
                                    <img src="assets/images/products/zoom/product-4.jpg"/>
                                </div>
                            </div>
                        </div><!-- End .col-lg-7 -->

                        <div class="col-lg-5 col-md-6">
                            <div class="product-single-details">
                                <h1 class="product-title">

                                    <%
                                        out.print(item.name);
                                    %>

                                </h1>

                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:60%"></span><!-- End .ratings -->
                                    </div><!-- End .product-ratings -->

                                    <a href="#" class="rating-link">( 6 Reviews )</a>
                                </div><!-- End .product-container -->

                                <div class="price-box">


                                    <%
                                        if (item.isOnSale == 1)
                                        {
                                            out.print("<span class=\"old-price\">CD");
                                            out.print(item.beforeSalePrice);
                                            out.print("</span>");
                                        }
                                    %>


                                    <span class="product-price">CD

                                            <%
                                                out.print(item.price);
                                            %>

                                            </span>
                                </div><!-- End .price-box -->

                                <div class="product-desc">
                                    <p>
                                        <%
                                            out.print(item.description);
                                        %>
                                    </p>
                                </div><!-- End .product-desc -->

                                <!--
                                                                        <div class="product-filters-container">
                                                                            <div class="product-single-filter">
                                                                                <label>Colors:</label>
                                                                                <ul class="config-swatch-list">
                                                                                    <li class="active">
                                                                                        <a href="#" style="background-color: #6085a5;"></a>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="#" style="background-color: #ab6e6e;"></a>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="#" style="background-color: #b19970;"></a>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="#" style="background-color: #11426b;"></a>
                                                                                    </li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                         -->

                                <!--
                                <div class="product-action">
                                    <div class="product-single-qty">
                                        <input class="horizontal-quantity form-control" type="text">
                                    </div>

                                    -->

                                <%--<a href="addToCartServlet" class="paction add-cart" title="Add to Cart">--%>
                                <%--<span>Add to Cart</span>--%>
                                <%--</a>--%>

                                <form method="post" action="addToCartServlet">
                                    <input type="submit" name="add_to_cart" id="add_to_cart" value="Add To Cart"
                                           class="paction add-cart"/>

                                    <%
                                        out.print("<input type=\"text\" name=\"item_uid\" id=\"item_uid\" value=\"");
                                        out.print(item.uid);
                                        out.print("\" hidden/>");
                                    %>


                                </form>
                                <a href="#" class="paction add-wishlist" title="Add to Wishlist">
                                    <span>Add to Wishlist</span>
                                </a>
                            </div><!-- End .product-action -->

                            <div class="product-single-share">
                                <label>Share:</label>
                                <!-- www.addthis.com share plugin-->
                                <div class="addthis_inline_share_toolbox"></div>
                            </div><!-- End .product single-share -->
                        </div><!-- End .product-single-details -->
                    </div><!-- End .col-lg-5 -->
                </div><!-- End .row -->
            </div><!-- End .product-single-container -->

            <div class="product-single-tabs">
                <ul class="nav nav-tabs" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="product-tab-desc" data-toggle="tab" href="#product-desc-content"
                           role="tab" aria-controls="product-desc-content" aria-selected="true">Description</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="product-tab-tags" data-toggle="tab" href="#product-tags-content"
                           role="tab" aria-controls="product-tags-content" aria-selected="false">Tags</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="product-tab-reviews" data-toggle="tab" href="#product-reviews-content"
                           role="tab" aria-controls="product-reviews-content" aria-selected="false">Reviews</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="product-desc-content" role="tabpanel"
                         aria-labelledby="product-tab-desc">
                        <div class="product-desc-content">
                            <p>


                                <%
                                    out.print(item.description);
                                %>

                            </p>
                            <ul>
                                <li><i class="icon-ok"></i>Any Product types that You want - Simple, Configurable</li>
                                <li><i class="icon-ok"></i>Downloadable/Digital Products, Virtual Products</li>
                                <li><i class="icon-ok"></i>Inventory Management with Backordered items</li>
                            </ul>

                            <!--
                            <p>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                veniam, <br>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                consequat.
                            </p>
                            -->

                        </div><!-- End .product-desc-content -->
                    </div><!-- End .tab-pane -->

                    <div class="tab-pane fade" id="product-tags-content" role="tabpanel"
                         aria-labelledby="product-tab-tags">
                        <div class="product-tags-content">
                            <form action="#">
                                <h4>Add Your Tags:</h4>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-sm" required>
                                    <input type="submit" class="btn btn-primary" value="Add Tags">
                                </div><!-- End .form-group -->
                            </form>
                            <p class="note">Use spaces to separate tags. Use single quotes (') for phrases.</p>
                        </div><!-- End .product-tags-content -->
                    </div><!-- End .tab-pane -->

                    <div class="tab-pane fade" id="product-reviews-content" role="tabpanel"
                         aria-labelledby="product-tab-reviews">
                        <div class="product-reviews-content">
                            <div class="collateral-box">
                                <ul>
                                    <li>Be the first to review this product</li>
                                </ul>
                            </div><!-- End .collateral-box -->

                            <div class="add-product-review">
                                <h3 class="text-uppercase heading-text-color font-weight-semibold">WRITE YOUR OWN
                                    REVIEW</h3>
                                <p>How do you rate this product? *</p>

                                <form action="#">
                                    <table class="ratings-table">
                                        <thead>
                                        <tr>
                                            <th>&nbsp;</th>
                                            <th>1 star</th>
                                            <th>2 stars</th>
                                            <th>3 stars</th>
                                            <th>4 stars</th>
                                            <th>5 stars</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>Quality</td>
                                            <td>
                                                <input type="radio" name="ratings[1]" id="Quality_1" value="1"
                                                       class="radio">
                                            </td>
                                            <td>
                                                <input type="radio" name="ratings[1]" id="Quality_2" value="2"
                                                       class="radio">
                                            </td>
                                            <td>
                                                <input type="radio" name="ratings[1]" id="Quality_3" value="3"
                                                       class="radio">
                                            </td>
                                            <td>
                                                <input type="radio" name="ratings[1]" id="Quality_4" value="4"
                                                       class="radio">
                                            </td>
                                            <td>
                                                <input type="radio" name="ratings[1]" id="Quality_5" value="5"
                                                       class="radio">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Value</td>
                                            <td>
                                                <input type="radio" name="value[1]" id="Value_1" value="1"
                                                       class="radio">
                                            </td>
                                            <td>
                                                <input type="radio" name="value[1]" id="Value_2" value="2"
                                                       class="radio">
                                            </td>
                                            <td>
                                                <input type="radio" name="value[1]" id="Value_3" value="3"
                                                       class="radio">
                                            </td>
                                            <td>
                                                <input type="radio" name="value[1]" id="Value_4" value="4"
                                                       class="radio">
                                            </td>
                                            <td>
                                                <input type="radio" name="value[1]" id="Value_5" value="5"
                                                       class="radio">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Price</td>
                                            <td>
                                                <input type="radio" name="price[1]" id="Price_1" value="1"
                                                       class="radio">
                                            </td>
                                            <td>
                                                <input type="radio" name="price[1]" id="Price_2" value="2"
                                                       class="radio">
                                            </td>
                                            <td>
                                                <input type="radio" name="price[1]" id="Price_3" value="3"
                                                       class="radio">
                                            </td>
                                            <td>
                                                <input type="radio" name="price[1]" id="Price_4" value="4"
                                                       class="radio">
                                            </td>
                                            <td>
                                                <input type="radio" name="price[1]" id="Price_5" value="5"
                                                       class="radio">
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>

                                    <div class="form-group">
                                        <label>Nickname <span class="required">*</span></label>
                                        <input type="text" class="form-control form-control-sm" required>
                                    </div><!-- End .form-group -->
                                    <div class="form-group">
                                        <label>Summary of Your Review <span class="required">*</span></label>
                                        <input type="text" class="form-control form-control-sm" required>
                                    </div><!-- End .form-group -->
                                    <div class="form-group mb-2">
                                        <label>Review <span class="required">*</span></label>
                                        <textarea cols="5" rows="6" class="form-control form-control-sm"></textarea>
                                    </div><!-- End .form-group -->

                                    <input type="submit" class="btn btn-primary" value="Submit Review">
                                </form>
                            </div><!-- End .add-product-review -->
                        </div><!-- End .product-reviews-content -->
                    </div><!-- End .tab-pane -->
                </div><!-- End .tab-content -->
            </div><!-- End .product-single-tabs -->
        </div><!-- End .col-lg-9 -->

        <div class="sidebar-overlay"></div>
        <div class="sidebar-toggle"><i class="icon-sliders"></i></div>
        <aside class="sidebar-product col-lg-3 padding-left-lg mobile-sidebar">
            <div class="sidebar-wrapper">
                <div class="widget widget-brand">
                    <a href="#">
                        <img src="assets/images/product-brand.png" alt="brand name">
                    </a>
                </div><!-- End .widget -->

                <div class="widget widget-info">
                    <ul>
                        <li>
                            <i class="icon-shipping"></i>
                            <h4>FREE<br>SHIPPING</h4>
                        </li>
                        <li>
                            <i class="icon-us-dollar"></i>
                            <h4>100% MONEY<br>BACK GUARANTEE</h4>
                        </li>
                        <li>
                            <i class="icon-online-support"></i>
                            <h4>ONLINE<br>SUPPORT 24/7</h4>
                        </li>
                    </ul>
                </div><!-- End .widget -->

                <div class="widget widget-banner">
                    <div class="banner banner-image">
                        <a href="#">
                            <img src="assets/images/banners/banner-sidebar.jpg" alt="Banner Desc">
                        </a>
                    </div><!-- End .banner -->
                </div><!-- End .widget -->


            </div>
        </aside><!-- End .col-md-3 -->
    </div><!-- End .row -->
    </div><!-- End .container-fluid -->


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
                                <span class="contact-info-label">Address:</span>123 Street Name, City, <br>United states
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

                        <p>Get all the latest information on Events, Sales and Offers. Sign up for newsletter today.</p>

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
            <p class="footer-copyright">Copyright 2018 porto. All Rights Reserved.</p>

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
                <li><a href="index.jsp">Home</a></li>
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
                            </ul>
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
                            <a href="#">Accessories & Electronics</a>
                            <ul>
                                <li><a href="product-banner-gifts.jsp">Gifts <span class="tip tip-new">New</span></a>
                                </li>
                                <li><a href="product-banner-electronics.jsp">Electronics</a></li>
                                <li><a href="product-banner-tools-accessories.jsp">Tools & Accessories</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">My Menu<span></span></a>
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

                <li><a href="contact.jsp">Contact Us</a></li>
                <li><a href="about.jsp">About Us</a></li>
                <li><a href="login.jsp" class="login-link">Login</a></li>

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

<!-- www.addthis.com share plugin -->
<script src="https://s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5b927288a03dbde6"></script>
</body>
</html>