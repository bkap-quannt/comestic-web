<%-- 
    Document   : index
    Created on : Feb 1, 2018, 8:27:41 PM
    Author     : Tuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cosmetic | Home</title>
        <jsp:include page="header.jsp"/>
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
                                                <img class="logo-dark" src="../jsp/user/img/logo_dark.png" alt="logo">
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
                                                <a href="../jsp/user/product.jsp">Shop</a>
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
                                                                <img src="../jsp/user/img/shop/cart_small_1.jpg" alt="">
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
                                                                <img src="../jsp/user/img/shop/cart_small_2.jpg" alt="">
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
                                                    <a href="shop-cart.html" class="btn btn-md btn-dark"><span>View Cart</span></a>
                                                    <a href="shop-checkout.html" class="btn btn-md btn-color mt-10"><span>Proceed to Checkout</span></a>
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

                <!-- Revolution Slider -->
                <section>
                    <div class="rev_slider_wrapper container" id="home">
                        <div class="rev_slider" id="slider5">
                            <ul>
                                <!-- SLIDE 1 -->
                                <li data-fstransition="fade"
                                    data-transition="fade"
                                    data-slotamount="1"
                                    data-masterspeed="1000"
                                    data-delay="50000"
                                    data-title="Creative Minimalism">

                                    <!-- MAIN IMAGE -->
                                    <img src="../jsp/user/img/revolution/transparent.png"
                                         alt=""
                                         data-bgposition="center center"
                                         data-bgrepeat="no-repeat"
                                         data-bgfit="cover"
                                         data-bgparallax="7"
                                         data-bgcolor="#f8f4f3"
                                         class="rev-slidebg">

                                    <!-- IMAGE -->
                                    <div class="tp-caption tp-resizeme"
                                         data-x="center"
                                         data-y="top"
                                         data-type="image" 
                                         data-transform_idle="o:1;s:900;"
                                         data-transform_in="x:-100;opacity:0;s:1000;e:Power3.easeOut;"
                                         data-transform_out="opacity:0;s:1000;e:Power3.easeInOut;"
                                         data-start="1000"><img src="../jsp/user/img/revolution/milan_slide_1.jpg" alt="" />
                                    </div>

                                    <!-- LINE -->
                                    <div class="tp-caption tp-shape hero-line dark"
                                         data-x="left"
                                         data-y="center"
                                         data-voffset="[-202, -202, -202, -202]"
                                         data-hoffset="[607, 600, 350, 150]"
                                         data-width="[176,134,100,150]"
                                         data-transform_idle="o:1;s:900;"
                                         data-transform_in="x:30px;opacity:0;s:1000;e:Power3.easeOut;"
                                         data-transform_out="x:30px;opacity:0;s:1000;e:Power3.easeInOut;"
                                         data-start="1200">
                                    </div>

                                    <!-- LAYER NR. 1 -->
                                    <div class="tp-caption medium-text alt-font italic dark uppercase"
                                         data-x="left"
                                         data-y="center"
                                         data-voffset="[-166,-166,-166,-166]"
                                         data-hoffset="[607,600,350,150]"
                                         data-fontsize="[14,14,14,14]"
                                         data-width="[none,none,none,300]"
                                         data-whitespace="[nowrap, nowrap, nowrap, normal]"
                                         data-transform_idle="o:1;s:900"
                                         data-transform_in="x:30px;opacity:0;s:1000;e:Power3.easeInOut;"
                                         data-transform_out="x:30px;opacity:0;s:1000;e:Power3.easeInOut;"
                                         data-start="1200"
                                         data-elementdelay="0.01">Simple and Elegant
                                    </div>

                                    <!-- LAYER NR. 2 -->
                                    <div class="tp-caption hero-text uppercase spacious dark"
                                         data-x="left"
                                         data-y="center"
                                         data-voffset="[-103,-103,-103,-110]"
                                         data-hoffset="[600,600,350,143]"
                                         data-fontsize="[80,70,60,50]"
                                         data-transform_idle="o:1;s:900"
                                         data-transform_in="x:30px;opacity:0;s:1000;e:Power3.easeInOut;"
                                         data-transform_out="x:30px;opacity:0;s:1000;e:Power3.easeInOut;"
                                         data-start="1200"
                                         data-elementdelay="0.01">BEST
                                    </div>

                                    <!-- LAYER NR. 3 -->
                                    <div class="tp-caption hero-text uppercase spacious dark"
                                         data-x="left"
                                         data-y="center"
                                         data-voffset="[-27,-27,-27,-60]"
                                         data-hoffset="[600,600,350,143]"
                                         data-fontsize="[80,70,60,50]"
                                         data-transform_idle="o:1;s:900"
                                         data-transform_in="x:30px;opacity:0;s:1000;e:Power3.easeInOut;"
                                         data-transform_out="x:30px;opacity:0;s:1000;e:Power3.easeInOut;"
                                         data-start="1200"
                                         data-elementdelay="0.01">DEALS
                                    </div>

                                    <!-- LINE -->
                                    <div class="tp-caption tp-shape hero-line dark"
                                         data-x="left"
                                         data-y="center"
                                         data-voffset="[34, 34, 34, -10]"
                                         data-hoffset="[607, 600, 350, 150]"
                                         data-width="[176,134,100,150]"
                                         data-transform_idle="o:1;s:900;"
                                         data-transform_in="x:30px;opacity:0;s:1000;e:Power3.easeOut;"
                                         data-transform_out="x:30px;opacity:0;s:1000;e:Power3.easeInOut;"
                                         data-start="1200">
                                    </div>              

                                    <!-- LAYER NR. 4 -->
                                    <div class="tp-caption medium-text dark"
                                         data-x="left"
                                         data-y="center"
                                         data-voffset="[86,86,86,70]"
                                         data-hoffset="[607,600,350,150]"
                                         data-fontsize="[18,18,18,18]"
                                         data-width="[none,400,400,300]"
                                         data-whitespace="[nowrap, normal, normal, normal]"
                                         data-transform_idle="o:1;s:900"
                                         data-transform_in="x:30px;opacity:0;s:1000;e:Power3.easeInOut;"
                                         data-transform_out="x:30px;opacity:0;s:1000;e:Power3.easeInOut;"
                                         data-start="1200"
                                         data-elementdelay="0.01">You can build awesome website with great user experience.<br> Multi-purpose solution for your business.
                                    </div>

                                    <!-- LAYER NR. 5 -->
                                    <div class="tp-caption tp-resizeme"
                                         data-x="left"
                                         data-y="center"
                                         data-lineheight="[44]"
                                         data-voffset="[163, 163, 163, 170]"
                                         data-hoffset="[607, 600, 350, 150]"
                                         data-transform_idle="o:1;s:900"
                                         data-transform_in="x:30px;opacity:0;s:1000;e:Power3.easeInOut;"
                                         data-transform_out="x:30px;opacity:0;s:1000;e:Power3.easeInOut;"
                                         data-start="1200"
                                         data-elementdelay="0.01"
                                         data-linktoslide="next"><a href='#' class='btn btn-lg btn-color'><span>Shop Now</span></a>
                                    </div>

                                </li>

                                <!-- SLIDE 2 -->
                                <li data-transition="fade"
                                    data-slotamount="1"
                                    data-masterspeed="1000"
                                    data-delay="50000"
                                    data-title="Creative Minimalism">

                                    <!-- MAIN IMAGE -->
                                    <img src="../jsp/user/img/revolution/transparent.png"
                                         alt=""
                                         data-bgposition="center center"
                                         data-bgrepeat="no-repeat"
                                         data-bgfit="cover"
                                         data-bgparallax="7"
                                         data-bgcolor="#d0cfd4"
                                         class="rev-slidebg">

                                    <!-- IMAGE -->
                                    <div class="tp-caption tp-resizeme"
                                         data-x="center"
                                         data-y="top"
                                         data-type="image" 
                                         data-transform_idle="o:1;s:900;"
                                         data-transform_in="x:100px;opacity:0;s:1000;e:Power3.easeOut;"
                                         data-transform_out="opacity:0;s:1000;e:Power3.easeInOut;"
                                         data-start="1000"><img src="../jsp/user/img/revolution/milan_slide_2.jpg" alt="" />
                                    </div>

                                    <!-- LINE -->
                                    <div class="tp-caption tp-shape hero-line"
                                         data-x="left"
                                         data-y="center"
                                         data-voffset="[-202, -202, -202, -202]"
                                         data-hoffset="[105, 50, 50, 50]"
                                         data-width="[176,134,100,150]"
                                         data-transform_idle="o:1;s:900;"
                                         data-transform_in="x:30px;opacity:0;s:1000;e:Power3.easeOut;"
                                         data-transform_out="x:30px;opacity:0;s:1000;e:Power3.easeInOut;"
                                         data-start="1200">
                                    </div>

                                    <!-- LAYER NR. 1 -->
                                    <div class="tp-caption medium-text alt-font italic dark uppercase"
                                         data-x="left"
                                         data-y="center"
                                         data-voffset="[-166,-166,-166,-166]"
                                         data-hoffset="[105, 50, 50, 50]"
                                         data-fontsize="[14,14,14,14]"
                                         data-width="[none,none,none,300]"
                                         data-whitespace="[nowrap, nowrap, nowrap, normal]"
                                         data-transform_idle="o:1;s:900"
                                         data-transform_in="x:30px;opacity:0;s:1000;e:Power3.easeOut;"
                                         data-transform_out="x:30px;opacity:0;s:1000;e:Power3.easeInOut;"
                                         data-start="1200"
                                         data-elementdelay="0.01">New collection
                                    </div>

                                    <!-- LAYER NR. 2 -->
                                    <div class="tp-caption hero-text uppercase spacious dark"
                                         data-x="left"
                                         data-y="center"
                                         data-voffset="[-103,-103,-103,-110]"
                                         data-hoffset="[98,50,50,50]"
                                         data-fontsize="[80,70,60,50]"
                                         data-transform_idle="o:1;s:900"
                                         data-transform_in="x:30px;opacity:0;s:1000;e:Power3.easeOut;"
                                         data-transform_out="x:30px;opacity:0;s:1000;e:Power3.easeInOut;"
                                         data-start="1200"
                                         data-elementdelay="0.01">vogue
                                    </div>

                                    <!-- LAYER NR. 3 -->
                                    <div class="tp-caption hero-text uppercase spacious dark"
                                         data-x="left"
                                         data-y="center"
                                         data-voffset="[-27,-27,-27,-60]"
                                         data-hoffset="[98,50,50,50]"
                                         data-fontsize="[80,70,60,50]"
                                         data-transform_idle="o:1;s:900"
                                         data-transform_in="x:30px;opacity:0;s:1000;e:Power3.easeOut;"
                                         data-transform_out="x:30px;opacity:0;s:1000;e:Power3.easeInOut;"
                                         data-start="1200"
                                         data-elementdelay="0.01">2017
                                    </div>

                                    <!-- LINE -->
                                    <div class="tp-caption tp-shape hero-line"
                                         data-x="left"
                                         data-y="center"
                                         data-voffset="[34, 34, 34, -10]"
                                         data-hoffset="[105, 50, 50, 50]"
                                         data-width="[176,134,100,150]"
                                         data-transform_idle="o:1;s:900;"
                                         data-transform_in="x:30px;opacity:0;s:1000;e:Power3.easeOut;"
                                         data-transform_out="x:30px;opacity:0;s:1000;e:Power3.easeInOut;"
                                         data-start="1200">
                                    </div>              

                                    <!-- LAYER NR. 4 -->
                                    <div class="tp-caption medium-text dark"
                                         data-x="left"
                                         data-y="center"
                                         data-voffset="[86,86,86,70]"
                                         data-hoffset="[105,50,50,50]"
                                         data-fontsize="[18,18,18,18]"
                                         data-transform_idle="o:1;s:900"
                                         data-width="[none,none,none,300]"
                                         data-whitespace="[nowrap, nowrap, nowrap, normal]"
                                         data-transform_in="x:30px;opacity:0;s:1000;e:Power3.easeOut;"
                                         data-transform_out="x:30px;opacity:0;s:1000;e:Power3.easeInOut;"
                                         data-start="1200"
                                         data-elementdelay="0.01">You can build awesome website with great user experience.<br> Multi-purpose solution for your business.
                                    </div>

                                    <!-- LAYER NR. 5 -->
                                    <div class="tp-caption tp-resizeme"
                                         data-x="left"
                                         data-y="center"
                                         data-lineheight="[44]"
                                         data-voffset="[163, 163, 163, 170]"
                                         data-hoffset="[105, 50, 50, 50]"
                                         data-transform_idle="o:1;s:500"
                                         data-transform_in="x:30px;opacity:0;s:1000;e:Power3.easeOut;"
                                         data-transform_out="x:30px;opacity:0;s:1000;e:Power3.easeInOut;"
                                         data-start="1200"
                                         data-elementdelay="0.01"
                                         data-linktoslide="next"><a href='#' class='btn btn-lg btn-color'><span>Shop Now</span></a>
                                    </div>

                                </li>

                                <!-- SLIDE 3 -->
                                <li data-transition="fade"
                                    data-slotamount="1"
                                    data-masterspeed="1000"
                                    data-delay="50000"
                                    data-title="Creative Minimalism">

                                    <!-- MAIN IMAGE -->
                                    <img src="../jsp/user/img/revolution/milan_slide_3.jpg"
                                         alt=""
                                         data-bgposition="center center"
                                         data-bgrepeat="no-repeat"
                                         data-bgfit="cover"
                                         data-bgparallax="7"
                                         class="rev-slidebg">

                                    <!-- LAYER NR. 1 -->
                                    <div class="tp-caption hero-text uppercase spacious"
                                         data-x="center"
                                         data-y="center"
                                         data-textAlign="center"
                                         data-width="[none,none,none,400]"
                                         data-whitespace="[nowrap, nowrap, nowrap, normal]"
                                         data-voffset="[-84,-80,-80,-80]"
                                         data-fontsize="[80,70,60,50]"
                                         data-frames='[{"from":"y:30px;opacity:0;","speed":1000,"to":"o:1;","delay":1200,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"y:30px;","ease":"Power3.easeInOut"}]'
                                         data-start="1200">Luxury collection
                                    </div>

                                    <!-- LAYER NR. 2 -->
                                    <div class="tp-caption medium-text"
                                         data-x="center"
                                         data-y="center"
                                         data-voffset="[-9,-9,-9,5]"
                                         data-fontsize="[18]"
                                         data-lineheight="[24]"
                                         data-textAlign="center"
                                         data-width="[none,none,none,400]"
                                         data-whitespace="[nowrap, nowrap, nowrap, normal]"
                                         data-frames='[{"from":"y:30px;opacity:0;","speed":1000,"to":"o:1;","delay":1200,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"y:30px;","ease":"Power3.easeInOut"}]'
                                         data-start="1200">You can build awesome website with great user experience.
                                    </div>

                                    <!-- LAYER NR. 3 -->
                                    <div class="tp-caption medium-text"
                                         data-x="center"
                                         data-y="center"
                                         data-voffset="[19,19,19,40]"
                                         data-fontsize="[18]"
                                         data-lineheight="[24]"
                                         data-textAlign="center"
                                         data-width="[none,none,none,400]"
                                         data-whitespace="[nowrap, nowrap, nowrap, normal]"
                                         data-frames='[{"from":"y:30px;opacity:0;","speed":1000,"to":"o:1;","delay":1200,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"y:30px;","ease":"Power3.easeInOut"}]'
                                         data-start="1200">Multi-purpose solution for your business.
                                    </div>

                                    <!-- LAYER NR. 4 -->
                                    <div class="tp-caption tp-resizeme"
                                         data-x="center"
                                         data-y="center"
                                         data-lineheight="[44]"
                                         data-voffset="[90, 90, 90, 100]"
                                         data-frames='[{"from":"y:30px;opacity:0;","speed":1000,"to":"o:1;","delay":1200,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"y:30px;","ease":"Power3.easeInOut"}]'
                                         data-start="1200"
                                         data-linktoslide="next"><a href='#' class='btn btn-lg btn-color'><span>Shop Now</span></a>
                                    </div>

                                </li>
                            </ul>

                        </div>
                    </div>
                </section> <!-- end rev slider -->      

                <!-- New Arrivals -->
                <section class="section-wrap-sm new-arrivals pb-50">
                    <div class="container">

                        <div class="row heading-row">
                            <div class="col-md-12 text-center">
                                <h2 class="heading uppercase"><small>New Arrivals</small></h2>
                            </div>
                        </div>

                        <div class="row items-grid">              

                            <div class="col-md-3 col-xs-6">
                                <div class="product-item">
                                    <div class="product-img">
                                        <a href="#">
                                            <img src="../jsp/user/img/shop/shop_item_1.jpg" alt="">
                                        </a>
                                        <div class="product-label">
                                            <span class="sale">sale</span>
                                        </div>
                                        <div class="product-actions">
                                            <a href="#" class="product-add-to-compare" data-toggle="tooltip" data-placement="bottom" title="Add to compare">
                                                <i class="fa fa-exchange"></i>
                                            </a>
                                            <a href="#" class="product-add-to-wishlist" data-toggle="tooltip" data-placement="bottom" title="Add to wishlist">
                                                <i class="fa fa-heart"></i>
                                            </a>                    
                                        </div>
                                        <a href="#" class="product-quickview">Quick View</a>
                                    </div>
                                    <div class="product-details">
                                        <h3>
                                            <a class="product-title" href="shop-single.html">Leather Bag</a>
                                        </h3>
                                        <span class="price">
                                            <del>
                                                <span>$388.00</span>
                                            </del>
                                            <ins>
                                                <span class="ammount">$159.99</span>
                                            </ins>
                                        </span>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-3 col-xs-6">
                                <div class="product-item">
                                    <div class="product-img">
                                        <a href="#">
                                            <img src="../jsp/user/img/shop/shop_item_2.jpg" alt="">
                                        </a>
                                        <div class="product-actions">
                                            <a href="#" class="product-add-to-compare" data-toggle="tooltip" data-placement="bottom" title="Add to compare">
                                                <i class="fa fa-exchange"></i>
                                            </a>
                                            <a href="#" class="product-add-to-wishlist" data-toggle="tooltip" data-placement="bottom" title="Add to wishlist">
                                                <i class="fa fa-heart"></i>
                                            </a>                    
                                        </div>
                                        <a href="#" class="product-quickview">Quick View</a>
                                    </div>
                                    <div class="product-details">
                                        <h3>
                                            <a class="product-title" href="shop-single.html">Elegant Dress</a>
                                        </h3>
                                        <span class="price">
                                            <ins>
                                                <span class="ammount">$219.00</span>
                                            </ins>
                                        </span>
                                    </div>                          
                                </div>
                            </div>

                            <div class="col-md-3 col-xs-6">
                                <div class="product-item">
                                    <div class="product-img">
                                        <a href="#">
                                            <img src="../jsp/user/img/shop/shop_item_3.jpg" alt="">
                                        </a>
                                        <span class="sold-out valign">out of stock</span>
                                        <div class="product-actions">
                                            <a href="#" class="product-add-to-compare" data-toggle="tooltip" data-placement="bottom" title="Add to compare">
                                                <i class="fa fa-exchange"></i>
                                            </a>
                                            <a href="#" class="product-add-to-wishlist" data-toggle="tooltip" data-placement="bottom" title="Add to wishlist">
                                                <i class="fa fa-heart"></i>
                                            </a>                    
                                        </div>
                                        <a href="#" class="product-quickview">Quick View</a>
                                    </div>
                                    <div class="product-details">
                                        <h3>
                                            <a class="product-title" href="shop-single.html">Mint Dress</a>
                                        </h3>
                                        <span class="price">
                                            <ins>
                                                <span class="ammount">$99.00</span>
                                            </ins>
                                        </span>
                                    </div>                        
                                </div>
                            </div>

                            <div class="col-md-3 col-xs-6">
                                <div class="product-item">
                                    <div class="product-img">
                                        <a href="#">
                                            <img src="../jsp/user/img/shop/shop_item_4.jpg" alt="">
                                        </a>
                                        <div class="product-actions">
                                            <a href="#" class="product-add-to-compare" data-toggle="tooltip" data-placement="bottom" title="Add to compare">
                                                <i class="fa fa-exchange"></i>
                                            </a>
                                            <a href="#" class="product-add-to-wishlist" data-toggle="tooltip" data-placement="bottom" title="Add to wishlist">
                                                <i class="fa fa-heart"></i>
                                            </a>                    
                                        </div>
                                        <a href="#" class="product-quickview">Quick View</a>
                                    </div>
                                    <div class="product-details">
                                        <h3>
                                            <a class="product-title" href="shop-single.html">Leather Shoes</a>
                                        </h3>
                                        <span class="price">
                                            <ins>
                                                <span class="ammount">$120.00</span>
                                            </ins>
                                        </span>
                                    </div>                        
                                </div>
                            </div>            

                            <div class="col-md-3 col-xs-6">
                                <div class="product-item">
                                    <div class="product-img">
                                        <a href="#">
                                            <img src="../jsp/user/img/shop/shop_item_5.jpg" alt="">
                                        </a>
                                        <div class="product-actions">
                                            <a href="#" class="product-add-to-compare" data-toggle="tooltip" data-placement="bottom" title="Add to compare">
                                                <i class="fa fa-exchange"></i>
                                            </a>
                                            <a href="#" class="product-add-to-wishlist" data-toggle="tooltip" data-placement="bottom" title="Add to wishlist">
                                                <i class="fa fa-heart"></i>
                                            </a>                    
                                        </div>
                                        <a href="#" class="product-quickview">Quick View</a>
                                    </div>

                                    <div class="product-details">
                                        <h3>
                                            <a class="product-title" href="shop-single.html">Business Suit</a>
                                        </h3>
                                        <span class="price">
                                            <ins>
                                                <span class="ammount">$399.00</span>
                                            </ins>
                                        </span>
                                    </div>                          
                                </div>
                            </div>

                            <div class="col-md-3 col-xs-6">
                                <div class="product-item">
                                    <div class="product-img">
                                        <a href="#">
                                            <img src="../jsp/user/img/shop/shop_item_6.jpg" alt="">
                                        </a>
                                        <div class="product-label">
                                            <span class="sale">sale</span>
                                        </div>
                                        <div class="product-actions">
                                            <a href="#" class="product-add-to-compare" data-toggle="tooltip" data-placement="bottom" title="Add to compare">
                                                <i class="fa fa-exchange"></i>
                                            </a>
                                            <a href="#" class="product-add-to-wishlist" data-toggle="tooltip" data-placement="bottom" title="Add to wishlist">
                                                <i class="fa fa-heart"></i>
                                            </a>                    
                                        </div>
                                        <a href="#" class="product-quickview">Quick View</a>
                                    </div>

                                    <div class="product-details">
                                        <h3>
                                            <a class="product-title" href="shop-single.html">Classic Watch</a>
                                        </h3>
                                        <span class="price">
                                            <ins>
                                                <span class="ammount">$119.00</span>
                                            </ins>
                                        </span>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-3 col-xs-6">
                                <div class="product-item">
                                    <div class="product-img">
                                        <a href="#">
                                            <img src="../jsp/user/img/shop/shop_item_7.jpg" alt="">
                                        </a>
                                        <div class="product-actions">
                                            <a href="#" class="product-add-to-compare" data-toggle="tooltip" data-placement="bottom" title="Add to compare">
                                                <i class="fa fa-exchange"></i>
                                            </a>
                                            <a href="#" class="product-add-to-wishlist" data-toggle="tooltip" data-placement="bottom" title="Add to wishlist">
                                                <i class="fa fa-heart"></i>
                                            </a>                    
                                        </div>
                                        <a href="#" class="product-quickview">Quick View</a>
                                    </div>

                                    <div class="product-details">
                                        <h3>
                                            <a class="product-title" href="shop-single.html">Summer Shorts</a>
                                        </h3>
                                        <span class="price">
                                            <ins>
                                                <span class="ammount">$1379.00</span>
                                            </ins>
                                        </span>
                                    </div>              
                                </div>
                            </div>

                            <div class="col-md-3 col-xs-6">
                                <div class="product-item">
                                    <div class="product-img">
                                        <a href="#">
                                            <img src="../jsp/user/img/shop/shop_item_8.jpg" alt="">
                                        </a>
                                        <div class="product-label">
                                            <span class="sale">sale</span>
                                        </div>
                                        <div class="product-actions">
                                            <a href="#" class="product-add-to-compare" data-toggle="tooltip" data-placement="bottom" title="Add to compare">
                                                <i class="fa fa-exchange"></i>
                                            </a>
                                            <a href="#" class="product-add-to-wishlist" data-toggle="tooltip" data-placement="bottom" title="Add to wishlist">
                                                <i class="fa fa-heart"></i>
                                            </a>                    
                                        </div>
                                        <a href="#" class="product-quickview">Quick View</a>
                                    </div>

                                    <div class="product-details">
                                        <h3>
                                            <a class="product-title" href="shop-single.html">Autumn Coat</a>
                                        </h3>
                                        <span class="price">
                                            <del>
                                                <span>$350.00</span>
                                            </del>
                                            <ins>
                                                <span class="ammount">$150.00</span>
                                            </ins>
                                        </span>
                                    </div>                  

                                </div>
                            </div>
                        </div> <!-- end row -->
                    </div>
                </section> <!-- end new arrivals -->

                <!-- Promo Banners -->
                <section class="section-wrap-sm promo-banners pt-0 pb-30">
                    <div class="container">
                        <div class="row heading-row">
                            <div class="col-md-12 text-center">
                                <h2 class="heading uppercase"><small>Collections</small></h2>
                            </div>
                        </div>
                        <div class="row">

                            <div class="col-xs-4 col-xxs-12 mb-30 promo-banner">
                                <a href="#">
                                    <img src="../jsp/user/img/shop/collection_1.jpg" alt="">
                                    <div class="promo-inner valign">
                                        <h2 class="uppercase">Women</h2>
                                    </div>
                                </a>                        
                            </div>

                            <div class="col-xs-4 col-xxs-12 mb-30 promo-banner">
                                <a href="#">
                                    <img src="../jsp/user/img/shop/collection_2.jpg" alt="">
                                    <div class="promo-inner valign">
                                        <h2 class="uppercase">Men</h2>
                                    </div>
                                </a>                        
                            </div>

                            <div class="col-xs-4 col-xxs-12 mb-30 promo-banner">
                                <a href="#">
                                    <img src="../jsp/user/img/shop/collection_3.jpg" alt="">
                                    <div class="promo-inner valign">
                                        <h2 class="uppercase">Accessories</h2>
                                    </div>
                                </a>                        
                            </div>

                        </div>
                    </div>
                </section> <!-- end promo banners -->

                <!-- Partners -->
                <section class="section-wrap partners pt-40 pb-40">
                    <div class="container">
                        <div class="row">

                            <div id="owl-partners" class="owl-carousel owl-theme">

                                <div class="item">
                                    <a href="#">
                                        <img src="../jsp/user/img/partners/partner_logo_dark_1.png" alt="">
                                    </a>
                                </div>
                                <div class="item">
                                    <a href="#">
                                        <img src="../jsp/user/img/partners/partner_logo_dark_2.png" alt="">
                                    </a>
                                </div>
                                <div class="item">
                                    <a href="#">
                                        <img src="../jsp/user/img/partners/partner_logo_dark_3.png" alt="">
                                    </a>
                                </div>
                                <div class="item">
                                    <a href="#">
                                        <img src="../jsp/user/img/partners/partner_logo_dark_4.png" alt="">
                                    </a>
                                </div>
                                <div class="item">
                                    <a href="#">
                                        <img src="../jsp/user/img/partners/partner_logo_dark_5.png" alt="">
                                    </a>
                                </div>
                                <div class="item">
                                    <a href="#">
                                        <img src="../jsp/user/img/partners/partner_logo_dark_6.png" alt="">
                                    </a>
                                </div>
                                <div class="item">
                                    <a href="#">
                                        <img src="../jsp/user/img/partners/partner_logo_dark_1.png" alt="">
                                    </a>
                                </div>
                                <div class="item">
                                    <a href="#">
                                        <img src="../jsp/user/img/partners/partner_logo_dark_2.png" alt="">
                                    </a>
                                </div>

                            </div> <!-- end carousel -->

                        </div>
                    </div>
                </section> <!-- end partners -->

                <jsp:include page="footer.jsp" />
            </div> <!-- end content wrapper -->
        </main> <!-- end main wrapper -->

        <!-- jQuery Scripts -->
        <script type="text/javascript" src="../jsp/user/js/jquery.min.js"></script>
        <script type="text/javascript" src="../jsp/user/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="../jsp/user/js/plugins.js"></script>
        <script type="text/javascript" src="../jsp/user/revolution/js/jquery.themepunch.tools.min.js"></script>
        <script type="text/javascript" src="revolution/js/jquery.themepunch.revolution.min.js"></script>
        <script type="text/javascript" src="../jsp/user/js/rev-slider.js"></script>
        <script type="text/javascript" src="../jsp/user/js/scripts.js"></script>


        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.video.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.carousel.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.actions.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.navigation.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.migration.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.parallax.min.js"></script>
    </body>
</html>
