<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--<script src="../jsp/user/js/update.js" type="text/javascript"></script>-->
<aside class="col-md-3 sidebar left-sidebar">

    <!-- Search -->
    <div class="widget search">
        <form action="./search.htm" method="get" class="relative">
            <input type="search" class="searchbox mb-0" name="query" placeholder="Search">
            <button type="submit" class="search-button"><i class="ui-search"></i></button>
        </form>
    </div>

    <!-- Categories -->
    <div class="widget categories">
        <h3 class="widget-title heading uppercase relative bottom-line full-grey">Categories</h3>
        <ul class="list-dividers">
            <c:forEach items="${listCategory}" var="category">
                <li>
                    <a href="./getProductByCategory.htm?categoryId=${category.categoryId}"class="${category.categoryId}">${category.categoryName}</a>
                    <input type="hidden" class="form-control pro"  name="prof" value="${category.categoryId}">
                </li>
            </c:forEach>
        </ul>
    </div>

    <!-- Filter by Price -->
    <div class="widget filter-by-price clearfix">
        <h3 class="widget-title heading uppercase relative bottom-line full-grey">Filter by Price</h3>
        <form action="<%=request.getContextPath()%>/index/filterPrice.htm" method="POST">
            <div id="slider-range"></div>
            <p>
                <label for="amount">Price:</label>
                <input type="text" id="amount" name="amount">
                <input type="submit" class="btn btn-sm btn-stroke" value="Filter" style="height: 40px; margin-left: 24px;" />
            </p>
        </form>
    </div>
    

    <!-- Color -->
<!--    <div class="widget filter-by-color">
        <h3 class="widget-title heading uppercase relative bottom-line full-grey">Color</h3>
        <ul class="color-select list-dividers">
            <c:forEach items="${listColor}" var="color">
                <li>
                    <input type="checkbox" class="input-checkbox" id="${color.natation}-color" name="${color.natation}-color">
                    <label for="${color.natation}-color" class="checkbox-label">${color.colorName}</label>
                </li>
            </c:forEach>
        </ul>
    </div>-->

    <!-- Size -->
<!--    <div class="widget filter-by-size">
        <h3 class="widget-title heading uppercase relative bottom-line full-grey">Size</h3>
        <ul class="size-select list-dividers">
            <c:forEach items="${listSize}" var="size">
                <li>
                    <input type="checkbox" class="input-checkbox" id="${size.natation}-size" name="small-size">
                    <label for="${size.natation}-size" class="checkbox-label">${size.sizeName}</label>
                </li>
            </c:forEach>
        </ul>
    </div>-->

    <!-- Best Sellers -->
    <div class="widget bestsellers">
        <div class="products-widget">
            <h3 class="widget-title heading uppercase relative bottom-line full-grey mb-30">Best Sellers</h3>
            <ul class="product-list-widget">
                <c:forEach items="${listProductHot}" var="product">
                    <li class="clearfix">
                        <a href="productDetail.htm?productId=${product.productId}">
                            <img src="../jsp/user/img/shop/${product.imageLink}" alt="${product.imageLink}">
                            <span class="product-title">${product.productName}</span>
                        </a>
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
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>

    <!-- Tags -->
    <div class="widget tags clearfix">
        <h3 class="widget-title heading uppercase relative bottom-line full-grey">Tags</h3>
        <c:forEach items="${listTag}" var="tag">
            <a href="productTag.htm?providerId=${tag.providerId}">${tag.providerName}</a>
        </c:forEach>
    </div>

</aside>
