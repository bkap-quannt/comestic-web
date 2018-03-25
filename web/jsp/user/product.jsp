<%-- 
    Document   : product
    Created on : Feb 1, 2018, 8:32:27 PM
    Author     : Tuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Cosmetic | Product</title>
        <jsp:include page="header.jsp" />
        <style>
            .pagination {
                display: inline-block;
            }
            .pagination a {
                color: black;
                float: left;
                padding: 8px 16px;
                text-decoration: none;
            }
            .pagination a.active {
                background: #4CAF50;
                color: white;
            }
            .pagination a:hover:not(.active) {
                background-color: #ddd;
            }
        </style>
    </head>
    <body class="relative grid-1440">

        <!-- Preloader -->
        <div class="loader-mask">
            <div class="loader">
                <div></div>
                <div></div>
            </div>
        </div>

        <main class="main-wrapper oh">

            <header class="nav-type-1">

                <!-- Fullscreen search -->
                <div class="search-wrap">
                    <div class="search-inner">
                        <div class="search-cell">
                            <form method="get">
                                <div class="search-field-holder">
                                    <input type="search" class="form-control main-search-input" placeholder="Search for">
                                    <i class="ui-close search-close" id="search-close"></i>
                                </div>            
                            </form>
                        </div>
                    </div>        
                </div> <!-- end fullscreen search -->

                <nav class="navbar navbar-static-top">
                    <div class="navigation" id="sticky-nav">
                        <div class="container relative">

                            <div class="row">

                                <div class="navbar-header">
                                    <!-- Logo -->
                                    <div class="logo-container">
                                        <div class="logo-wrap">
                                            <a href="index-ny.html">
                                                <img class="logo-dark" src="..jsp//user/img/logo_dark.png" alt="logo">
                                            </a>
                                        </div>
                                    </div>
                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <!-- Mobile cart -->
                                    <div class="nav-cart mobile-cart hidden-lg hidden-md">
                                        <div class="nav-cart-outer">
                                            <div class="nav-cart-inner">
                                                <a href="#" class="nav-cart-icon">
                                                    <span class="nav-cart-badge">2</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div> <!-- end navbar-header -->

                                <div class="nav-wrap left">
                                    <div class="collapse navbar-collapse text-center" id="navbar-collapse">

                                        <ul class="nav navbar-nav navbar-left">

                                            <li class="dropdown">
                                                <a href="#">Home</a>
                                                <i class="fa fa-angle-down dropdown-trigger"></i>
                                                <ul class="dropdown-menu megamenu-wide">
                                                    <li>
                                                        <div class="megamenu-wrap container">
                                                            <div class="row">

                                                                <div class="col-md-3 megamenu-item no-headings">
                                                                    <ul class="menu-list">
                                                                        <li><a href="index-tokyo.html">Startup Tokyo</a></li>
                                                                        <li><a href="index-ny.html">Business New York</a></li>
                                                                        <li><a href="index-paris.html">Onepage Paris</a></li>
                                                                        <li><a href="index-toronto.html">Agency Toronto</a></li>
                                                                        <li><a href="index-melbourne.html">Corporate Melbourne</a></li>
                                                                    </ul>
                                                                </div>

                                                                <div class="col-md-3 megamenu-item no-headings">
                                                                    <ul class="menu-list">
                                                                        <li><a href="index-sydney.html">Studio Sydney</a></li>
                                                                        <li><a href="index-vancouver.html">Agency Vancouver</a></li>
                                                                        <li><a href="index-athens.html">Photography Athens</a></li>
                                                                        <li><a href="index-milan.html">Shop Milan</a></li>
                                                                        <li><a href="index-oslo.html">Photography Oslo</a></li>
                                                                    </ul>
                                                                </div>

                                                                <div class="col-md-3 megamenu-item no-headings">
                                                                    <ul class="menu-list">
                                                                        <li><a href="index-vienna.html">Agency Vienna</a></li>
                                                                        <li><a href="index-madrid.html">Photography Madrid</a></li>
                                                                        <li><a href="index-amsterdam.html">Portfolio Amsterdam</a></li>
                                                                        <li><a href="index-stockholm.html">Minimal Stockholm</a></li>
                                                                    </ul>
                                                                </div>

                                                                <div class="col-md-3 megamenu-item no-headings">
                                                                    <ul class="menu-list">
                                                                        <li><a href="index-berlin.html">Portfolio Berlin</a></li>
                                                                        <li><a href="index-manila.html">Showcase Manila</a></li>
                                                                        <li><a href="index-shanghai.html">App Landing Shanghai</a></li>
                                                                        <li><a href="index-london.html">Resume vCard London</a></li>
                                                                    </ul>
                                                                </div>

                                                            </div> 
                                                        </div>
                                                    </li>
                                                </ul>
                                            </li> <!-- end features -->

                                            <li class="dropdown">
                                                <a href="#">Pages</a>
                                                <i class="fa fa-angle-down dropdown-trigger"></i>
                                                <ul class="dropdown-menu">
                                                    <li><a href="services.html">Services</a></li>
                                                    <li><a href="about-us.html">About Us</a></li>
                                                    <li><a href="contact.html">Contact</a></li>
                                                    <li><a href="coming-soon.html">Coming Soon</a></li>
                                                    <li><a href="404.html">404</a></li>
                                                </ul>
                                            </li>

                                            <li class="dropdown">
                                                <a href="#">Portfolio</a>
                                                <i class="fa fa-angle-down dropdown-trigger"></i>
                                                <ul class="dropdown-menu">
                                                    <li class="dropdown-submenu">
                                                        <a href="#">Classic</a>
                                                        <i class="fa fa-angle-down dropdown-trigger"></i>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="portfolio-4-col.html">4 Columns</a></li>
                                                            <li><a href="portfolio-3-col.html">3 Columns</a></li>
                                                            <li><a href="portfolio-2-col.html">2 Columns</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="dropdown-submenu">
                                                        <a href="#">Fullwidth</a>
                                                        <i class="fa fa-angle-down dropdown-trigger"></i>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="portfolio-5-col-wide.html">5 Columns</a></li>
                                                            <li><a href="portfolio-4-col-wide.html">4 Columns</a></li>
                                                            <li><a href="portfolio-3-col-wide.html">3 Columns</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="dropdown-submenu">
                                                        <a href="#">With Title</a>
                                                        <i class="fa fa-angle-down dropdown-trigger"></i>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="portfolio-4-col-title.html">4 Columns</a></li>
                                                            <li><a href="portfolio-3-col-title.html">3 Columns</a></li>
                                                            <li><a href="portfolio-2-col-title.html">2 Columns</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="dropdown-submenu">
                                                        <a href="#">With Description</a>
                                                        <i class="fa fa-angle-down dropdown-trigger"></i>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="portfolio-2-col-desc.html">2 Columns</a></li>
                                                            <li><a href="portfolio-1-col-desc.html">1 Column</a></li>
                                                        </ul>
                                                    </li>
                                                    <li>
                                                        <a href="portfolio-masonry.html">Masonry</a>
                                                    </li>
                                                    <li class="dropdown-submenu">
                                                        <a href="#">Single Project</a>
                                                        <i class="fa fa-angle-down dropdown-trigger"></i>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="portfolio-single.html">Standard</a></li>
                                                            <li><a href="portfolio-single-2.html">Extended</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li> <!-- end portfolio -->

                                            <li class="dropdown">
                                                <a href="#">Blog</a>
                                                <i class="fa fa-angle-down dropdown-trigger"></i>
                                                <ul class="dropdown-menu">
                                                    <li><a href="blog-standard.html">Standard</a></li>
                                                    <li><a href="blog-masonry.html">Masonry</a></li>
                                                    <li><a href="blog-single.html">Single Post</a></li>
                                                    <li><a href="blog-no-sidebar.html">No Sidebar</a></li>
                                                </ul>
                                            </li>

                                            <li class="dropdown">
                                                <a href="#">Shop</a>
                                                <i class="fa fa-angle-down dropdown-trigger"></i>
                                                <ul class="dropdown-menu">
                                                    <li><a href="shop-catalog.html">Catalog</a></li>
                                                    <li><a href="shop-single.html">Single Product</a></li>
                                                    <li><a href="shop-cart.html">Cart</a></li>
                                                    <li><a href="shop-checkout.html">Checkout</a></li>
                                                </ul>
                                            </li>

                                            <li class="dropdown">
                                                <a href="#">Elements</a>
                                                <i class="fa fa-angle-down dropdown-trigger"></i>
                                                <ul class="dropdown-menu megamenu-wide">
                                                    <li>
                                                        <div class="megamenu-wrap container">
                                                            <div class="row">

                                                                <div class="col-md-3 megamenu-item">
                                                                    <span>Common Elements</span>
                                                                    <ul class="menu-list">
                                                                        <li><a href="accordions.html"><i class="fa fa-arrow-circle-o-down"></i>Accordions &amp; Toggles</a></li>
                                                                        <li><a href="tabs.html"><i class="fa fa-folder-o"></i>Tabs</a></li>                                  
                                                                        <li><a href="buttons.html"><i class="fa fa-hand-o-up"></i>Buttons</a></li>
                                                                        <li><a href="forms.html"><i class="fa fa-pencil-square-o"></i>Form Elements</a></li>
                                                                    </ul>
                                                                </div>

                                                                <div class="col-md-3 megamenu-item">
                                                                    <span>Interactive Elements</span>
                                                                    <ul class="menu-list">
                                                                        <li><a href="sliders.html"><i class="fa fa-clone"></i>Sliders</a></li>                                  
                                                                        <li><a href="lightboxes.html"><i class="fa fa-image"></i>Lightboxes</a></li>
                                                                        <li><a href="animations.html"><i class="fa fa-forward"></i>Animations</a></li>
                                                                        <li><a href="pricing-tables.html"><i class="fa fa-dollar"></i>Pricing Tables</a></li>
                                                                    </ul>
                                                                </div>

                                                                <div class="col-md-3 megamenu-item">
                                                                    <span>Infographics</span>
                                                                    <ul class="menu-list">
                                                                        <li><a href="icon-boxes.html"><i class="fa fa-lightbulb-o"></i>Icon Boxes</a></li>
                                                                        <li><a href="counters.html"><i class="fa fa-sort-numeric-desc"></i>Counters</a></li>
                                                                        <li><a href="pie-skills.html"><i class="fa fa-sliders"></i>Pies &amp; Skills</a></li>
                                                                        <li><a href="socials.html"><i class="fa fa-twitter"></i>Social Icons</a></li>                                  
                                                                    </ul>
                                                                </div>

                                                                <div class="col-md-3 megamenu-item">
                                                                    <span>Typography</span>
                                                                    <ul class="menu-list">
                                                                        <li><a href="columns.html"><i class="fa fa-columns"></i>Columns</a></li>
                                                                        <li><a href="alert-boxes.html"><i class="fa fa-exclamation-triangle"></i>Alert Boxes</a></li>
                                                                        <li><a href="tables.html"><i class="fa fa-table"></i>Tables</a></li>
                                                                        <li><a href="typography.html"><i class="fa fa-text-width"></i>Typography</a></li>
                                                                    </ul>
                                                                </div>

                                                            </div> 
                                                        </div>
                                                    </li>
                                                </ul>
                                            </li> <!-- end elements -->

                                            <li id="mobile-search" class="hidden-lg hidden-md">
                                                <form method="get" class="mobile-search">
                                                    <input type="search" class="form-control" placeholder="Search...">
                                                    <button type="submit" class="search-button">
                                                        <i class="ui-search"></i>
                                                    </button>
                                                </form>
                                            </li>

                                        </ul> <!-- end menu -->
                                    </div> <!-- end collapse -->
                                </div> <!-- end col -->

                                <!-- Nav Right -->
                                <div class="nav-right hidden-sm hidden-xs">
                                    <ul>
                                        <li class="nav-register">
                                            <a href="#">Log In / Register</a>
                                        </li>
                                        <li class="nav-search-wrap style-2 hidden-sm hidden-xs">
                                            <a href="#" class="nav-search search-trigger">
                                                <i class="ui-search"></i>
                                            </a>
                                        </li>
                                        <li class="nav-cart">
                                            <div class="nav-cart-outer">
                                                <div class="nav-cart-inner">
                                                    <a href="#" class="nav-cart-icon">
                                                        <span class="nav-cart-badge">2</span>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="nav-cart-container">
                                                <div class="nav-cart-items">

                                                    <div class="nav-cart-item clearfix">
                                                        <div class="nav-cart-img">
                                                            <a href="#">
                                                                <img src="img/shop/cart_small_1.jpg" alt="">
                                                            </a>
                                                        </div>
                                                        <div class="nav-cart-title">
                                                            <a href="#">
                                                                Ladies Bag
                                                            </a>
                                                            <div class="nav-cart-price">
                                                                <span>1 x</span>
                                                                <span>1250.00</span>
                                                            </div>
                                                        </div>
                                                        <div class="nav-cart-remove">
                                                            <a href="#"><i class="ui-close"></i></a>
                                                        </div>
                                                    </div>

                                                    <div class="nav-cart-item clearfix">
                                                        <div class="nav-cart-img">
                                                            <a href="#">
                                                                <img src="img/shop/cart_small_2.jpg" alt="">
                                                            </a>
                                                        </div>
                                                        <div class="nav-cart-title">
                                                            <a href="#">
                                                                Sequin Suit longer title
                                                            </a>
                                                            <div class="nav-cart-price">
                                                                <span>1 x</span>
                                                                <span>1250.00</span>
                                                            </div>
                                                        </div>
                                                        <div class="nav-cart-remove">
                                                            <a href="#"><i class="ui-close"></i></a>
                                                        </div>
                                                    </div>

                                                </div> <!-- end cart items -->

                                                <div class="nav-cart-summary">
                                                    <span>Cart Subtotal</span>
                                                    <span class="total-price">$1799.00</span>
                                                </div>

                                                <div class="nav-cart-actions mt-20">
                                                    <a href="../jsp/user/cart.jsp" class="btn btn-md btn-dark"><span>View Cart</span></a>
                                                    <a href="../jsp/user/checkout.jsp" class="btn btn-md btn-color mt-10"><span>Proceed to Checkout</span></a>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>      

                            </div> <!-- end row -->
                        </div> <!-- end container -->
                    </div> <!-- end navigation -->
                </nav> <!-- end navbar -->
            </header>

            <div class="content-wrapper oh">

                <!-- Breadcrumbs -->
                <div class="container">
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li>
                            <a href="index.html">Shop</a>
                        </li>
                        <li class="active">
                            Shop Catalog
                        </li>
                    </ol>
                </div> <!-- end breadcrumbs -->


                <!-- Catalogue -->
                <section class="section-wrap pt-80 pb-40 catalogue">
                    <div class="container relative">
                        <div class="row">

                            <div class="col-md-9 catalogue-col right mb-50">

                                <div class="shop-filter">
                                    <p class="result-count">Showing: 12 of 80 results</p>
                                    <form class="ecommerce-ordering">
                                        <select>
                                            <option value="default-sorting">Default Sorting</option>
                                            <option value="price-low-to-high">Price: high to low</option>
                                            <option value="price-high-to-low">Price: low to high</option>
                                            <option value="by-popularity">By Popularity</option>
                                            <option value="date">By Newness</option>
                                            <option value="rating">By Rating</option>
                                        </select>
                                    </form>
                                </div>

                                <div class="shop-catalogue grid-view">
                                    <c:forEach items="listProduct" var="product">
                                    <div class="row items-grid">

                                        <div class="col-md-4 col-xs-6 product product-grid">
                                            <div class="product-item">
                                                <div class="product-img">
                                                    <a href="product.htm?productsId=${product.productId}" title="${product.productName}">
                                                        <img src="/comestic-web/web/jsp/user/img/shop/${product.imageLink}" alt="${product.productName}">
                                                    </a>
                                                    <div class="product-label">
                                                        <span class="sale">sale</span>
                                                    </div>
                                                    <div class="product-actions">
                                                        <a href="product.htm?productsId=${product.productId}" title="${product.productName}" class="product-add-to-compare" data-toggle="tooltip" data-placement="bottom" title="Add to compare">
                                                            <i class="fa fa-exchange"></i>
                                                        </a>
                                                        <a href="product.htm?productsId=${product.productId}" title="${product.productName}" class="product-add-to-wishlist" data-toggle="tooltip" data-placement="bottom" title="Add to wishlist">
                                                            <i class="fa fa-heart"></i>
                                                        </a>                    
                                                    </div>
                                                    <a href="product.htm?productsId=${product.productId}" title="${product.productName}" class="product-quickview">${product.productName}</a>
                                                </div>

                                                    <div class="product-details">
                                                        <h3>
                                                            <a class="product-title" href="..jsp/user/productDetail.jsp?productId=${product.productId}" title="${product.productName}">${product.productName}</a>
                                                        </h3>
                                                        <span class="price">
                                                            <del>
                                                               <span>$${product.priceSale}</span>
                                                            </del>
                                                            <ins>
                                                                <span class="ammount">$${product.price}</span>
                                                            </ins>
                                                        </span>
                                                    </div>
                                            </div>
                                        </div> <!-- end product -->
                                    </c:forEach><!-- end forEach -->
                                    </div> <!-- end row -->
                                </div> <!-- end grid mode -->

                                <!-- Pagination -->
                                <div class="pagination-wrap clearfix">
                                    <p class="result-count">Showing: 12 of 80 results</p>                 
                                    <nav class="pagination right clearfix">
                                        <a href="#"><i class="fa fa-angle-left"></i></a>
                                        <span class="page-numbers current">1</span>
                                        <a href="#">2</a>
                                        <a href="#">3</a>
                                        <a href="#">4</a>
                                        <a href="#"><i class="fa fa-angle-right"></i></a>
                                    </nav>
                                </div>

                            </div> <!-- end col -->


                            <!-- Sidebar -->
                            <aside class="col-md-3 sidebar left-sidebar">

                                <!-- Search -->
                                <div class="widget search">
                                    <form class="relative">
                                        <input type="search" class="searchbox mb-0" placeholder="Search">
                                        <button type="submit" class="search-button"><i class="ui-search"></i></button>
                                    </form>
                                </div>

                                <!-- Categories -->
                                <div class="widget categories">
                                    <h3 class="widget-title heading uppercase relative bottom-line full-grey">Categories</h3>
                                    <ul class="list-dividers">
                                        <li>
                                            <a href="#">Women</a>
                                        </li>
                                        <li class="active-cat">
                                            <a href="#">Men</a>
                                        </li>
                                        <li>
                                            <a href="#">Accessories</a>
                                        </li>
                                        <li>
                                            <a href="#">Bags</a>
                                        </li>
                                        <li>
                                            <a href="#">Watches</a>
                                        </li>
                                        <li>
                                            <a href="#">Shoes</a>
                                        </li>
                                    </ul>
                                </div>

                                <!-- Filter by Price -->
                                <div class="widget filter-by-price clearfix">
                                    <h3 class="widget-title heading uppercase relative bottom-line full-grey">Filter by Price</h3>

                                    <div id="slider-range"></div>
                                    <p>
                                        <label for="amount">Price:</label>
                                        <input type="text" id="amount">
                                        <a href="#" class="btn btn-sm btn-stroke"><span>Filter</span></a>
                                    </p>
                                </div>

                                <!-- Color -->
                                <div class="widget filter-by-color">
                                    <h3 class="widget-title heading uppercase relative bottom-line full-grey">Color</h3>
                                    <ul class="color-select list-dividers">
                                        <li>
                                            <input type="checkbox" class="input-checkbox" id="green-color" name="green-color">
                                            <label for="green-color" class="checkbox-label">Green</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" class="input-checkbox" id="red-color" name="red-color">
                                            <label for="red-color" class="checkbox-label">Red</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" class="input-checkbox" id="blue-color" name="blue-color">
                                            <label for="blue-color" class="checkbox-label">Blue</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" class="input-checkbox" id="white-color" name="white-color">
                                            <label for="white-color" class="checkbox-label">White</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" class="input-checkbox" id="black-color" name="black-color">
                                            <label for="black-color" class="checkbox-label">Black</label>
                                        </li>
                                    </ul>
                                </div>

                                <!-- Size -->
                                <div class="widget filter-by-size">
                                    <h3 class="widget-title heading uppercase relative bottom-line full-grey">Size</h3>
                                    <ul class="size-select list-dividers">
                                        <li>
                                            <input type="checkbox" class="input-checkbox" id="small-size" name="small-size">
                                            <label for="small-size" class="checkbox-label">S</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" class="input-checkbox" id="medium-size" name="medium-size">
                                            <label for="medium-size" class="checkbox-label">M</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" class="input-checkbox" id="large-size" name="large-size">
                                            <label for="large-size" class="checkbox-label">L</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" class="input-checkbox" id="xlarge-size" name="xlarge-size">
                                            <label for="xlarge-size" class="checkbox-label">XL</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" class="input-checkbox" id="xxlarge-size" name="xxlarge-size">
                                            <label for="xxlarge-size" class="checkbox-label">XXL</label>
                                        </li>
                                    </ul>
                                </div>

                                <!-- Best Sellers -->
                                <div class="widget bestsellers">
                                    <div class="products-widget">
                                        <h3 class="widget-title heading uppercase relative bottom-line full-grey mb-30">Best Sellers</h3>
                                        <ul class="product-list-widget">
                                            <li class="clearfix">
                                                <a href="shop-single.html">
                                                    <img src="../jsp/user/img/shop/shop_item_9.jpg" alt="">
                                                    <span class="product-title">White Shirt</span>
                                                </a>
                                                <span class="price">
                                                    <ins>
                                                        <span class="ammount">$120.00</span>
                                                    </ins>
                                                </span>
                                            </li>
                                            <li class="clearfix">
                                                <a href="shop-single.html">
                                                    <img src="../jsp/user/img/shop/shop_item_10.jpg" alt="">
                                                    <span class="product-title">Street Hoddie</span>
                                                </a>
                                                <span class="price">
                                                    <ins>
                                                        <span class="ammount">$179.00</span>
                                                    </ins>
                                                </span>
                                            </li>               
                                        </ul>
                                    </div>
                                </div>

                                <!-- Tags -->
                                <div class="widget tags clearfix">
                                    <h3 class="widget-title heading uppercase relative bottom-line full-grey">Tags</h3>
                                    <a href="#">Multi-purpose</a>
                                    <a href="#">Creative</a>
                                    <a href="#">Elegant</a>
                                    <a href="#">Clean</a>
                                    <a href="#">Modern</a>
                                    <a href="#">Responsive</a>
                                    <a href="#">E-commerce</a>
                                    <a href="#">WordPress</a>
                                    <a href="#">Woocommerce</a>
                                    <a href="#">Store</a>
                                    <a href="#">Business</a>
                                </div>

                            </aside> <!-- end sidebar -->

                        </div> <!-- end row -->
                    </div> <!-- end container -->
                </section> <!-- end catalog -->

                <jsp:include page="footer.jsp" />

            </div> <!-- end content wrapper -->
        </main> <!-- end main wrapper -->

        <!-- jQuery Scripts -->
        <script type="text/javascript" src="../jsp/user/js/jquery.min.js"></script>
        <script type="text/javascript" src="../jsp/user/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="../jsp/user/js/plugins.js"></script>
        <script type="text/javascript" src="../jsp/user/js/scripts.js"></script>

    </body>
</html>
