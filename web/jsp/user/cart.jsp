<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%> 
<html>
    <head>
        <title>Cosmetic | Cart</title>
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
                                <a href="../jsp/user/index.jsp">Home</a>
                            </li>
                            <li>
                                <a href="../jsp/user/index.jsp">Shop</a>
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
                                <form action="<%=request.getContextPath()%>/carts/updateCart.htm" method="POST">
                                <div class="col-md-8">
<!--                                    <form action="<%=request.getContextPath()%>/carts/calculateShipping.htm" method="POST"> -->
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
                                                <c:if test="${listCart.size() > 0}">
                                                    <c:forEach items="${listCart}" var="cart">
                                                        <tr class="cart_item">
                                                            <td class="product-thumbnail">
                                                                <a href="<%=request.getContextPath()%>/index/productDetail.htm?productId=${cart.product.productId}">
                                                                    <img src="../jsp/user/img/shop/${cart.product.imageLink}" alt="${cart.product.imageLink}">
                                                                </a>
                                                            </td>
                                                            <td class="product-name">
                                                                <a href="<%=request.getContextPath()%>/index/productDetail.htm?productId=${cart.product.productId}">${cart.product.productName}</a>
                                                                <ul>
                                                                    <li>Size: ${cart.size}</li>
                                                                    <li>Color: ${cart.color}</li>
                                                                </ul>
                                                            </td>
                                                            <c:choose>
                                                                <c:when test="${cart.product.priceSale != 0}">
                                                                    <td class="product-price">
                                                                        <span class="amount">$${cart.product.priceSale}</span>
                                                                    </td>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <td class="product-price">
                                                                        <span class="amount">$${cart.product.price}</span>
                                                                    </td>
                                                                </c:otherwise>
                                                            </c:choose>
                                                            <td class="product-quantity">
                                                                <div class="quantity buttons_added">
                                                                    <input type="button" value="-" class="btn btn-default btn-number" data-type="minus" data-field="quantity" disabled="disabled" style="height:30px; background-color: #169d93; color: #fff; margin-top: -4px;" />
                                                                    <input type="number" name="quantity" id="quantity" value="${cart.quantity}" title="Quantity" class="input-text input-number" style="width:90px; height:30px; margin-top: 25px;" />
                                                                    <input type="button" value="+" class="btn btn-default btn-number" data-type="plus" data-field="quantity" style="height:30px; background-color: #169d93; color: #fff; margin-top: -4px;" />
                                                                </div>
                                                            </td>
                                                            <c:choose>
                                                                <c:when test="${cart.product.priceSale != 0}">
                                                                    <td class="product-subtotal">
                                                                        <span class="amount">$${cart.product.priceSale * cart.quantity}</span>
                                                                    </td>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <td class="product-subtotal">
                                                                        <span class="amount">$${cart.product.price * cart.quantity}</span>
                                                                    </td>
                                                                </c:otherwise>
                                                            </c:choose>
                                                            <td class="product-remove">
                                                                <a href="<%=request.getContextPath()%>/carts/remove.htm?productId=${cart.product.productId}" onclick="return confirm('Are You Sure?')" class="remove" title="Remove this item">
                                                                    <i class="ui-close"></i>
                                                                </a>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </c:if>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="row">
                                        <!-- Coupon -->            
                                        <div class="col-md-5 col-sm-12">
                                            <div class="coupon mb-30">
                                                <h2 class="heading uppercase mb-20">Coupon</h2>
                                                <input type="text" name="coupon_code" id="coupon_code" class="input-text" value placeholder="Coupon code">
                                                <!--<input type="submit" name="apply_coupon" class="btn btn-md btn-dark" value="Apply">-->
                                            </div>
                                        </div>

                                        <!-- Calculate Shipping -->
                                        <div class="col-md-7 col-sm-12 mb-30">
                                            <div class="shipping-calculator-form">
                                                <h2 class="heading uppercase mb-20">Calculate Shipping</h2>
                                                <c:choose>
                                                    <c:when test="${provincial != 0}">
                                                        <p class="form-row form-row-wide">
                                                            <select name="calculate_shipping_city" id="calc_shipping_country" class="country_to_state" rel="calc_shipping_state">
                                                                <jsp:include page="city.jsp"></jsp:include>
                                                            </select>
                                                        </p>
                                                        <div class="row row-10">
                                                            <div class="col-sm-6">
                                                                <p class="form-row form-row-wide">
                                                                    <input type="text" class="input-text" value placeholder="${districtCommune}" name="calculate_shipping_address" id="calc_shipping_state" style="width: 231px;">
                                                                </p>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <p class="form-row form-row-wide" style="width: 100px;">
                                                                    <input type="text" class="input-text" value="${postCode}" name="calculate_shipping_postcode" id="calc_shipping_postcode" style="width: 100px; margin-right: -66px; float: right;">
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <p class="form-row form-row-wide">
                                                            <select name="calculate_shipping_city" id="calc_shipping_country" class="country_to_state" rel="calc_shipping_state">
                                                                <jsp:include page="provincial.jsp"></jsp:include>
                                                            </select>
                                                            </p>
                                                            <div class="row row-10">
                                                                <div class="col-sm-6">
                                                                    <p class="form-row form-row-wide">
                                                                        <input type="text" class="input-text" value placeholder="District / Commune" name="calculate_shipping_address" id="calc_shipping_state" style="width: 231px;">
                                                                    </p>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <p class="form-row form-row-wide" style="width: 100px;">
                                                                        <input type="text" class="input-text" value placeholder="Postcode" name="calculate_shipping_postcode" id="calc_shipping_postcode" style="width: 100px; margin-right: -66px; float: right;">
                                                                    </p>
                                                                </div>
                                                            </div>
                                                    </c:otherwise>
                                                </c:choose>
<!--                                                <p>
                                                    <button type="submit" id="kaka" name="calc_shipping" value="1" class="btn btn-md btn-dark" onclick="checkInputAddres()">Update Totals</button>
                                                </p>-->

                                            </div>      
                                        </div> <!-- end calculate shipping -->
                                    </div>
                                <!--</form>-->
                            </div> <!-- end col -->
                            <!-- Cart Totals -->
                            <div class="col-md-4">
                                <div class="cart_totals">
                                    <h2 class="heading uppercase bottom-line full-grey">Cart Totals</h2>
<!--                                    <form action="<%=request.getContextPath()%>/carts/updateCart.htm" method="POST">-->
                                        <table class="table shop_table">
                                            <tbody>
                                                <tr class="cart-subtotal">
                                                    <th>Cart Subtotal</th>
                                                    <td>
                                                        <span class="amount">$${totalAmount}</span>
                                                    </td>
                                                </tr>
                                                <tr class="shipping">
                                                    <th>Shipping</th>
                                                    <td>
                                                        <span>${shipping}</span>
                                                    </td>
                                                </tr>
                                                <tr class="order-total">
                                                    <th><strong>Order Total</strong></th>
                                                    <td>
                                                        <strong><span class="amount">$${orderTotal}</span></strong>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <!--<div class="actions" id="abc" style="display: none;">-->
                                        <div class="actions">
                                            <input type="submit" name="update_cart" id="uCart" value="Update Cart" class="btn btn-md btn-dark" onclick="checkInputAddres();">
                                            <div class="wc-proceed-to-checkout">
                                                <a href="<%=request.getContextPath()%>/index/checkout.htm" class="btn btn-md btn-color"><span>proceed to checkout</span></a>
                                            </div>
                                        </div>
                                    <!-- </form> -->
                                </div>
                            </div> <!-- end col cart totals -->
                            </form>
                        </div> <!-- end row -->        
                    </div> <!-- end container -->
                </section> <!-- end cart -->
                <jsp:include page="footer.jsp" />
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
            
            function checkInputAddres() {
                if (document.getElementById("calc_shipping_country").value == 0) {
                    alert("You haven't yet select 'provincial' name!");
                } else {
                    if (document.getElementById("calc_shipping_state").value == "") {
                        alert("You haven't yet input 'District / Commune' name!");
                    } else {
                        if (document.getElementById("calc_shipping_postcode").value == "") {
                            alert("You haven't yet input 'Postcode' name!");
                        } 
                    }
                }
            }

//            function checkInputAddres() {
//                var c = document.getElementById("abc"); 
//                var country = document.getElementById("calc_shipping_country").value;
//                var district = document.getElementById("calc_shipping_state").value;
//                var postcode = document.getElementById("calc_shipping_postcode").value;
//                if(country != "" && district != "" && postcode != "" ){
//                     if(c.style.display == 'none') {
//                                c.style.display = 'block';
//                            } else {
//                                c.style.display = 'none';
//                            }
//                            return true;
//                } else {
//                        if (document.getElementById("calc_shipping_country").value == 0) {
//                    alert("You haven't yet select 'provincial' name!");
//                    return false;
//                } 
//                  if (document.getElementById("calc_shipping_state").value == "") {
//                        alert("You haven't yet input 'District / Commune' name!");
//                          return false;
//                    }
//                     if (document.getElementById("calc_shipping_postcode").value == "") {
//                            alert("You haven't yet input 'Postcode' name!");
//                              return false;
//                        } 
//                }
              
//            }


//                $(document).ready(function(){
//                    $("#hide").click(function(){
//                        $("p").hide();
//                    });
//                    $("#kaka").click(function(){
//                        $("abc").show();
//                    });
//                });
        </script>
    </body>
</html>
