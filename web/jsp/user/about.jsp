<%-- 
    Document   : about
    Created on : Feb 1, 2018, 8:23:22 PM
    Author     : Tuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cosmetic | About</title>
        <jsp:include page="header.jsp"/>
    </head>
    <body class="relative">

  <!-- Preloader -->
  <div class="loader-mask">
    <div class="loader">
      <div></div>
      <div></div>
    </div>
  </div>

  <div class="main-wrapper oh">

    <header class="nav-type-5">

      <nav class="navbar navbar-static-top">
        <div class="fs-menu" id="nav-overlay">
          <div class="overlay-menu">
            <ul>
              <li><a href="about-us.html">About</a></li>
              <li><a href="portfolio-4-col.html">Works</a></li>             
              <li><a href="blog-standard.html">Blog</a></li>
              <li><a href="../select_demo/index.html">Demos</a></li>
            </ul>
          </div>
        </div>
        <div class="navigation-overlay">
          <div class="container relative clearfix">
            <div class="row">

              <div class="nav-social-icons left">
                <div class="social-icons nobase dark">
                  <a href="#"><i class="fa fa-twitter"></i></a>
                  <a href="#"><i class="fa fa-facebook"></i></a>
                  <a href="#"><i class="fa fa-google-plus"></i></a>
                </div>
              </div>

              <div class="position-center">
                <div class="logo-container">
                  <div class="logo-wrap">
                    <a href="index.html">
                      <img class="logo-dark" src="img/logo_dark.png" alt="logo">
                    </a>
                  </div>
                </div>
              </div>

              <div class="nav-icon-wrap right">
                <div id="nav-icon" class="style-2">
                  <div class="nav-icon-inner">
                    <a href="#" id="nav-icon-trigger-2" class="nav-icon-trigger">
                      <span></span>
                      <span></span>
                      <span></span>
                      <span></span>
                    </a>
                  </div>
                </div>
              </div>
              
            </div>
          </div> <!-- end container -->
        </div>
      </nav>
    </header>

    <div class="content-wrapper oh">
      <main class="main-container">
      
        <!-- Revolution Slider -->
        <section>
          <div class="rev_slider_wrapper container" id="home">
            <div class="rev_slider" id="slider7">
              <ul>
                <!-- SLIDE 1 -->
                <li data-fstransition="fade"
                  data-transition="fade"
                  data-slotamount="1"
                  data-masterspeed="1000"
                  data-delay="50000"
                  data-title="Creative Minimalism">

                  <!-- MAIN IMAGE -->
                  <img src="img/revolution/vienna_hero.jpg"
                    alt=""
                    data-bgposition="center center"
                    data-bgrepeat="no-repeat"
                    data-bgfit="cover"
                    class="rev-slidebg">

                  <!-- LINE -->
                  <div class="tp-caption tp-shape hero-line"
                    data-x="center"
                    data-y="center"
                    data-voffset="[-78, -78, -78, -78]"
                    data-hoffset="[0]"
                    data-width="[176,134,100,150]"
                    data-transform_idle="o:1;s:900;"
                    data-transform_in="y:-10px;opacity:0;s:1000;e:Power3.easeOut;"
                    data-transform_out="y:-10px;opacity:0;s:1000;e:Power3.easeInOut;"
                    data-start="1200">
                  </div>

                  <!-- LAYER NR. 1 -->
                  <div class="tp-caption hero-text uppercase spacious"
                    data-x="center"
                    data-y="center"
                    data-voffset="[0]"
                    data-fontsize="[70,70,60,50]"
                    data-lineheight="[70,70,60,50]"
                    data-whitespace="[nowrap, nowrap, nowrap, normal]"
                    data-transform_idle="o:1;s:700"
                    data-textAlign=['center']
                    data-transform_in="opacity:0;s:1000;e:Power3.easeInOut;"
                    data-transform_out="opacity:0;s:1000;e:Power3.easeInOut;"
                    data-start="1200"
                    data-elementdelay="0.01">MINIMAL DESIGN
                  </div>

                  <!-- LINE -->
                  <div class="tp-caption tp-shape hero-line"
                    data-x="center"
                    data-y="center"
                    data-voffset="[78, 78, 78, 78]"
                    data-hoffset="[0]"
                    data-width="[176,134,100,150]"
                    data-transform_idle="o:1;s:900;"
                    data-transform_in="y:10px;opacity:0;s:1000;e:Power3.easeOut;"
                    data-transform_out="y:10px;opacity:0;s:1000;e:Power3.easeInOut;"
                    data-start="1200">
                  </div>              
           
                </li>
              </ul>

            </div>
          </div>
        </section> <!-- end rev slider -->

        <!-- Intro -->
        <section class="section-wrap intro style-2 pt-70 pb-40">
          <div class="container">
            <div class="row">
              <div class="col-sm-4 mb-30">
                <h2 class="intro-heading uppercase">Who We Are</h2>
                <p class="mb-0">Gaze is a simple and elegant template with tons of features. Lorem ipsum dolor sit amet, consectetur. Grab this perfect solution.</p>
              </div>
              <div class="col-sm-4 mb-30">
                <h2 class="intro-heading uppercase">What We Do</h2>
                <p class="mb-0">Gaze is a simple and elegant template with tons of features. Lorem ipsum dolor sit amet, consectetur. Grab this perfect solution.</p>
              </div>
              <div class="col-sm-4 mb-30">
                <h2 class="intro-heading uppercase">why We Do This</h2>
                <p class="mb-0">Gaze is a simple and elegant template with tons of features. Lorem ipsum dolor sit amet, consectetur. Grab this perfect solution.</p>
              </div>
            </div>
          </div>
        </section> <!-- end intro -->

        <!-- Works-->
        <section class="section-wrap nopadding">
          <div class="container">
            <div class="row">

              <div id="portfolio-grid" class="works-grid grid-3-col small-gutter">

                <div class="work-item hover-trigger hover-5 hover-blue web-design apps">
                  <div class="work-container">
                    <div class="work-img">
                      <a href="portfolio-single.html">
                        <img src="img/portfolio/vienna/1.jpg" alt="">
                        <div class="hover-overlay">
                          <div class="work-description">
                            <h3>Vimeo Video</h3>
                            <span>Photography</span>
                          </div>
                        </div>
                      </a>              
                    </div>                  
                  </div> 
                </div> <!-- end work-item -->

                <div class="work-item hover-trigger hover-5 hover-green apps branding">
                  <div class="work-container">
                    <div class="work-img">
                      <a href="portfolio-single.html">
                        <img src="img/portfolio/vienna/2.jpg" alt="">
                        <div class="hover-overlay" data-overlay="5">
                          <div class="work-description">
                            <h3>Youtube Video</h3>
                            <span>Branding</span>
                          </div>
                        </div>
                      </a>              
                    </div>                  
                  </div> 
                </div> <!-- end work-item -->

                <div class="work-item hover-trigger hover-5 hover-pink web-design apps">
                  <div class="work-container">
                    <div class="work-img">
                      <a href="portfolio-single.html">
                        <img src="img/portfolio/vienna/3.jpg" alt="">
                        <div class="hover-overlay" data-overlay="5">
                          <div class="work-description">
                            <h3>Stationary</h3>
                            <span>Web Design</span>
                          </div>
                        </div>
                      </a>              
                    </div>                  
                  </div> 
                </div> <!-- end work-item -->

                <div class="work-item hover-trigger hover-5 hover-violet web-design apps">
                  <div class="work-container">
                    <div class="work-img">
                      <a href="portfolio-single.html">
                        <img src="img/portfolio/vienna/4.jpg" alt="">
                        <div class="hover-overlay" data-overlay="5">
                          <div class="work-description">
                            <h3>Apple Watch App</h3>
                            <span>Apps</span>
                          </div>
                        </div>
                      </a>              
                    </div>                  
                  </div> 
                </div> <!-- end work-item -->

                <div class="work-item hover-trigger hover-5 hover-orange web-design branding">
                  <div class="work-container">
                    <div class="work-img">
                      <a href="portfolio-single.html">
                        <img src="img/portfolio/vienna/5.jpg" alt="">
                        <div class="hover-overlay" data-overlay="5">
                          <div class="work-description">
                            <h3>Envelope Design</h3>
                            <span>Branding</span>
                          </div>
                        </div>
                      </a>              
                    </div>                  
                  </div> 
                </div> <!-- end work-item -->

                <div class="work-item hover-trigger hover-5 hover-green web-design">
                  <div class="work-container">
                    <div class="work-img">
                      <a href="portfolio-single.html">
                        <img src="img/portfolio/vienna/6.jpg" alt="">
                        <div class="hover-overlay" data-overlay="5">
                          <div class="work-description">
                            <h3>Restaurant Website</h3>
                            <span>Web Design</span>
                          </div>
                        </div>
                      </a>              
                    </div>                  
                  </div> 
                </div> <!-- end work-item -->

                <div class="work-item hover-trigger hover-5 hover-pink web-design">
                  <div class="work-container">
                    <div class="work-img">
                      <a href="portfolio-single.html">
                        <img src="img/portfolio/vienna/7.jpg" alt="">
                        <div class="hover-overlay" data-overlay="5">
                          <div class="work-description">
                            <h3>Restaurant Website</h3>
                            <span>Web Design</span>
                          </div>
                        </div>
                      </a>              
                    </div>                  
                  </div> 
                </div> <!-- end work-item -->

                <div class="work-item hover-trigger hover-5 hover-violet web-design">
                  <div class="work-container">
                    <div class="work-img">
                      <a href="portfolio-single.html">
                        <img src="img/portfolio/vienna/8.jpg" alt="">
                        <div class="hover-overlay" data-overlay="5">
                          <div class="work-description">
                            <h3>Restaurant Website</h3>
                            <span>Web Design</span>
                          </div>
                        </div>
                      </a>              
                    </div>                  
                  </div> 
                </div> <!-- end work-item -->

                <div class="work-item hover-trigger hover-5 hover-orange web-design">
                  <div class="work-container">
                    <div class="work-img">
                      <a href="portfolio-single.html">
                        <img src="img/portfolio/vienna/9.jpg" alt="">
                        <div class="hover-overlay" data-overlay="5">
                          <div class="work-description">
                            <h3>Restaurant Website</h3>
                            <span>Web Design</span>
                          </div>
                        </div>
                      </a>              
                    </div>                  
                  </div> 
                </div> <!-- end work-item -->

              </div>  <!-- end portfolio container -->
            </div>
          </div>
        </section> <!-- end works -->

        <!-- Quote -->
        <section class="section-wrap pt-60 pb-80">
          <div class="container">
            <div class="row">
              <div class="col-sm-8 col-sm-offset-2">
                <blockquote class="quote text-center">
                  <p>Incredible change happens in your life when you decide to take control of what you do have power over instead of craving control over what you don't.</p>
                  <span>Bernard M. Baruch</span>
                </blockquote>
              </div>
            </div>            
          </div>
        </section> <!-- end quote -->

      </main> <!-- end main container -->

      <!-- Footer Type-7 -->
      <footer class="footer footer-type-7 bg-white">
        <div class="container">
          <div class="footer-widgets top-divider pb-mdm-20">
            <div class="row">

              <div class="col-sm-6 copyright sm-text-center">
                <span>
                  &copy; 2017 Gaze Theme, Made by <a href="http://deothemes.com">DeoThemes</a>
                </span>
              </div>

              <div class="col-sm-6">
                <div class="footer-socials style-2">
                  <div class="social-icons text-right sm-text-center">
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-facebook"></i></a>                  
                    <a href="#"><i class="fa fa-google-plus"></i></a>
                  </div>
                </div>
              </div>

            </div>
          </div>    
        </div>
      </footer> <!-- end footer -->

    </div> <!-- end content wrapper -->
  </div> <!-- end main wrapper -->

  <!-- jQuery Scripts -->
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/plugins.js"></script>
  <script type="text/javascript" src="revolution/js/jquery.themepunch.tools.min.js"></script>
  <script type="text/javascript" src="revolution/js/jquery.themepunch.revolution.min.js"></script>
  <script type="text/javascript" src="js/rev-slider.js"></script>
  <script type="text/javascript" src="js/scripts.js"></script>


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
