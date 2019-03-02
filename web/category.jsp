<%@ page import="com.waynnesparc.utils.GeneralUtility" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html lang="en">

<%
    try
    {
        GeneralUtility.loadAllItemsIfNull();
    } catch (SQLException e)
    {
        e.printStackTrace();
    }
%>
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
                            <li><a href="about.jsp"></a></li>
                            <li><a href="about.jsp"></a></li>
                            <li><a href="about.jsp"></a></li>


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

                <div class="dropdown cart-dropdown">
                    <a href="#" class="dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true"
                       aria-expanded="false" data-display="static">
                        <i class="icon-bag-1"></i>
                        <span class="cart-text"><span class="cart-count">2</span> Items on bag</span>
                    </a>

                    <div class="dropdown-menu">
                        <div class="dropdownmenu-wrapper">
                            <a href="#" title="Clear Products" class="cart-clear-btn">
                                <i class="icon-cancel"></i>
                            </a>
                            <div class="dropdown-cart-products">
                                <div class="product">
                                    <figure class="product-image-container">
                                        <a href="product.jsp" class="product-image">
                                            <img src="assets/images/products/cart/product-1.jpg" alt="product">
                                        </a>
                                    </figure>

                                    <div class="product-details">
                                        <h4 class="product-title">
                                            <a href="product.jsp">Reason Logo Snapback</a>
                                        </h4>

                                        <div class="price-box">
                                            <span class="product-price">$28.00</span>
                                        </div><!-- End .price-box -->
                                    </div><!-- End .product-details -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-image-container">
                                        <a href="product.jsp" class="product-image">
                                            <img src="assets/images/products/cart/product-2.jpg" alt="product">
                                        </a>
                                    </figure>
                                    <div class="product-details">
                                        <h4 class="product-title">
                                            <a href="product.jsp">Leather Crisscross Slides</a>
                                        </h4>

                                        <div class="price-box">
                                            <span class="old-price">$12.90</span>
                                            <span class="product-price">$8.90</span>
                                        </div><!-- End .price-box -->
                                    </div><!-- End .product-details -->
                                </div><!-- End .product -->
                            </div><!-- End .cart-product -->

                            <div class="dropdown-cart-action">
                                <a href="cart_head.jsp" class="btn">View Cart</a>
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
    <nav aria-label="breadcrumb" class="breadcrumb-nav mb-md-4">
        <div class="container-fluid">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Men</a></li>
                <li class="breadcrumb-item active" aria-current="page">Accessories</li>
            </ol>
        </div><!-- End .container-fluid -->
    </nav>

    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-9 padding-left-lg col-xl-10">
                <div class="banner banner-cat">
                    <img src="assets/images/banners/banner-1.jpg" alt="banner">
                    <div class="banner-content">
                        <h1>men’s Accessories</h1>
                    </div><!-- End .banner-content -->
                </div><!-- End .banner -->

                <nav class="toolbox">
                    <div class="toolbox-left">
                        <div class="toolbox-item toolbox-sort">
                            <label>Sort By:</label>

                            <div class="select-custom">
                                <select name="orderby" class="form-control">
                                    <option value="menu_order" selected="selected">Default sorting</option>
                                    <option value="popularity">Sort by popularity</option>
                                    <option value="rating">Sort by average rating</option>
                                    <option value="date">Sort by newness</option>
                                    <option value="price">Sort by price: low to high</option>
                                    <option value="price-desc">Sort by price: high to low</option>
                                </select>
                            </div><!-- End .select-custom -->

                            <a href="#" class="sorter-btn" title="Set Ascending Direction"><span class="sr-only">Set Ascending Direction</span></a>
                        </div><!-- End .toolbox-item -->

                        <div class="layout-modes">
                            <a href="category.jsp" class="layout-btn btn-grid active" title="Grid">
                                <i class="icon-mode-grid"></i>
                            </a>
                            <a href="category-list.html" class="layout-btn btn-list" title="List">
                                <i class="icon-mode-list"></i>
                            </a>
                        </div><!-- End .layout-modes -->
                    </div><!-- End .toolbox-left -->

                    <div class="toolbox-item toolbox-show">
                        <label>Show:</label>

                        <div class="select-custom">
                            <select name="count" class="form-control">
                                <option value="20">20</option>
                                <option value="30">30</option>
                                <option value="40">40</option>
                                <option value="50">50</option>
                            </select>
                        </div><!-- End .select-custom -->
                    </div><!-- End .toolbox-item -->
                </nav>

                <div class="row row-sm">
                    <div class="col-6 col-md-4 col-xl-3">
                        <div class="product">
                            <figure class="product-image-container">
                                <a href="product.jsp" class="product-image">
                                    <img src="assets/images/products/product-1.jpg" alt="product">
                                </a>
                                <a href="ajax/product-quick-view.html" class="btn-quickview">Quick View</a>
                                <span class="product-label label-hot">Hot</span>
                            </figure>
                            <div class="product-details action-inner">
                                <h2 class="product-title">
                                    <a href="product.jsp">Running Sneakers</a>
                                </h2>
                                <div class="product-action">
                                    <a href="#" class="paction add-wishlist" title="Add to Wishlist">
                                        <span>Add to Wishlist</span>
                                    </a>
                                </div><!-- End .product-action -->
                                <div class="price-box">
                                    <span class="product-price">$28.00</span>
                                </div><!-- End .price-box -->

                                <ul class="config-swatch-list">
                                    <li class="active">
                                        <a href="#" style="background-color: #1a3b9d;"></a>
                                    </li>
                                    <li>
                                        <a href="#" style="background-color: #000000;"></a>
                                    </li>
                                    <li>
                                        <a href="#" style="background-color: #787878;"></a>
                                    </li>
                                    <li>
                                        <a href="#" style="background-color: #1f490a;"></a>
                                    </li>
                                </ul>
                            </div><!-- End .product-details -->
                        </div><!-- End .product -->
                    </div><!-- End .col-xl-3 -->

                    <div class="col-6 col-md-4 col-xl-3">
                        <div class="product">
                            <figure class="product-image-container">
                                <a href="product.jsp" class="product-image">
                                    <img src="assets/images/products/product-2.jpg" alt="product">
                                </a>
                                <a href="ajax/product-quick-view.html" class="btn-quickview">Quick View</a>
                                <span class="product-label label-sale">-20%</span>
                            </figure>
                            <div class="product-details action-inner">
                                <h2 class="product-title">
                                    <a href="product.jsp">Men's Apt</a>
                                </h2>
                                <div class="product-action">
                                    <a href="#" class="paction add-wishlist" title="Add to Wishlist">
                                        <span>Add to Wishlist</span>
                                    </a>
                                </div><!-- End .product-action -->
                                <div class="price-box">
                                    <span class="old-price">$12.90</span>
                                    <span class="product-price">$8.90</span>
                                </div><!-- End .price-box -->
                            </div><!-- End .product-details -->
                        </div><!-- End .product -->
                    </div><!-- End .col-xl-3 -->

                    <div class="col-6 col-md-4 col-xl-3">
                        <div class="product">
                            <figure class="product-image-container">
                                <a href="product.jsp" class="product-image">
                                    <img src="assets/images/products/product-3.jpg" alt="product">
                                </a>
                                <a href="ajax/product-quick-view.html" class="btn-quickview">Quick View</a>
                            </figure>
                            <div class="product-details action-inner">
                                <h2 class="product-title">
                                    <a href="product.jsp">Stripe-Trim Athletic Mesh Tee</a>
                                </h2>
                                <div class="product-action">
                                    <a href="#" class="paction add-wishlist" title="Add to Wishlist">
                                        <span>Add to Wishlist</span>
                                    </a>
                                </div><!-- End .product-action -->
                                <div class="price-box">
                                    <span class="product-price">$15.00</span>
                                </div><!-- End .price-box -->

                                <ul class="config-swatch-list">
                                    <li>
                                        <a href="#" style="background-color: #000000;"></a>
                                    </li>
                                    <li>
                                        <a href="#" style="background-color: #8b8b8b;"></a>
                                    </li>
                                    <li>
                                        <a href="#" style="background-color: #dd1818;"></a>
                                    </li>
                                </ul>
                            </div><!-- End .product-details -->
                        </div><!-- End .product -->
                    </div><!-- End .col-xl-3 -->

                    <div class="col-6 col-md-4 col-xl-3">
                        <div class="product">
                            <figure class="product-image-container">
                                <a href="product.jsp" class="product-image">
                                    <img src="assets/images/products/product-4.jpg" alt="product">
                                </a>
                                <a href="ajax/product-quick-view.html" class="btn-quickview">Quick View</a>
                            </figure>
                            <div class="product-details action-inner">
                                <h2 class="product-title">
                                    <a href="product.jsp">Classic Crew Neck Sweatshirt</a>
                                </h2>
                                <div class="product-action">
                                    <a href="#" class="paction add-wishlist" title="Add to Wishlist">
                                        <span>Add to Wishlist</span>
                                    </a>
                                </div><!-- End .product-action -->
                                <div class="price-box">
                                    <span class="product-price">$12.80</span>
                                </div><!-- End .price-box -->

                                <ul class="config-swatch-list">
                                    <li class="active">
                                        <a href="#" style="background-color: #c8b911;"></a>
                                    </li>
                                    <li>
                                        <a href="#" style="background-color: #0b31f4;"></a>
                                    </li>
                                    <li>
                                        <a href="#" style="background-color: #e10c0c;"></a>
                                    </li>
                                    <li>
                                        <a href="#" style="background-color: #16d7e3;"></a>
                                    </li>
                                </ul>
                            </div><!-- End .product-details -->
                        </div><!-- End .product -->
                    </div><!-- End .col-xl-3 -->

                    <div class="col-6 col-md-4 col-xl-3">
                        <div class="product">
                            <figure class="product-image-container">
                                <a href="product.jsp" class="product-image">
                                    <img src="assets/images/products/product-5.jpg" alt="product">
                                </a>
                                <a href="ajax/product-quick-view.html" class="btn-quickview">Quick View</a>
                            </figure>
                            <div class="product-details action-inner">
                                <h2 class="product-title">
                                    <a href="product.jsp">Zippered High-Top Sneakers</a>
                                </h2>
                                <div class="product-action">
                                    <a href="#" class="paction add-wishlist" title="Add to Wishlist">
                                        <span>Add to Wishlist</span>
                                    </a>
                                </div><!-- End .product-action -->
                                <div class="price-box">
                                    <span class="product-price">$34.90</span>
                                </div><!-- End .price-box -->
                            </div><!-- End .product-details -->
                        </div><!-- End .product -->
                    </div><!-- End .col-xl-3 -->

                    <div class="col-6 col-md-4 col-xl-3">
                        <div class="product">
                            <figure class="product-image-container">
                                <a href="product.jsp" class="product-image">
                                    <img src="assets/images/products/product-6.jpg" alt="product">
                                </a>
                                <a href="ajax/product-quick-view.html" class="btn-quickview">Quick View</a>
                                <span class="product-label label-hot">Hot</span>
                            </figure>
                            <div class="product-details action-inner">
                                <h2 class="product-title">
                                    <a href="product.jsp">Matte Browline Sunglasses</a>
                                </h2>
                                <div class="product-action">
                                    <a href="#" class="paction add-wishlist" title="Add to Wishlist">
                                        <span>Add to Wishlist</span>
                                    </a>
                                </div><!-- End .product-action -->
                                <div class="price-box">
                                    <span class="product-price">$5.80</span>
                                </div><!-- End .price-box -->
                            </div><!-- End .product-details -->
                        </div><!-- End .product -->
                    </div><!-- End .col-xl-3 -->

                    <div class="col-6 col-md-4 col-xl-3">
                        <div class="product">
                            <figure class="product-image-container">
                                <a href="product.jsp" class="product-image">
                                    <img src="assets/images/products/product-7.jpg" alt="product">
                                </a>
                                <a href="ajax/product-quick-view.html" class="btn-quickview">Quick View</a>
                                <span class="product-label label-hot">Hot</span>
                            </figure>
                            <div class="product-details action-inner">
                                <h2 class="product-title">
                                    <a href="product.jsp">Vegan Leather-Sleeved Bomber Jacket</a>
                                </h2>
                                <div class="product-action">
                                    <a href="#" class="paction add-wishlist" title="Add to Wishlist">
                                        <span>Add to Wishlist</span>
                                    </a>
                                </div><!-- End .product-action -->
                                <div class="price-box">
                                    <span class="product-price">$39.90</span>
                                </div><!-- End .price-box -->
                            </div><!-- End .product-details -->
                        </div><!-- End .product -->
                    </div><!-- End .col-xl-3 -->

                    <div class="col-6 col-md-4 col-xl-3">
                        <div class="product">
                            <figure class="product-image-container">
                                <a href="product.jsp" class="product-image">
                                    <img src="assets/images/products/product-8.jpg" alt="product">
                                </a>
                                <a href="ajax/product-quick-view.html" class="btn-quickview">Quick View</a>
                            </figure>
                            <div class="product-details action-inner">
                                <h2 class="product-title">
                                    <a href="product.jsp">Ribbed Knit Beanie</a>
                                </h2>
                                <div class="product-action">
                                    <a href="#" class="paction add-wishlist" title="Add to Wishlist">
                                        <span>Add to Wishlist</span>
                                    </a>
                                </div><!-- End .product-action -->
                                <div class="price-box">
                                    <span class="product-price">$12.80</span>
                                </div><!-- End .price-box -->

                                <ul class="config-swatch-list">
                                    <li class="active">
                                        <a href="#" style="background-color: #000000;"></a>
                                    </li>
                                    <li>
                                        <a href="#" style="background-color: #878787;"></a>
                                    </li>
                                    <li>
                                        <a href="#" style="background-color: #d0d0d0;"></a>
                                    </li>
                                </ul>
                            </div><!-- End .product-details -->
                        </div><!-- End .product -->
                    </div><!-- End .col-xl-3 -->

                    <div class="col-6 col-md-4 col-xl-3">
                        <div class="product">
                            <figure class="product-image-container">
                                <a href="product.jsp" class="product-image">
                                    <img src="assets/images/products/product-9.jpg" alt="product">
                                </a>
                                <a href="ajax/product-quick-view.html" class="btn-quickview">Quick View</a>
                            </figure>
                            <div class="product-details action-inner">
                                <h2 class="product-title">
                                    <a href="product.jsp">Classic Woven Dress Pants</a>
                                </h2>
                                <div class="product-action">
                                    <a href="#" class="paction add-wishlist" title="Add to Wishlist">
                                        <span>Add to Wishlist</span>
                                    </a>
                                </div><!-- End .product-action -->
                                <div class="price-box">
                                    <span class="old-price">$29.90</span>
                                    <span class="product-price">$20.99</span>
                                </div><!-- End .price-box -->
                            </div><!-- End .product-details -->
                        </div><!-- End .product -->
                    </div><!-- End .col-xl-3 -->

                    <div class="col-6 col-md-4 col-xl-3">
                        <div class="product">
                            <figure class="product-image-container">
                                <a href="product.jsp" class="product-image">
                                    <img src="assets/images/products/product-10.jpg" alt="product">
                                </a>
                                <a href="ajax/product-quick-view.html" class="btn-quickview">Quick View</a>
                            </figure>
                            <div class="product-details action-inner">
                                <h2 class="product-title">
                                    <a href="product.jsp">Keds Roster Sneakers</a>
                                </h2>
                                <div class="product-action">
                                    <a href="#" class="paction add-wishlist" title="Add to Wishlist">
                                        <span>Add to Wishlist</span>
                                    </a>
                                </div><!-- End .product-action -->
                                <div class="price-box">
                                    <span class="product-price">$50.00</span>
                                </div><!-- End .price-box -->
                            </div><!-- End .product-details -->
                        </div><!-- End .product -->
                    </div><!-- End .col-xl-3 -->

                    <div class="col-6 col-md-4 col-xl-3">
                        <div class="product">
                            <figure class="product-image-container">
                                <a href="product.jsp" class="product-image">
                                    <img src="assets/images/products/product-11.jpg" alt="product">
                                </a>
                                <a href="ajax/product-quick-view.html" class="btn-quickview">Quick View</a>
                            </figure>
                            <div class="product-details action-inner">
                                <h2 class="product-title">
                                    <a href="product.jsp">Men Ettika Leather Bracelet</a>
                                </h2>
                                <div class="product-action">
                                    <a href="#" class="paction add-wishlist" title="Add to Wishlist">
                                        <span>Add to Wishlist</span>
                                    </a>
                                </div><!-- End .product-action -->
                                <div class="price-box">
                                    <span class="product-price">$28.00</span>
                                </div><!-- End .price-box -->
                            </div><!-- End .product-details -->
                        </div><!-- End .product -->
                    </div><!-- End .col-xl-3 -->

                    <div class="col-6 col-md-4 col-xl-3">
                        <div class="product">
                            <figure class="product-image-container">
                                <a href="product.jsp" class="product-image">
                                    <img src="assets/images/products/product-12.jpg" alt="product">
                                </a>
                                <a href="ajax/product-quick-view.html" class="btn-quickview">Quick View</a>
                                <span class="product-label label-hot">Hot</span>
                            </figure>
                            <div class="product-details action-inner">
                                <h2 class="product-title">
                                    <a href="product.jsp">Men Striped Dope Crew Socks</a>
                                </h2>
                                <div class="product-action">
                                    <a href="#" class="paction add-wishlist" title="Add to Wishlist">
                                        <span>Add to Wishlist</span>
                                    </a>
                                </div><!-- End .product-action -->
                                <div class="price-box">
                                    <span class="product-price">$9.90</span>
                                </div><!-- End .price-box -->
                            </div><!-- End .product-details -->
                        </div><!-- End .product -->
                    </div><!-- End .col-xl-3 -->

                    <div class="col-6 col-md-4 col-xl-3">
                        <div class="product">
                            <figure class="product-image-container">
                                <a href="product.jsp" class="product-image">
                                    <img src="assets/images/products/product-13.jpg" alt="product">
                                </a>
                                <a href="ajax/product-quick-view.html" class="btn-quickview">Quick View</a>
                            </figure>
                            <div class="product-details action-inner">
                                <h2 class="product-title">
                                    <a href="product.jsp">Ribbed Knit Thermal</a>
                                </h2>
                                <div class="product-action">
                                    <a href="#" class="paction add-wishlist" title="Add to Wishlist">
                                        <span>Add to Wishlist</span>
                                    </a>
                                </div><!-- End .product-action -->
                                <div class="price-box">
                                    <span class="product-price">$9.90</span>
                                </div><!-- End .price-box -->
                            </div><!-- End .product-details -->
                        </div><!-- End .product -->
                    </div><!-- End .col-xl-3 -->

                    <div class="col-6 col-md-4 col-xl-3">
                        <div class="product">
                            <figure class="product-image-container">
                                <a href="product.jsp" class="product-image">
                                    <img src="assets/images/products/product-14.jpg" alt="product">
                                </a>
                                <a href="ajax/product-quick-view.html" class="btn-quickview">Quick View</a>
                                <span class="product-label label-hot">Hot</span>
                            </figure>
                            <div class="product-details action-inner">
                                <h2 class="product-title">
                                    <a href="product.jsp">Reason Mesh Snapback</a>
                                </h2>
                                <div class="product-action">
                                    <a href="#" class="paction add-wishlist" title="Add to Wishlist">
                                        <span>Add to Wishlist</span>
                                    </a>
                                </div><!-- End .product-action -->
                                <div class="price-box">
                                    <span class="product-price">$28.00</span>
                                </div><!-- End .price-box -->
                            </div><!-- End .product-details -->
                        </div><!-- End .product -->
                    </div><!-- End .col-xl-3 -->
                </div><!-- End .row -->

                <nav class="toolbox toolbox-pagination">
                    <ul class="pagination">
                        <li class="page-item active">
                            <a class="page-link" href="#">1 <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">4</a></li>
                        <li class="page-item"><a class="page-link" href="#">5</a></li>
                        <li class="page-item"><span class="page-link">...</span></li>
                        <li class="page-item">
                            <a class="page-link page-link-btn" href="#"><i class="icon-angle-right"></i></a>
                        </li>
                    </ul>
                </nav>
            </div><!-- End .col-lg-8 -->

            <aside class="sidebar-shop col-lg-3 col-xl-2 order-lg-first">
                <div class="sidebar-wrapper">
                    <div class="widget">
                        <h3 class="widget-title">
                            <a data-toggle="collapse" href="#widget-body-2" role="button" aria-expanded="true"
                               aria-controls="widget-body-2">Men</a>
                        </h3>

                        <div class="collapse show" id="widget-body-2">
                            <div class="widget-body">
                                <ul class="cat-list">
                                    <li><a href="#">Accessories</a></li>
                                    <li><a href="#">Watch Fashion</a></li>
                                    <li><a href="#">Tees, Knits & Polos</a></li>
                                    <li><a href="#">Pants & Denim</a></li>
                                </ul>
                            </div><!-- End .widget-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .widget -->

                    <div class="widget">
                        <h3 class="widget-title">
                            <a data-toggle="collapse" href="#widget-body-3" role="button" aria-expanded="true"
                               aria-controls="widget-body-3">Price</a>
                        </h3>

                        <div class="collapse show" id="widget-body-3">
                            <div class="widget-body">
                                <form action="#">
                                    <div class="price-slider-wrapper">
                                        <div id="price-slider"></div><!-- End #price-slider -->
                                    </div><!-- End .price-slider-wrapper -->

                                    <div class="filter-price-action">
                                        <button type="submit" class="btn btn-primary">Filter</button>

                                        <div class="filter-price-text">
                                            Price:
                                            <span id="filter-price-range"></span>
                                        </div><!-- End .filter-price-text -->
                                    </div><!-- End .filter-price-action -->
                                </form>
                            </div><!-- End .widget-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .widget -->

                    <div class="widget">
                        <h3 class="widget-title">
                            <a data-toggle="collapse" href="#widget-body-4" role="button" aria-expanded="true"
                               aria-controls="widget-body-4">Size</a>
                        </h3>

                        <div class="collapse show" id="widget-body-4">
                            <div class="widget-body">
                                <ul class="cat-list">
                                    <li><a href="#">Small</a></li>
                                    <li><a href="#">Medium</a></li>
                                    <li><a href="#">Large</a></li>
                                    <li><a href="#">Extra Large</a></li>
                                </ul>
                            </div><!-- End .widget-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .widget -->

                    <div class="widget">
                        <h3 class="widget-title">
                            <a data-toggle="collapse" href="#widget-body-5" role="button" aria-expanded="true"
                               aria-controls="widget-body-5">Brand</a>
                        </h3>

                        <div class="collapse show" id="widget-body-5">
                            <div class="widget-body">
                                <ul class="cat-list">
                                    <li><a href="#">Adidas</a></li>
                                    <li><a href="#">Calvin Klein (26)</a></li>
                                    <li><a href="#">Diesel (3)</a></li>
                                    <li><a href="#">Lacoste (8)</a></li>
                                </ul>
                            </div><!-- End .widget-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .widget -->

                    <div class="widget">
                        <h3 class="widget-title">
                            <a data-toggle="collapse" href="#widget-body-6" role="button" aria-expanded="true"
                               aria-controls="widget-body-6">Color</a>
                        </h3>

                        <div class="collapse show" id="widget-body-6">
                            <div class="widget-body">
                                <ul class="config-swatch-list">
                                    <li class="active">
                                        <a href="#" style="background-color: #1645f3;"></a>
                                        <span>Blue</span>
                                    </li>
                                    <li>
                                        <a href="#" style="background-color: #f11010;"></a>
                                        <span>Red</span>
                                    </li>
                                    <li>
                                        <a href="#" style="background-color: #fe8504;"></a>
                                        <span>Orange</span>
                                    </li>
                                    <li>
                                        <a href="#" style="background-color: #2da819;"></a>
                                        <span>Green</span>
                                    </li>
                                </ul>
                            </div><!-- End .widget-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .widget -->
                </div><!-- End .sidebar-wrapper -->
            </aside><!-- End .col-lg-4 -->
        </div><!-- End .row -->
    </div><!-- End .container-fluid -->

    <div class="mb-3"></div><!-- margin -->
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
                            <a href="#">Accesories & Electronics</a>
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
<script src="assets/js/nouislider.min.js"></script>

<!-- Main JS File -->
<script src="assets/js/main.min.js"></script>
</body>
</html>