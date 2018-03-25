<%-- 
    Document   : product-detail
    Created on : Feb 6, 2018, 9:29:40 AM
    Author     : Tuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <title>Gaze | Product Detail</title>
         <jsp:include page="header.jsp" />
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
                      <img class="logo-dark" src="img/logo_dark.png" alt="logo">
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
            Catalog Grid
          </li>
        </ol> <!-- end breadcrumbs -->
      </div> 

      <!-- Single Product -->
      <section class="section-wrap single-product pt-50 pb-60">
        <div class="container relative">
          <div class="row">

            <div class="col-lg-6 col-md-6 col-xs-12 mb-60">

              <div class="flickity flickity-slider-wrap mfp-hover" id="gallery-main">

                <div class="gallery-cell">
                  <a href="img/shop/item_lg_1.jpg" class="lightbox-img">
                    <img src="img/shop/item_lg_1.jpg" alt="" />
                    <i class="icon arrow_expand_alt zoom-icon"></i>
                  </a>
                </div>
                <div class="gallery-cell">
                  <a href="img/shop/item_lg_2.jpg" class="lightbox-img">
                    <img src="img/shop/item_lg_2.jpg" alt="" />
                    <i class="icon arrow_expand_alt zoom-icon"></i>
                  </a>
                </div>
                <div class="gallery-cell">
                  <a href="img/shop/item_lg_3.jpg" class="lightbox-img">
                    <img src="img/shop/item_lg_3.jpg" alt="" />
                    <i class="icon arrow_expand_alt zoom-icon"></i>
                  </a>
                </div>
                <div class="gallery-cell">
                  <a href="img/shop/item_lg_4.jpg" class="lightbox-img">
                    <img src="img/shop/item_lg_4.jpg" alt="" />
                    <i class="icon arrow_expand_alt zoom-icon"></i>
                  </a>
                </div>
              </div> <!-- end gallery main -->

              <div class="gallery-thumbs">
                <div class="gallery-cell">
                  <img src="img/shop/item_thumb_1.jpg" alt="" />
                </div>
                <div class="gallery-cell">
                  <img src="img/shop/item_thumb_2.jpg" alt="" />
                </div>
                <div class="gallery-cell">
                  <img src="img/shop/item_thumb_3.jpg" alt="" />
                </div>
                <div class="gallery-cell">
                  <img src="img/shop/item_thumb_4.jpg" alt="" />
                </div>
              </div> <!-- end gallery thumbs -->

            </div> <!-- end col img slider -->

            <div class="col-lg-4 col-lg-offset-1 col-md-6 col-xs-12 product-description-wrap">
              <h1 class="product-title">man business coat</h1>
              <span class="rating">
                <a href="#">3 Reviews</a>
              </span>
              <span class="price">
                <del>
                  <span>$1550.00</span>
                </del>
                <ins>
                  <span class="ammount">$1250.00</span>
                </ins>
              </span>
              <p class="product-description">Our Shop is a very slick and clean e-Our Theme is a very slick and clean e-commerce template with endless possibilities. Creating an awesome website with this Theme is easy than you can imagine. Our Theme is a very slick and clean e-commerce template with endless possibilities.</p>

              <div class="select-options">
                <div class="row row-20">
                  <div class="col-sm-6">
                    <select class="color-select">
                      <option value>Select color</option>
                      <option value="white">white</option>
                      <option value="grey">grey</option>
                      <option value="black">black</option>
                      <option value="green">green</option>
                      <option value="blue">blue</option>
                    </select>
                  </div>

                  <div class="col-sm-6">
                    <select class="size-options">
                      <option value>Select size</option>
                      <option value="XS">XS</option>
                      <option value="S">S</option>
                      <option value="M">M</option>
                      <option value="L">L</option>
                      <option value="XL">XL</option>
                    </select>
                  </div>
                </div>
              </div>

              <ul class="product-actions clearfix">
                <li>
                  <div class="quantity buttons_added">
                    <input type="button" value="-" class="minus" /><input type="number" step="1" min="0" value="1" title="Qty" class="input-text qty text" /><input type="button" value="+" class="plus" />
                  </div>
                </li>
                <li>
                  <a href="#" class="btn btn-color btn-lg add-to-cart left"><span>Add to Cart</span></a>
                </li>                          
              </ul>

              <div class="add-to-wishlist">
                <a href="#"><i class="fa fa-heart"></i> Add to wishlist</a>
              </div>

              <div class="product_meta">
                <span class="brand_as">Brand: <a href="#">Mr. Porter</a></span>
                <span class="posted_in">Category: <a href="#">Coats</a></span>
                <span class="sku">SKU: <a href="#">111763</a></span>
              </div>

              <div class="socials-share mb-30 clearfix">
                <span>Share:</span>
                <div class="social-icons nobase dark">
                  <a href="#"><i class="fa fa-twitter"></i></a>
                  <a href="#"><i class="fa fa-facebook"></i></a>
                  <a href="#"><i class="fa fa-google-plus"></i></a>
                  <a href="#"><i class="fa fa-linkedin"></i></a>
                  <a href="#"><i class="fa fa-vimeo"></i></a>
                </div>
              </div>
            </div> <!-- end col product description -->
          </div> <!-- end row -->

          <!-- tabs -->
          <div class="row">
            <div class="col-md-12">
              <div class="tabs tabs-bb">
                <ul class="nav nav-tabs">                                 
                  <li class="active">
                    <a href="#tab-description" data-toggle="tab">Description</a>
                  </li>                                 
                  <li>
                    <a href="#tab-info" data-toggle="tab">Information</a>
                  </li>                                 
                  <li>
                    <a href="#tab-reviews" data-toggle="tab">Reviews</a>
                  </li>                                 
                </ul> <!-- end tabs -->
                
                <!-- tab content -->
                <div class="tab-content pb-0">
                  
                  <div class="tab-pane fade in active" id="tab-description">
                    <div class="row">
                      <div class="col-sm-6">
                        <p>We possess within us two minds. So far I have written only of the conscious mind. I would now like to introduce you to your second mind, the hidden and mysterious subconscious. Our subconscious mind contains such power and complexity that it literally staggers the imagination.And finally the subconscious is the mechanism through which thought.</p>
                      </div>
                      <div class="col-sm-6">
                        <p>We possess within us two minds. So far I have written only of the conscious mind. I would now like to introduce you to your second mind, the hidden and mysterious subconscious. Our subconscious mind contains such power and complexity that it literally staggers the imagination.And finally the subconscious is the mechanism through which thought.</p>
                      </div>
                    </div>
                    
                  </div>
                  
                  <div class="tab-pane fade" id="tab-info">
                    <table class="table">

                      <tbody>
                        <tr>
                          <th>CPU</th>
                          <td>2.7GHz quad-core Intel Core i5 Turbo Boost up to 3.2GHz</td>
                        </tr>
                        <tr>
                          <th>RAM</th>
                          <td>8GB (two 4GB) memory</td>
                        </tr>
                        <tr>
                          <th>Video</th>
                          <td>Intel Iris Pro Graphics</td>
                        </tr>                                     
                      </tbody>
                    </table>
                  </div>
                  
                  <div class="tab-pane fade" id="tab-reviews">

                    <div class="reviews">
                      <ul class="reviews-list">
                        <li>
                          <div class="review-body">
                            <div class="review-content">
                              <p class="review-author"><strong>Alexander Samokhin</strong> - May 6, 2014 at 12:48 pm</p>
                              <div class="rating">
                                <a href="#"></a>
                              </div>
                              <p>This template is so awesome. I didn’t expect so many features inside. E-commerce pages are very useful, you can launch your online store in few seconds. I will rate 5 stars.</p>
                            </div>
                          </div>
                        </li>

                        <li>
                          <div class="review-body">
                            <div class="review-content">
                              <p class="review-author"><strong>Christopher Robins</strong> - May 6, 2014 at 12:48 pm</p>
                              <div class="rating">
                                <a href="#"></a>
                              </div>
                              <p>This template is so awesome. I didn’t expect so many features inside. E-commerce pages are very useful, you can launch your online store in few seconds. I will rate 5 stars.</p>
                            </div>
                          </div>
                        </li>

                      </ul>         
                    </div> <!--  end reviews -->
                  </div>
                  
                </div> <!-- end tab content -->

              </div>
            </div> <!-- end tabs -->
          </div> <!-- end row -->

          
        </div> <!-- end container -->
      </section> <!-- end single product -->

      <!-- Related Items -->
      <section class="section-wrap-sm shop-items-slider pt-0">
        <div class="container">
          <div class="row heading-row">
            <div class="col-md-12 text-center">
              <h2 class="heading uppercase"><small>Related Products</small></h2>
            </div>
          </div>

          <div class="row">

            <div id="owl-shop-items-slider" class="owl-carousel owl-theme">

              <div class="product">
                <div class="product-item">
                  <div class="product-img">
                    <a href="#">
                      <img src="img/shop/shop_item_1.jpg" alt="">
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
                      <a class="product-title" href="shop-single-product.html">Leather Bag</a>
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
              </div> <!-- end product -->


              <div class="product">
                <div class="product-item">
                  <div class="product-img">
                    <a href="#">
                      <img src="img/shop/shop_item_2.jpg" alt="">
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
                      <a class="product-title" href="shop-single-product.html">Elegant Dress</a>
                    </h3>
                    <span class="price">
                      <ins>
                        <span class="ammount">$219.00</span>
                      </ins>
                    </span>
                  </div>
                    
                </div>
              </div> <!-- end product -->


              <div class="product">
                <div class="product-item">
                  <div class="product-img">
                    <a href="#">
                      <img src="img/shop/shop_item_3.jpg" alt="">
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
                      <a class="product-title" href="shop-single-product.html">Mint Dress</a>
                    </h3>
                    <span class="price">
                      <ins>
                        <span class="ammount">$99.00</span>
                      </ins>
                    </span>
                  </div>

                </div>
              </div> <!-- end product -->


              <div class="product">
                <div class="product-item">
                  <div class="product-img">
                    <a href="#">
                      <img src="img/shop/shop_item_4.jpg" alt="">
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
                      <a class="product-title" href="shop-single-product.html">Leather Shoes</a>
                    </h3>
                    <span class="price">
                      <ins>
                        <span class="ammount">$120.00</span>
                      </ins>
                    </span>
                  </div> 

                </div>
              </div> <!-- end product -->


              <div class="product">
                <div class="product-item">
                  <div class="product-img">
                    <a href="#">
                      <img src="img/shop/shop_item_5.jpg" alt="">
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
                      <a class="product-title" href="shop-single-product.html">Business Suit</a>
                    </h3>
                    <span class="price">
                      <ins>
                        <span class="ammount">$399.00</span>
                      </ins>
                    </span>
                  </div>
              
                </div>
              </div> <!-- end product -->

              <div class="product">
                <div class="product-item">
                  <div class="product-img">
                    <a href="#">
                      <img src="img/shop/shop_item_6.jpg" alt="">
                    </a>
                    <div class="product-label">
                      <span class="hot">hot</span>
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
                      <a class="product-title" href="shop-single-product.html">Classic Watch</a>
                    </h3>
                    <span class="price">
                      <ins>
                        <span class="ammount">$119.00</span>
                      </ins>
                    </span>
                  </div>

                </div>
              </div> <!-- end product -->

            </div> <!-- end owl -->
          </div>
        </div>
      </section> <!-- end Related Items -->

      <jsp:include page="footer.jsp" />

    </div> <!-- end content wrapper -->
  </main> <!-- end main wrapper -->

  <!-- jQuery Scripts -->
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/plugins.js"></script>
  <script type="text/javascript" src="js/scripts.js"></script>
    
</body>
</html>
