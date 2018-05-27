<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <title>Gaze | Shop Single</title>
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
                                <a href="index.htm">Shop</a>
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
                                    <c:choose>
                                        <c:when test="${listProductImage.size() != 0}">
                                            <div class="flickity flickity-slider-wrap mfp-hover" id="gallery-main">
                                                <c:forEach items="${listProductImage}" var="productImage">
                                                    <div class="gallery-cell">
                                                        <a href="../jsp/user/img/shop/${productImage.url}" class="lightbox-img">
                                                            <img src="../jsp/user/img/shop/${productImage.url}" alt="${productImage.url}" />
                                                            <i class="icon arrow_expand_alt zoom-icon"></i>
                                                        </a>
                                                    </div>
                                                </c:forEach>
                                            </div> <!-- end gallery main -->
                                            <div class="gallery-thumbs">
                                                <c:forEach items="${listProductImage}" var="productImage">
                                                    <div class="gallery-cell">
                                                        <img src="../jsp/user/img/shop/${productImage.url}" alt="${productImage.url}" />
                                                    </div>
                                                </c:forEach>
                                            </div> <!-- end gallery thumbs -->
                                        </c:when>
                                        <c:otherwise>
                                            <div class="flickity flickity-slider-wrap mfp-hover" id="gallery-main">
                                                <div class="gallery-cell">
                                                    <a href="../jsp/user/img/shop/${getProduct.imageLink}" class="lightbox-img">
                                                        <img src="../jsp/user/img/shop/${getProduct.imageLink}" alt="${getProduct.imageLink}" />
                                                        <i class="icon arrow_expand_alt zoom-icon"></i>
                                                    </a>
                                                </div>
                                            </div> <!-- end gallery main -->
                                            <div class="gallery-thumbs">
                                                <div class="gallery-cell">
                                                    <img src="../jsp/user/img/shop/${getProduct.imageLink}" alt="${getProduct.imageLink}" />
                                                </div>
                                            </div> <!-- end gallery thumbs -->
                                        </c:otherwise>
                                    </c:choose>
                                </div> <!-- end col img slider -->
                                <div class="col-lg-4 col-lg-offset-1 col-md-6 col-xs-12 product-description-wrap">
                                    <h1 class="product-title">${getProduct.productName}</h1>
                                    <span class="rating">
                                        <a href="#">${getProduct.reviews} Reviews</a>
                                    </span>
                                    <span class="price">
                                        <c:choose>
                                            <c:when test="${getProduct.priceSale != 0}">
                                                <del>
                                                    <span>$${getProduct.price}</span>
                                                </del>
                                                <ins>
                                                    <span class="ammount">$${getProduct.priceSale}</span>
                                                </ins>
                                            </c:when>
                                            <c:otherwise>
                                                <ins>
                                                    <span class="ammount">$${getProduct.price}</span>
                                                </ins>
                                            </c:otherwise>
                                        </c:choose>
                                    </span>
                                    <p class="product-description">${getProduct.description}</p>
                                    <form action="<%=request.getContextPath()%>/carts/addCart.htm?productId=${getProduct.productId}" method="POST">
                                        <div class="select-options">
                                            <div class="row row-20">
                                                <div class="col-sm-6">
                                                    <select name="colorSelect" class="color-select">
                                                        <c:forEach items="${listColor}" var="color">
                                                            <option value="${color.colorName}">${color.colorName}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                                <div class="col-sm-6">
                                                    <select name="sizeOption" class="size-options">
                                                        <c:forEach items="${listSize}" var="size">
                                                            <option value="${size.sizeName}">${size.sizeName}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <ul class="product-actions clearfix">
                                            <li>
                                                <div class="quantity buttons_added">
                                                    <input type="button" value="-" class="btn btn-default btn-number" data-type="minus" data-field="quantity" disabled="disabled" style="height:44px; background-color: #169d93; color: #fff; margin-top : -5px;" />
                                                    <input type="number" name="quantity" id="quantity" value="1" title="Quantity" class="input-text input-number" style="width:90px; height:44px;" />
                                                    <input type="button" value="+" class="btn btn-default btn-number" data-type="plus" data-field="quantity" style="height:44px; background-color: #169d93; color: #fff; margin-top : -5px;" />
                                                </div>
                                            </li>
                                            <li>
                                                <input type="submit" value="Add to Cart" class="btn btn-color btn-lg add-to-cart left" style="height:44px;"/>
                                            </li>                          
                                        </ul>
                                    </form>
                                    <div class="add-to-wishlist">
                                        <a href="#"><i class="fa fa-heart"></i> Add to wishlist</a>
                                    </div>
                                    <div class="product_meta">
                                        <span class="brand_as">Brand: <a href="#">${getProduct.productFrom}</a></span>
                                        <span class="posted_in">Category: <a href="#">${getCategory.categoryName}</a></span>
                                        <span class="sku">SKU: <a href="#">${getProduct.productCode}</a></span>
                                    </div>
                                    <div class="socials-share mb-30 clearfix">
                                        <span>Share:</span>
                                        <div class="social-icons nobase dark">
                                            <a href="https://twitter.com"><i class="fa fa-twitter"></i></a>
                                            <a href="https://www.facebook.com"><i class="fa fa-facebook"></i></a>
                                            <a href="https://accounts.google.com"><i class="fa fa-google-plus"></i></a>
                                            <a href="https://www.pinterest.com/login"><i class="fa fa-linkedin"></i></a>
                                            <a href="https://vimeo.com"><i class="fa fa-vimeo"></i></a>
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
                                                    <div class="col-sm-12">
                                                        <p>${getProduct.descriptionDetail}</p>
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="tab-pane fade" id="tab-info">
                                                <table class="table">

                                                    <tbody>
                                                        <tr>
                                                            <th>PRODUCT FORM</th>
                                                            <td>${getProduct.productFrom}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>PROVIDER</th>
                                                            <td>${getProvider.providerName}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>IN STOCK</th>
                                                            <td>${getProduct.inStock}</td>
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
                                    <c:forEach items="${listProduct}" var="product">
                                        <div class="product">
                                            <div class="product-item">
                                                <div class="product-img">
                                                    <a href="<%=request.getContextPath()%>/index/productDetail.htm?productId=${product.productId}">
                                                        <img src="../jsp/user/img/shop/${product.imageLink}" alt="${product.imageLink}">
                                                    </a>
                                                    <c:if test="${product.priceSale != 0}">
                                                        <div class="product-label">
                                                            <span class="sale">sale</span>
                                                        </div>
                                                    </c:if>
                                                    <div class="product-actions">
                                                        <a href="#" class="product-add-to-compare" data-toggle="tooltip" data-placement="bottom" title="Add to compare">
                                                            <i class="fa fa-exchange"></i>
                                                        </a>
                                                        <a href="#" class="product-add-to-wishlist" data-toggle="tooltip" data-placement="bottom" title="Add to wishlist">
                                                            <i class="fa fa-heart"></i>
                                                        </a>                    
                                                    </div>
                                                    <a href="<%=request.getContextPath()%>/index/productDetail.htm?productId=${product.productId}" class="product-quickview">Quick View</a>
                                                </div>
                                                <div class="product-details">
                                                    <h3>
                                                        <a class="product-title" href="<%=request.getContextPath()%>/index/productDetail.htm?productId=${product.productId}">${product.productName}</a>
                                                    </h3>
                                                    <span class="price">
                                                        <c:choose>
                                                            <c:when test="${product.priceSale != 0}">
                                                                <del>
                                                                    <span>$${product.price}</span>
                                                                </del>
                                                                <ins>
                                                                    <span class="ammount">$${product.priceSale}</span>
                                                                </ins>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <ins>
                                                                    <span class="ammount">$${product.price}</span>
                                                                </ins>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </span>
                                                </div>                                    
                                            </div>
                                        </div> <!-- end product -->
                                    </c:forEach>
                                </div> <!-- end owl -->
                            </div>
                        </div>
                    </section> <!-- end Related Items -->
                    <!-- Footer Type-1 -->
                    <jsp:include page="footer.jsp"></jsp:include> 
                    <!-- end footer -->
                </div> <!-- end content wrapper -->
            </main> <!-- end main wrapper -->
        <script>
            $(document).ready(function () {
                $('.btn-number').click(function (e) {
                    e.preventDefault();
                    var fieldName = $(this).attr('data-field');
                    var type = $(this).attr('data-type');
                    var input = $("input[name='" + fieldName + "']");
                    var currentVal = parseInt(input.val());
                    if (!isNaN(currentVal)) {
                        if (type == 'minus') {
                            var minValue = parseInt(input.attr('min'));
                            if (!minValue)
                                minValue = 1;
                            if (currentVal > minValue) {
                                input.val(currentVal - 1).change();
                            }
                            if (parseInt(input.val()) == minValue) {
                                $(this).attr('disabled', true);
                            }
                        } else if (type == 'plus') {
                            var maxValue = parseInt(input.attr('max'));
                            if (!maxValue)
                                maxValue = 9999999999999;
                            if (currentVal < maxValue) {
                                input.val(currentVal + 1).change();
                            }
                            if (parseInt(input.val()) == maxValue) {
                                $(this).attr('disabled', true);
                            }
                        }
                    } else {
                        input.val(0);
                    }
                });
                $('.input-number').focusin(function () {
                    $(this).data('oldValue', $(this).val());
                });
                $('.input-number').change(function () {
                    var minValue = parseInt($(this).attr('min'));
                    var maxValue = parseInt($(this).attr('max'));
                    if (!minValue)
                        minValue = 1;
                    if (!maxValue)
                        maxValue = 9999999999999;
                    var valueCurrent = parseInt($(this).val());
                    var name = $(this).attr('name');
                    if (valueCurrent >= minValue) {
                        $(".btn-number[data-type='minus'][data-field='" + name + "']").removeAttr('disabled')
                    } else {
                        alert('Sorry, the minimum value was reached');
                        $(this).val($(this).data('oldValue'));
                    }
                    if (valueCurrent <= maxValue) {
                        $(".btn-number[data-type='plus'][data-field='" + name + "']").removeAttr('disabled')
                    } else {
                        alert('Sorry, the maximum value was reached');
                        $(this).val($(this).data('oldValue'));
                    }
                });
                $(".input-number").keydown(function (e) {
                    // Allow: backspace, delete, tab, escape, enter and .            
                    if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 190]) !== -1 ||
                            // Allow: Ctrl+A                
                                    (e.keyCode == 65 && e.ctrlKey === true) ||
                                    // Allow: home, end, left, right                
                                            (e.keyCode >= 35 && e.keyCode <= 39)) {
                                // let it happen, don't do anything                     
                                return;
                            }
                            // Ensure that it is a number and stop the keypress            
                            if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                                e.preventDefault();
                            }
                        });
            });
        </script>
    </body>
</html>