<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="../jsp/user/js/jquery.min.js" type="text/javascript"></script>
<!--<div class="shop-filter" id="filter">
    <c:choose>
        <c:when test="${listProduct.size() > 12}">
            <p class="result-count">Showing: 12 of ${listProduct.size()} results</p>
        </c:when>
        <c:otherwise>
            <p class="result-count">Showing: ${listProduct.size()} of ${listProduct.size()} results</p>
        </c:otherwise>
    </c:choose>
    <form class="ecommerce-ordering" action="<%=request.getContextPath()%>/index/defaultSorting.htm" method="POST">
    <select name="sorting" id="sorting" onchange="get_product(this);" style="width: 170px; float: right;">
        <option value="default-sorting" data-id="default-sorting">Default Sorting</option>
        <option value="price-low-to-high" data-id="price-low-to-high">Price: high to low</option>
        <option value="price-high-to-low" data-id="price-high-to-low">Price: low to high</option>
        <option value="by-popularity" data-id="by-popularity">By Popularity</option>
    </select>
    <input type="submit" value="click">
    </form>
</div>-->
<c:forEach items="${listProduct}" var="product">
    <div class="col-md-4 col-xs-6 product product-grid">
        <div class="product-item">
            <div class="product-img">
                <a href="productDetail.htm?productId=${product.productId}">
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

<!-- Pagination -->
