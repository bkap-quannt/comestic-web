<%-- 
    Document   : cart
    Created on : Feb 1, 2018, 8:29:49 PM
    Author     : Tuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cosmetic | Cart</title>
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
            Shop Cart
          </li>
        </ol>
      </div> <!-- end breadcrumbs -->


      <!-- Cart -->
      <section class="section-wrap shopping-cart pt-40 pb-70">
        <div class="container relative">
          <div class="row">

            <div class="col-md-8">
              <div class="table-wrap mb-40">
                <table class="shop_table cart table">
                  <thead>
                    <tr>
                      <th class="product-name" colspan="2">Product</th>
                      <th class="product-price">Price</th>
                      <th class="product-quantity">Quantity</th>
                      <th class="product-subtotal" colspan="2">Total</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr class="cart_item">
                      <td class="product-thumbnail">
                        <a href="#">
                          <img src="img/shop/shop_item_3.jpg" alt="">
                        </a>
                      </td>
                      <td class="product-name">
                        <a href="#">Fashion Shorts</a>
                        <ul>
                          <li>Size: XL</li>
                          <li>Color: White</li>
                        </ul>
                      </td>
                      <td class="product-price">
                        <span class="amount">$1250.00</span>
                      </td>
                      <td class="product-quantity">
                        <div class="quantity buttons_added">
                          <input type="button" value="-" class="minus" /><input type="number" step="1" min="0" value="1" title="Qty" class="input-text qty text" /><input type="button" value="+" class="plus">
                        </div>
                      </td>
                      <td class="product-subtotal">
                        <span class="amount">$1250.00</span>
                      </td>
                      <td class="product-remove">
                        <a href="#" class="remove" title="Remove this item">
                          <i class="ui-close"></i>
                        </a>
                      </td>
                    </tr>

                    <tr class="cart_item">
                      <td class="product-thumbnail">
                        <a href="#">
                          <img src="img/shop/shop_item_7.jpg" alt="">
                        </a>
                      </td>
                      <td class="product-name">
                        <a href="#">Business Suit</a>
                        <ul>
                          <li>Size: L</li>
                          <li>Color: Black</li>
                        </ul>
                      </td>
                      <td class="product-price">
                        <span class="amount">$240.00</span>
                      </td>
                      <td class="product-quantity">
                        <div class="quantity buttons_added">
                          <input type="button" value="-" class="minus" /><input type="number" step="1" min="0" value="1" title="Qty" class="input-text qty text" /><input type="button" value="+" class="plus" />
                        </div>
                      </td>
                      <td class="product-subtotal">
                        <span class="amount">$240.00</span>
                      </td>
                      <td class="product-remove">
                        <a href="#" class="remove" title="Remove this item">
                          <i class="ui-close"></i>
                        </a>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>

              <div class="row">
                <!-- Coupon -->            
                <div class="col-md-5 col-sm-12">
                  <div class="coupon mb-30">
                    <h2 class="heading uppercase mb-20">Coupon</h2>
                    <input type="text" name="coupon_code" id="coupon_code" class="input-text" value placeholder="Coupon code">
                    <input type="submit" name="apply_coupon" class="btn btn-md btn-dark" value="Apply">
                  </div>
                </div>

                <!-- Calculate Shipping -->
                <div class="col-md-7 col-sm-12 mb-30">
                  <div class="shipping-calculator-form">
                    <h2 class="heading uppercase mb-20">Calculate Shipping</h2>
                    <p class="form-row form-row-wide">
                      <select name="calc_shipping_country" id="calc_shipping_country" class="country_to_state" rel="calc_shipping_state">
                        <option>Select a country…</option>
                        <option value="AF">Afghanistan</option>
                        <option value="AX">Åland Islands</option>
                        <option value="AL">Albania</option>
                        <option value="DZ">Algeria</option>
                        <option value="AS">American Samoa</option>
                        <option value="AD">Andorra</option>
                        <option value="AO">Angola</option>
                        <option value="AI">Anguilla</option>
                        <option value="AQ">Antarctica</option>
                        <option value="AG">Antigua and Barbuda</option>
                        <option value="AR">Argentina</option>
                        <option value="AM">Armenia</option>
                        <option value="AW">Aruba</option>
                        <option value="AU">Australia</option>
                        <option value="AT">Austria</option>
                        <option value="AZ">Azerbaijan</option>
                        <option value="BS">Bahamas</option>
                        <option value="BH">Bahrain</option>
                        <option value="BD">Bangladesh</option>
                        <option value="BB">Barbados</option>
                        <option value="BY">Belarus</option>
                        <option value="BE">Belgium</option>
                        <option value="BZ">Belize</option>
                        <option value="BJ">Benin</option>
                        <option value="BM">Bermuda</option>
                        <option value="BT">Bhutan</option>
                        <option value="BO">Bolivia, Plurinational State of</option>
                        <option value="BQ">Bonaire, Sint Eustatius and Saba</option>
                        <option value="BA">Bosnia and Herzegovina</option>
                        <option value="BW">Botswana</option>
                        <option value="BV">Bouvet Island</option>
                        <option value="BR">Brazil</option>
                        <option value="IO">British Indian Ocean Territory</option>
                        <option value="BN">Brunei Darussalam</option>
                        <option value="BG">Bulgaria</option>
                        <option value="BF">Burkina Faso</option>
                        <option value="BI">Burundi</option>
                        <option value="KH">Cambodia</option>
                        <option value="CM">Cameroon</option>
                        <option value="CA">Canada</option>
                        <option value="CV">Cape Verde</option>
                        <option value="KY">Cayman Islands</option>
                        <option value="CF">Central African Republic</option>
                        <option value="TD">Chad</option>
                        <option value="CL">Chile</option>
                        <option value="CN">China</option>
                        <option value="CX">Christmas Island</option>
                        <option value="CC">Cocos (Keeling) Islands</option>
                        <option value="CO">Colombia</option>
                        <option value="KM">Comoros</option>
                        <option value="CG">Congo</option>
                        <option value="CD">Congo, the Democratic Republic of the</option>
                        <option value="CK">Cook Islands</option>
                        <option value="CR">Costa Rica</option>
                        <option value="CI">Côte d'Ivoire</option>
                        <option value="HR">Croatia</option>
                        <option value="CU">Cuba</option>
                        <option value="CW">Curaçao</option>
                        <option value="CY">Cyprus</option>
                        <option value="CZ">Czech Republic</option>
                        <option value="DK">Denmark</option>
                        <option value="DJ">Djibouti</option>
                        <option value="DM">Dominica</option>
                        <option value="DO">Dominican Republic</option>
                        <option value="EC">Ecuador</option>
                        <option value="EG">Egypt</option>
                        <option value="SV">El Salvador</option>
                        <option value="GQ">Equatorial Guinea</option>
                        <option value="ER">Eritrea</option>
                        <option value="EE">Estonia</option>
                        <option value="ET">Ethiopia</option>
                        <option value="FK">Falkland Islands (Malvinas)</option>
                        <option value="FO">Faroe Islands</option>
                        <option value="FJ">Fiji</option>
                        <option value="FI">Finland</option>
                        <option value="FR">France</option>
                        <option value="GF">French Guiana</option>
                        <option value="PF">French Polynesia</option>
                        <option value="TF">French Southern Territories</option>
                        <option value="GA">Gabon</option>
                        <option value="GM">Gambia</option>
                        <option value="GE">Georgia</option>
                        <option value="DE">Germany</option>
                        <option value="GH">Ghana</option>
                        <option value="GI">Gibraltar</option>
                        <option value="GR">Greece</option>
                        <option value="GL">Greenland</option>
                        <option value="GD">Grenada</option>
                        <option value="GP">Guadeloupe</option>
                        <option value="GU">Guam</option>
                        <option value="GT">Guatemala</option>
                        <option value="GG">Guernsey</option>
                        <option value="GN">Guinea</option>
                        <option value="GW">Guinea-Bissau</option>
                        <option value="GY">Guyana</option>
                        <option value="HT">Haiti</option>
                        <option value="HM">Heard Island and McDonald Islands</option>
                        <option value="VA">Holy See (Vatican City State)</option>
                        <option value="HN">Honduras</option>
                        <option value="HK">Hong Kong</option>
                        <option value="HU">Hungary</option>
                        <option value="IS">Iceland</option>
                        <option value="IN">India</option>
                        <option value="ID">Indonesia</option>
                        <option value="IR">Iran, Islamic Republic of</option>
                        <option value="IQ">Iraq</option>
                        <option value="IE">Ireland</option>
                        <option value="IM">Isle of Man</option>
                        <option value="IL">Israel</option>
                        <option value="IT">Italy</option>
                        <option value="JM">Jamaica</option>
                        <option value="JP">Japan</option>
                        <option value="JE">Jersey</option>
                        <option value="JO">Jordan</option>
                        <option value="KZ">Kazakhstan</option>
                        <option value="KE">Kenya</option>
                        <option value="KI">Kiribati</option>
                        <option value="KP">Korea, Democratic People's Republic of</option>
                        <option value="KR">Korea, Republic of</option>
                        <option value="KW">Kuwait</option>
                        <option value="KG">Kyrgyzstan</option>
                        <option value="LA">Lao People's Democratic Republic</option>
                        <option value="LV">Latvia</option>
                        <option value="LB">Lebanon</option>
                        <option value="LS">Lesotho</option>
                        <option value="LR">Liberia</option>
                        <option value="LY">Libya</option>
                        <option value="LI">Liechtenstein</option>
                        <option value="LT">Lithuania</option>
                        <option value="LU">Luxembourg</option>
                        <option value="MO">Macao</option>
                        <option value="MK">Macedonia, the former Yugoslav Republic of</option>
                        <option value="MG">Madagascar</option>
                        <option value="MW">Malawi</option>
                        <option value="MY">Malaysia</option>
                        <option value="MV">Maldives</option>
                        <option value="ML">Mali</option>
                        <option value="MT">Malta</option>
                        <option value="MH">Marshall Islands</option>
                        <option value="MQ">Martinique</option>
                        <option value="MR">Mauritania</option>
                        <option value="MU">Mauritius</option>
                        <option value="YT">Mayotte</option>
                        <option value="MX">Mexico</option>
                        <option value="FM">Micronesia, Federated States of</option>
                        <option value="MD">Moldova, Republic of</option>
                        <option value="MC">Monaco</option>
                        <option value="MN">Mongolia</option>
                        <option value="ME">Montenegro</option>
                        <option value="MS">Montserrat</option>
                        <option value="MA">Morocco</option>
                        <option value="MZ">Mozambique</option>
                        <option value="MM">Myanmar</option>
                        <option value="NA">Namibia</option>
                        <option value="NR">Nauru</option>
                        <option value="NP">Nepal</option>
                        <option value="NL">Netherlands</option>
                        <option value="NC">New Caledonia</option>
                        <option value="NZ">New Zealand</option>
                        <option value="NI">Nicaragua</option>
                        <option value="NE">Niger</option>
                        <option value="NG">Nigeria</option>
                        <option value="NU">Niue</option>
                        <option value="NF">Norfolk Island</option>
                        <option value="MP">Northern Mariana Islands</option>
                        <option value="NO">Norway</option>
                        <option value="OM">Oman</option>
                        <option value="PK">Pakistan</option>
                        <option value="PW">Palau</option>
                        <option value="PS">Palestinian Territory, Occupied</option>
                        <option value="PA">Panama</option>
                        <option value="PG">Papua New Guinea</option>
                        <option value="PY">Paraguay</option>
                        <option value="PE">Peru</option>
                        <option value="PH" selected="selected">Philippines</option>
                        <option value="PN">Pitcairn</option>
                        <option value="PL">Poland</option>
                        <option value="PT">Portugal</option>
                        <option value="PR">Puerto Rico</option>
                        <option value="QA">Qatar</option>
                        <option value="RE">Réunion</option>
                        <option value="RO">Romania</option>
                        <option value="RU">Russian Federation</option>
                        <option value="RW">Rwanda</option>
                        <option value="BL">Saint Barthélemy</option>
                        <option value="SH">Saint Helena, Ascension and Tristan da Cunha</option>
                        <option value="KN">Saint Kitts and Nevis</option>
                        <option value="LC">Saint Lucia</option>
                        <option value="MF">Saint Martin (French part)</option>
                        <option value="PM">Saint Pierre and Miquelon</option>
                        <option value="VC">Saint Vincent and the Grenadines</option>
                        <option value="WS">Samoa</option>
                        <option value="SM">San Marino</option>
                        <option value="ST">Sao Tome and Principe</option>
                        <option value="SA">Saudi Arabia</option>
                        <option value="SN">Senegal</option>
                        <option value="RS">Serbia</option>
                        <option value="SC">Seychelles</option>
                        <option value="SL">Sierra Leone</option>
                        <option value="SG">Singapore</option>
                        <option value="SX">Sint Maarten (Dutch part)</option>
                        <option value="SK">Slovakia</option>
                        <option value="SI">Slovenia</option>
                        <option value="SB">Solomon Islands</option>
                        <option value="SO">Somalia</option>
                        <option value="ZA">South Africa</option>
                        <option value="GS">South Georgia and the South Sandwich Islands</option>
                        <option value="SS">South Sudan</option>
                        <option value="ES">Spain</option>
                        <option value="LK">Sri Lanka</option>
                        <option value="SD">Sudan</option>
                        <option value="SR">Suriname</option>
                        <option value="SJ">Svalbard and Jan Mayen</option>
                        <option value="SZ">Swaziland</option>
                        <option value="SE">Sweden</option>
                        <option value="CH">Switzerland</option>
                        <option value="SY">Syrian Arab Republic</option>
                        <option value="TW">Taiwan, Province of China</option>
                        <option value="TJ">Tajikistan</option>
                        <option value="TZ">Tanzania, United Republic of</option>
                        <option value="TH">Thailand</option>
                        <option value="TL">Timor-Leste</option>
                        <option value="TG">Togo</option>
                        <option value="TK">Tokelau</option>
                        <option value="TO">Tonga</option>
                        <option value="TT">Trinidad and Tobago</option>
                        <option value="TN">Tunisia</option>
                        <option value="TR">Turkey</option>
                        <option value="TM">Turkmenistan</option>
                        <option value="TC">Turks and Caicos Islands</option>
                        <option value="TV">Tuvalu</option>
                        <option value="UG">Uganda</option>
                        <option value="UA">Ukraine</option>
                        <option value="AE">United Arab Emirates</option>
                        <option value="GB">United Kingdom</option>
                        <option value="US">United States</option>
                        <option value="UM">United States Minor Outlying Islands</option>
                        <option value="UY">Uruguay</option>
                        <option value="UZ">Uzbekistan</option>
                        <option value="VU">Vanuatu</option>
                        <option value="VE">Venezuela, Bolivarian Republic of</option>
                        <option value="VN">Viet Nam</option>
                        <option value="VG">Virgin Islands, British</option>
                        <option value="VI">Virgin Islands, U.S.</option>
                        <option value="WF">Wallis and Futuna</option>
                        <option value="EH">Western Sahara</option>
                        <option value="YE">Yemen</option>
                        <option value="ZM">Zambia</option>
                        <option value="ZW">Zimbabwe</option>
                      </select>
                    </p>

                    <div class="row row-10">
                      <div class="col-sm-6">
                        <p class="form-row form-row-wide">
                          <input type="text" class="input-text" value placeholder="State / county" name="calc_shipping_state" id="calc_shipping_state">
                        </p>
                      </div>
                      <div class="col-sm-6">
                        <p class="form-row form-row-wide">
                          <input type="text" class="input-text" value placeholder="Postcode" name="calc_shipping_postcode" id="calc_shipping_postcode">
                        </p>
                      </div>
                    </div>

                    <p>
                      <button type="submit" name="calc_shipping" value="1" class="btn btn-md btn-dark">Update Totals</button>
                    </p>
                  </div>      
                </div> <!-- end calculate shipping -->
              </div>

            </div> <!-- end col -->
            

            <!-- Cart Totals -->
            <div class="col-md-4">
              <div class="cart_totals">
                <h2 class="heading uppercase bottom-line full-grey">Cart Totals</h2>
                <table class="table shop_table">
                  <tbody>
                    <tr class="cart-subtotal">
                      <th>Cart Subtotal</th>
                      <td>
                        <span class="amount">$1490.00</span>
                      </td>
                    </tr>
                    <tr class="shipping">
                      <th>Shipping</th>
                      <td>
                        <span>Free Shipping</span>
                      </td>
                    </tr>
                    <tr class="order-total">
                      <th><strong>Order Total</strong></th>
                      <td>
                        <strong><span class="amount">$1490.00</span></strong>
                      </td>
                    </tr>
                  </tbody>
                </table>

                <div class="actions">
                  <input type="submit" name="update_cart" value="Update Cart" class="btn btn-md btn-dark">
                  <div class="wc-proceed-to-checkout">
                    <a href="checkout.html" class="btn btn-md btn-color"><span>proceed to checkout</span></a>
                  </div>
                </div>
              </div>
            </div> <!-- end col cart totals -->


          </div> <!-- end row -->        
        </div> <!-- end container -->
      </section> <!-- end cart -->

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
