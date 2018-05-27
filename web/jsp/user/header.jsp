<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="head.jsp"></jsp:include>
<header class="nav-type-1">
    <!-- Fullscreen search -->
    <div class="search-wrap">
        <div class="search-inner">
            <div class="search-cell">
                <form action="<%=request.getContextPath()%>/index/search.htm" method="get">
                    <div class="search-field-holder">
                        <input type="search" class="form-control main-search-input" name="query" placeholder="Search for">
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
                                        <c:if test="${listCart.size() > 0}">
                                            <span class="nav-cart-badge">${listCart.size()}</span>
                                        </c:if>
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
                                        <li><a href="<%=request.getContextPath()%>/index/error.htm">404</a></li>
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
                                    <a href="<%=request.getContextPath()%>/index/allProduct.htm">Shop</a>
                                    <i class="fa fa-angle-down dropdown-trigger"></i>
                                    <ul class="dropdown-menu">
                                        <li><a href="<%=request.getContextPath()%>/index/allProduct.htm">Catalog</a></li>
                                        <li><a href="<%=request.getContextPath()%>/index/productDetail.htm?productId=8">Single Product</a></li>
                                        <li><a href="<%=request.getContextPath()%>/carts/viewCart.htm">Cart</a></li>
                                        <li><a href="<%=request.getContextPath()%>/index/checkout.htm">Checkout</a></li>
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
                                    <form action="<%=request.getContextPath()%>/index/search.htm" method="get" class="mobile-search">
                                        <input type="search" name="query" class="form-control" placeholder="Search...">
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
                            <c:choose>
                                <c:when test='<%= request.getSession().getAttribute("account") == null %>'>
                                    <li class="nav-register">
                                        <a href="<%=request.getContextPath()%>/index/loginRegister.htm">Log In / Register</a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li class="nav-register">
                                        <a href="#"><b>Hello:  <%= request.getSession().getAttribute("account")%></b></a>
                                    </li>

                                    <li class="nav-register">
                                        <a href="<%=request.getContextPath()%>/index/logoutRegister.htm">Log out</a>
                                    </li>
                                </c:otherwise>
                            </c:choose>
<!--                            <li class="nav-register">
                                <a href="<%=request.getContextPath()%>/index/loginRegister.htm">Log In / Register</a>
                            </li>-->
                            <li class="nav-search-wrap style-2 hidden-sm hidden-xs">
                                <a href="#" class="nav-search search-trigger">
                                    <i class="ui-search"></i>
                                </a>
                            </li>
                            <li class="nav-cart">
                                <div class="nav-cart-outer">
                                    <div class="nav-cart-inner">
                                        <a href="#" class="nav-cart-icon">
                                            <c:if test="${listCart.size() > 0}">
                                                <span class="nav-cart-badge">${listCart.size()}</span>
                                            </c:if>
                                        </a>
                                    </div>
                                </div>
                                <div class="nav-cart-container">
                                    <c:if test="${listCart.size() > 0}">
                                        <c:forEach items="${listCart}" var="cart">
                                            <div class="nav-cart-items">
                                                <div class="nav-cart-item clearfix">
                                                    <div class="nav-cart-img">
                                                        <a href="<%=request.getContextPath()%>/index/productDetail.htm?productId=${cart.product.productId}">
                                                            <img src="../jsp/user/img/shop/${cart.product.imageLink}" alt="${cart.product.imageLink}" width="50px" height="65px">
                                                        </a>
                                                    </div>
                                                    <div class="nav-cart-title">
                                                        <a href="index/productDetail.htm?productId=${cart.product.productId}">
                                                            ${cart.product.productName}
                                                        </a>
                                                        <div class="nav-cart-price">
                                                            <span>${cart.quantity} x</span>
                                                            <span>${cart.product.price * cart.quantity}</span>
                                                        </div>
                                                    </div>
                                                    <div class="nav-cart-remove">
                                                        <a href="<%=request.getContextPath()%>/carts/remove.htm?productId=${cart.product.productId}" onclick="return confirm('Are You Sure?')" ><i class="ui-close"></i></a>
                                                    </div>
                                                </div>
                                            </div> <!-- end cart items -->
                                        </c:forEach>
                                    </c:if>
                                    <div class="nav-cart-summary">
                                        <span>Cart Subtotal</span>
                                        <span class="total-price">$${totalAmount}</span>
                                    </div>

                                    <div class="nav-cart-actions mt-20">
<!--                                        <form action="<%=request.getContextPath()%>/carts/addCart.htm?productId=${cart.product.productId}" method="POST">
                                            <input type="submit" value="View Cart" class="btn btn-md btn-dark" style="width:220px" />
                                        </form>-->
                                        <a href="<%=request.getContextPath()%>/carts/viewCart.htm" class="btn btn-md btn-dark"><span>View Cart</span></a>
                                        <a href="<%=request.getContextPath()%>/index/checkout.htm" class="btn btn-md btn-color mt-10"><span>Proceed to Checkout</span></a>
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
