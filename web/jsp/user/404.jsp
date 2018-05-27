<jsp:include page="includes.jsp"></jsp:include>
<html>
    <head>
        <title>Cosmetic | 404 Page</title>
        <jsp:include page="head.jsp"/>
    </head>
    <body class="relative">
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
    <jsp:include page="header.jsp"></jsp:include>
    <div class="content-wrapper oh">

      <!-- Page Title -->
      <section class="page-title text-center" style="background-image: url(../jsp/user/img/page_title/404_title_bg.jpg);">
        <div class="container relative clearfix">
          <div class="title-holder">
            <div class="title-text">
              <h1 class="uppercase">Page Not Found</h1>
            </div>
          </div>
        </div>
      </section> <!-- end page title -->

      <!-- 404 -->
      <section class="section-wrap page-404">
        <div class="container">
          <div class="row text-center">
            <div class="col-md-6 col-md-offset-3">
              <h1>404</h1>
              <h2 class="mb-30">Oops... Page Not Found</h2>
              <p class="mb-20">You can go back to <a href="../jsp/user/index.jsp">Homepage</a> or use search</p>
              <form class="relative">
                <input type="search" placeholder="Search" class="mb-0">
                <button type="submit" class="search-button"><i class="fa fa-search"></i></button>
              </form>
            </div>
          </div>
        </div>
      </section> <!-- end 404 -->

        <jsp:include page="footer.jsp" />

      <div id="back-to-top">
        <a href="#top"><i class="fa fa-angle-up"></i></a>
      </div>

    </div> <!-- end content wrapper -->
  </main> <!-- end main wrapper -->

</body>
</html>
