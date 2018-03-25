<%-- 
    Document   : contact
    Created on : Feb 1, 2018, 8:26:00 PM
    Author     : Tuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cosmetic | Contact</title>
        <jsp:include page="header.jsp" />
    </head>
    <body class="relative" >

  <!-- Preloader -->
  <div class="loader-mask">
    <div class="loader">
      <div></div>
      <div></div>
    </div>
  </div>

  <!-- Sidenav -->
  <section class="sidenav">
    <img class="logo-dark mb-30" src="img/logo_dark.png" alt="logo">
    <p>We possess within us two minds. So far I have written only of the conscious mind. I would now like to introduce you to your second mind, the hidden and mysterious subconscious.</p>
    <img src="img/sidenav_img.jpg" class="sidenav-img" alt="">
    <h6 class="mt-40">Get in Touch</h6>
    <address class="info-address">Philippines, Afela inc.<br> Talay st. 65, PO Box 6200 </address>
    <p>Phone: <a href="tel:+1-888-1554-456-123">+ 1-888-1554-456-123</a></p>
    <p>Email: <a href="mailto:themesupport@gmail.com">themesupport@gmail.com</a></p>
    <p>Fax: +63 918 4084 694</p>
    <div class="social-icons nobase dark mt-40">
      <a href="#"><i class="fa fa-twitter"></i></a>
      <a href="#"><i class="fa fa-facebook"></i></a>                  
      <a href="#"><i class="fa fa-google-plus"></i></a>
      <a href="#"><i class="fa fa-linkedin"></i></a>
      <a href="#"><i class="fa fa-vimeo"></i></a>
    </div>

    <a href="#" id="sidenav-close">
      <i class="ui-close"></i>
    </a>
  </section> <!-- end sidenav -->

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
              </div> <!-- end navbar-header -->

              <div class="nav-wrap right">
                <div class="collapse navbar-collapse text-center" id="navbar-collapse">
                  
                  <ul class="nav navbar-nav navbar-right">

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

                  </ul> <!-- end menu -->
                </div> <!-- end collapse -->
              </div> <!-- end col -->         
          
            </div> <!-- end row -->
          </div> <!-- end container -->
        </div> <!-- end navigation -->
      </nav> <!-- end navbar -->
    </header>

    <div class="content-wrapper oh">

      <!-- Page Title -->
      <section class="page-title text-center" style="background-image: url(img/page_title/contact_title_bg.jpg);">
        <div class="container relative clearfix">
          <div class="title-holder">
            <div class="title-text">
              <h1 class="uppercase">Contact</h1>
            </div>
          </div>
        </div>
      </section> <!-- end page title -->

      <!-- Contact -->
      <section class="section-wrap">
        <div class="container">
          <div class="row">

            <div class="col-md-4 mb-40">
              <h5 class="uppercase">Information</h5>

              <div class="contact-item">
                <div class="contact-icon">
                  <i class="icon-Map-Pin4"></i>
                </div>
                <p>Melbourne's GPO<br>
                350 Bourke St<br>
                Melbourne VIC 3000<br>
                Australia</p>
              </div> <!-- end address -->

              <div class="contact-item">
                <div class="contact-icon">
                  <i class="icon-Phone-InTalk"></i>
                </div>
                <span><a href="tel:+1-888-1554-456-123">+1-888-1554-456-123</a></span>
              </div> <!-- end phone number -->

              <div class="contact-item">
                <div class="contact-icon">
                  <i class="icon-At-Symbol"></i>
                </div>
                <a href="mailto:themesupport@gmail.com">themesupport@gmail.com</a>
              </div> <!-- end email -->

            </div>

            <div class="col-md-8">
              <form id="contact-form" action="#">

                <div class="row">
                  <div class="col-md-6 contact-name">
                    <input name="name" id="name" type="text" placeholder="Name*">
                  </div>
                  <div class="col-md-6 contact-email">
                    <input name="mail" id="mail" type="email" placeholder="E-mail*">
                  </div>
                </div>

                <textarea name="comment" id="comment" rows="8" placeholder="Message"></textarea>
                <input type="submit" class="btn btn-lg btn-color btn-submit" value="Send Message" id="submit-message">
                <div id="msg" class="message"></div>
              </form>
            </div> <!-- end col -->

          </div>
        </div>
      </section> <!-- end contact -->

      <!-- Google Map --> 
      <div class="gmap" id="google-map" data-address="V Tytana St, Manila, Philippines"></div>

      <jsp:include page="footer.jsp" />

      <div id="back-to-top">
        <a href="#top"><i class="fa fa-angle-up"></i></a>
      </div>

    </div> <!-- end content wrapper -->
  </main> <!-- end main wrapper -->

  <!-- jQuery Scripts -->
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="https://maps.google.com/maps/api/js"></script>
  <script type="text/javascript" src="js/gmap3.js"></script>
  <script type="text/javascript" src="js/plugins.js"></script>
  <script type="text/javascript" src="js/scripts.js"></script>


  <!-- Google Map -->
  <script type="text/javascript">
    $(document).ready( function(){

      function initMap() {

        var gmapDiv = $("#google-map");
        var gmapMarker = gmapDiv.attr("data-address");

        gmapDiv.gmap3({
          zoom: 16,
          address: gmapMarker,
          oomControl: true,
          navigationControl: true,
          scrollwheel: false,
          styles: [
            {
            "featureType":"all",
            "elementType":"all",
              "stylers":[
                { "saturation":"0" }
              ]
          }]
        })
        .marker({
          address: gmapMarker,
          icon: "img/map_pin.png"
        })
        .infowindow({
          content: "V Tytana St, Manila, Philippines"
        })
        .then(function (infowindow) {
          var map = this.get(0);
          var marker = this.get(1);
          marker.addListener('click', function() {
            infowindow.open(map, marker);
          });
        });
      }

      setTimeout(function(){
        initMap();
      }, 500);
    });
  </script>
    
</body>
</html>
