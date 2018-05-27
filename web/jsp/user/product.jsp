<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Gaze | Shop Catalog</title>
        <jsp:include page="head.jsp"></jsp:include>
        <script src="../jsp/user/js/jquery.min.js" type="text/javascript"></script>
    </head>
    <body class="relative grid-1440">
        <main class="main-wrapper oh">
        <jsp:include page="header.jsp"></jsp:include>
            <div class="content-wrapper oh">
                <!-- Breadcrumbs -->
                <div class="container">
                    <ol class="breadcrumb">
                        <li>
                            <a href="../jsp/user/index.jsp">Home</a>
                        </li>
                        <li>
                            <a href="../jsp/user/index.jsp">Shop</a>
                        </li>
                        <li class="active">
                            Shop Catalog
                        </li>
                    </ol>
                </div> <!-- end breadcrumbs -->
                <!-- Catalogue -->
                <section class="section-wrap pt-40 pb-40 catalogue">
                    <div class="container relative">
                        <div class="row">
                            <div class="col-md-9 catalogue-col right mb-50">
                                <div class="shop-filter" id="filter">
                                    <c:choose>
                                        <c:when test="${listProduct.size() > 12}">
                                            <p class="result-count">Showing: 12 of ${listProduct.size()} results</p>
                                        </c:when>
                                        <c:otherwise>
                                            <p class="result-count">Showing: ${listProduct.size()} of ${listProduct.size()} results</p>
                                        </c:otherwise>
                                    </c:choose>
                                    <!--<form class="ecommerce-ordering" action="<%=request.getContextPath()%>/index/defaultSorting.htm" method="POST">-->
                                    <select name="sorting" id="sorting" onchange="get_product(this);" style="width: 170px; float: right;">
                                        <option value="default-sorting" data-id="default-sorting">Default Sorting</option>
                                        <option value="price-low-to-high" data-id="price-low-to-high">Price: high to low</option>
                                        <option value="price-high-to-low" data-id="price-high-to-low">Price: low to high</option>
                                        <option value="by-popularity" data-id="by-popularity">By Popularity</option>
                                    </select>
                                    <!--<input type="submit" value="click">-->
                                    <!--</form>-->
                                </div>
                                <div id="da">
                                    <div class="shop-catalogue grid-view" >
                                        <div class="row items-grid">
                                            <c:forEach items="${listProduct}" var="product">
                                                <div class="col-md-4 col-xs-6 product product-grid">
                                                    <div class="product-item">
                                                        <div class="product-img">
                                                            <a href="productDetail.htm?productId=${product.productId}">
                                                                <img src="../jsp/user/img/shop/${product.imageLink}" alt="${product.imageLink}" style="height: 350px;">
                                                            </a>
                                                            <c:if test="${product.inStock == 0}">
                                                                <span class="sold-out valign">out of stock</span>
                                                            </c:if>
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
                                                            <a href="productDetail.htm?productId=${product.productId}" class="product-quickview">Quick View</a>
                                                        </div>

                                                        <div class="product-details">
                                                            <h3>
                                                                <a class="product-title" href="productDetail.htm?productId=${product.productId}" title="${product.productName}">${product.productName}</a>
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
                                        </div> <!-- end row -->
                                    </div> <!-- end grid mode -->
                                </div>
                                <!-- Pagination -->
                                <jsp:include page="pagination.jsp"></jsp:include>
                            </div> <!-- end col -->
                            <!-- Sidebar -->
                            <jsp:include page="sidebar.jsp"></jsp:include>
                            <!-- end sidebar -->
                        </div> <!-- end row -->
                    </div> <!-- end container -->
                </section> <!-- end catalog -->
                <!-- Footer Type-1 -->
                <jsp:include page="footer.jsp"></jsp:include>
                <!-- end footer -->
            </div> <!-- end content wrapper -->
        </main> <!-- end main wrapper -->
        <script type="text/javascript" language="javascript" src="../jsp/user/js/paginate.js"></script>
        <script type="text/javascript" language="javascript" src="../jsp/user/js/custom.js"></script>
        <script >
            $(document).ready(function () {
                $("#sorting").on('change', function () {
                    get_product($("#sorting option:selected").attr('data-id'));
                });
            });
            function get_product(filter) {
                var val = $(filter).val();
                $.ajax({
                    //cache: false,
                    url: '<%=request.getContextPath()%>/index/defaultSorting.htm',
                    type: 'POST',
                    data: {sorting:val},
                    //dataType: 'json',
                    success: function (response) {
                        $('.items-grid').html(response);
//                        $(".clearfix").html("");
                        console.log(response);
                    }
                });
            }
        </script>
    </body>
</html>