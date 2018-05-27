<%-- 
    Document   : detail
    Created on : Mar 15, 2018, 8:02:00 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="f" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Gaze | Shop Catalog</title>
        <jsp:include page="head.jsp"></jsp:include>
        </head>


        <body class="relative grid-1440">



            <main class="main-wrapper oh">
            <jsp:include page="header.jsp"></jsp:include>


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
                                    <c:forEach items="${listProductImage}" var="imageURL">
                                        <div class="gallery-cell">
                                            <a href="../jsp/user/img/shop/${imageURL.url}" class="lightbox-img">
                                                <img src="../jsp/user/img/shop/${imageURL.url}" alt="" />
                                                <i class="icon arrow_expand_alt zoom-icon"></i>
                                            </a>
                                        </div>
                                    </c:forEach>
                                </div> <!-- end gallery main -->

                                <div class="gallery-thumbs">
                                    <c:forEach items="${listProductImage}" var="imageURL">
                                        <div class="gallery-cell">
                                            <img src="../jsp/user/img/shop/${imageURL.url}" alt="" />
                                        </div>
                                    </c:forEach>
                                </div> <!-- end gallery thumbs -->

                            </div> <!-- end col img slider -->

                            <div class="col-lg-4 col-lg-offset-1 col-md-6 col-xs-12 product-description-wrap">
                                <h1 class="product-title">man business coat</h1>
                                <span class="rating">
                                    <a href="#">3 Reviews</a>
                                </span>
                                <span class="price">
                                    <del>
                                        <span>${getProduct.price}</span>
                                    </del>
                                    <ins>
                                        <span class="ammount">${getProduct.price}</span>
                                    </ins>
                                </span>
                                <p class="product-description">${getProduct.description}</p>

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
                                <div>
                                    <input type="number" />
                                    <button >Add to cart</button>
                                </div>
<!--                                <ul class="product-actions clearfix">
                                    <li>
                                                          <div class="quantity buttons_added">
                                                            <input type="button" value="-" class="minus" />
                                                                                <input type="number" step="1" min="0" value="1" title="Qty" class="input-text qty text" />
                                                       o                         <input type="button" value="+" class="plus" />
                                                          </div>
                                        <form ><input type="number" min="1" value ="1" name=""/></form>
                                    </li>
                                    <li>
                                        <a href="#" class="btn btn-color btn-lg add-to-cart left"><span>Add to Cart</span></a>
                                    </li>                          
                                </ul>-->

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
                                                <img src="../jsp/user/img/shop/shop_item_6.jpg" alt="">
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

                <!-- Footer Type-1 -->
                <jsp:include page="footer.jsp"></jsp:include>

                </div> <!-- end content wrapper -->
            </main> <!-- end main wrapper -->

        <jsp:include page="jQueryScripts.jsp"></jsp:include>

    </body>
</html>