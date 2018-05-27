<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="includes.jsp"></jsp:include>

    <html>
        <head>
            <title>Cosmetic | Checkout</title>

            <link rel="stylesheet" href="../jsp/user/css/checkout.css" />
            <link rel="stylesheet" href="../jsp/user/css/bootstrap.min.css" />


        <jsp:include page="head.jsp" />
    </head>
    <body class="relative grid-1440">
        <main class="main-wrapper oh">
            <jsp:include page="header.jsp" />
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
                            Shop Checkout

                        </li>
                    </ol>
                </div> <!-- end breadcrumbs -->


                <section id="content-page">
                    <div class="container">
                        <div class="order-info">
                            <h2>THÔNG TIN GIAO HÀNG</h2>
                            <div></div>
                            <div class="row">
                                <div class="col-sm-8 order-left">
                                    <h3>Để đặt hàng hãy giúp chúng tôi điền đầy đủ thông tin dưới đây.</h3>
                                    <form action="<%=request.getContextPath()%>/carts/payment.htm" method="POST">
                                        <div class="info-buyer">
                                           
                                            <div class="row">
                                                
                                                <div class="col-sm-12">
                                                    <h4 class="font-18">Người mua</h4>
                                                    <input type="hidden" name="CustomerID" id="CustomerID" value="1018" />
                                                    <input type="hidden" name="TotalAmount" id="TotalAmount" value="" />
                                                    <div class="form-group">
                                                        <label for="pwd">Họ tên  <span class="text-danger">(*)</span></label>
                                                        <div>
                                                            <input type="text" name="buyerName" id="buyerName" value="${acc.userName}" class="form-control" placeholder="Người mua">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="email">Số điện thoại <span class="text-danger">(*)</span></label>
                                                        <div>
                                                            <input type="text" name="buyerPhone" id="buyerPhone" value="${acc.phone}" class="form-control" placeholder="Số điện thoại người mua">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="pwd">Email  <span class="text-danger">(*)</span></label>
                                                        <div>
                                                            <input type="text" name="buyerEmail" id="buyerEmail" value="${acc.email}" class="form-control" placeholder="Địa chỉ email người mua">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="pwd">Địa chỉ  <span class="text-danger">(*)</span></label>
                                                        <div>
                                                            <input type="text" name="buyerAddress" id="buyerAddress" value="${acc.address}" class="form-control" placeholder="Số nhà, ngõ, đường, xã/phường, quận/huyện...">
                                                        </div>
                                                    </div>

                                                </div><!-- .col-sm -->


                                               
                                                <div class="clearfix"></div>

                                                <div class="clearfix"></div>
                                            </div><!-- .row -->
                                        </div>
                                        <div class="form-group navbar-right">
                                            <div>
                                                <a href="<%=request.getContextPath()%>/carts/myCart.htm" class="btn btn-primary"><i class="fa fa-angle-left"></i>QUAY LẠI GIỎ HÀNG</a>
                                                <button type="submit" class="btn btn-primary">TIẾP TỤC</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="col-sm-4 order-right">
                                    <h3>TỔNG QUAN GIỎ HÀNG</h3>
                                    <div class="order-detail" style="margin-bottom:30px;">
                                        <div>
                                            <table class="table" style="width:100%;margin-top:-19px;border-top:1px solid #ddd;">
                                                <thead>
                                                    <tr>
                                                        <th class="text-center">Sản phẩm</th>
                                                        <th class="text-center">Số lượng</th>
                                                        <th class="text-center">Giá</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${listCart}" var="cart">
                                                    <tr>
                                                        <td class="text-left">
                                                            <p style="text-overflow:ellipsis;white-space:nowrap;overflow:hidden;width:94px;">${cart.product.productName}</p>
                                                        </td>
                                                        <td>${cart.quantity}</td>
                                                     
                                                
                                                        
                                                        <td>
                                                            <b id="price-1">

                                                                ${cart.product.price*cart.quantity}$
                                                            </b>
                                                        </td>

                                                    </tr>
                                                    </c:forEach>

                                                </tbody>
                                            </table>
                                        </div>


                                        <ul class="total-cart">
                                            <li class="clearfix">
                                                <p class="type-total">Tổng số hàng:</p>
                                                <p class="value-right">1</p>
                                            </li>
                                            <li class="clearfix">
                                                <p class="type-total">Giá tổng:</p>
                                                <p class="value-right">${totalAmount}$</p>
                                            </li>
                                            <li class="clearfix">
                                                <p class="type-total">Phí vận chuyển:</p>
                                                <p class="value-right">5$</p>
                                            </li>
                                        </ul>
                                        <div class="total-money clearfix">
                                            <p class="type-total">Tổng tiền:</p>
                                            <p class="total-value">${totalAmount+5}$</p>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="content-page-bot">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-3 content-page-bot-item text-center">
                                    <div class="icon-page-bot">
                                        <img src="/Content/img/Icon-cart.png" alt="" class="img-responsive center-block" />
                                    </div>
                                    <h3><strong>GIAO HÀNG MIỄN PHÍ</strong></h3>
                                    <p>Giao hàng miễn phí toàn quốc với đơn hàng từ 5,000,000đ trở lên</p>
                                </div><!-- content-page-bot-item -->
                                <div class="col-sm-3 content-page-bot-item text-center">
                                    <div class="icon-page-bot">
                                        <img src="/Content/img/Icon-security-pay.png" alt="" class="img-responsive center-block" />
                                    </div>
                                    <h3><strong>BẢO MẬT THANH TOÁN</strong></h3>
                                    <p>Thông tin khách hàng khi thanh toán sẽ được bảo mật tuyệt đối</p>
                                </div><!-- content-page-bot-item -->
                                <div class="col-sm-3 content-page-bot-item text-center">
                                    <div class="icon-page-bot">
                                        <img src="/Content/img/Icon-pay.png" alt="" class="img-responsive center-block" />
                                    </div>
                                    <h3><strong>THANH TOÁN ĐA DẠNG</strong></h3>
                                    <p>Quý khách được chọn một trong hai hình thức thanh toán là qua thẻ hoặc ví điện tử</p>
                                </div><!-- content-page-bot-item -->
                                <div class="col-sm-3 content-page-bot-item text-center">
                                    <div class="icon-page-bot">
                                        <img src="/Content/img/Icon-coin-gift.png" alt="" class="img-responsive center-block" />
                                    </div>
                                    <h3><strong>TÍCH ĐIỂM, TẶNG QUÀ</strong></h3>
                                    <p>Khi mua hàng tại cửa hàng quý khách sẽ có một quỹ điểm tích lũy</p>
                                </div><!-- content-page-bot-item -->
                            </div>
                        </div>
                    </div><!-- content-page-bot -->
                </section><!-- content page -->

                <div class="menu-fix hidden">
                    <ul>
                        <li><a class="blue" href=""><i><img src="/Content/img/icon-print.png" /><img src="/Content/img/print.png"></i><span>Công nghệ - Điện tử - Điên lạnh</span></a></li>
                        <li><a class="pink" href=""><i><img src="/Content/img/icon-heart-outline.png" /><img src="/Content/img/lifeline-in-a-heart-outline.png"></i><span>Sức khỏe & Sắc Đẹp</span></a></li>
                        <li><a class="pink-s" href=""><i><img src="/Content/img/icon-photo-camera.png" /><img src="/Content/img/photo-cameraw.png"></i><span>Gia dụng không điện áp</span></a></li>
                        <li><a class="orange" href=""><i><img src="/Content/img/icon-shirt.png" /><img src="/Content/img/shirtw.png"></i><span>Thời trang & Phụ kiện thời trang</span></a></li>
                        <li><a class="yellow" href=""><i><img src="/Content/img/icon-coffee-cup.png" /><img src="/Content/img/coffee-cupw.png"></i><span>Thực phẩm & Hàng tiêu dùng</span></a></li>
                        <li><a class="green" href=""><i><img src="/Content/img/icon-home.png" /><img src="/Content/img/homew.png"></i><span>Bất động sản, Nội thất</span></a></li>
                        <li><a class="violet" href=""><i><img src="/Content/img/icon-notebook.png" /><img src="/Content/img/notebookw.png"></i><span>Đồ chơi, Sách & Văn phòng phẩm</span></a></li>
                        <li><a class="red" href=""><i><img src="/Content/img/icon-price-tag.png" /><img src="/Content/img/price-tagw.png"></i><span>Vouchers dịch vụ</span></a></li>
                    </ul>
                </div>

                <!-- Checkout -->
                <section class="section-wrap checkout pt-40 pb-70">
                    <div class="container relative">
                        <div class="row">

                            <div class="ecommerce col-xs-12">

                                <div class="row mb-30">
                                    <div class="col-md-8">
                                        <p class="ecommerce-info">
                                            Returning Customer? 
                                            <a href="#" class="showlogin">Click here to login</a>
                                        </p>
                                    </div>
                                </div>

                                <form name="checkout" class="checkout ecommerce-checkout row">

                                    <div class="col-md-8" id="customer_details">
                                        <div>
                                            <h2 class="heading uppercase bottom-line full-grey mb-30">billing address</h2>

                                            <p class="form-row form-row-wide address-field update_totals_on_change validate-required ecommerce-validated" id="billing_country_field">
                                                <label for="billing_country">Country
                                                    <abbr class="required" title="required">*</abbr>
                                                </label>
                                                <select name="billing_country" id="billing_country" class="country_to_state country_select" title="Country *">
                                                    <jsp:include page="country.jsp"></jsp:include>
                                                    </select>
                                                </p>

                                                <p class="form-row form-row-first validate-required ecommerce-invalid ecommerce-invalid-required-field" id="billing_first_name_field">
                                                    <label for="billing_first_name">First Name
                                                        <abbr class="required" title="required">*</abbr>
                                                    </label>
                                                    <input type="text" class="input-text" placeholder value name="billing_first_name" id="billing_first_name">
                                                </p>

                                                <p class="form-row form-row-last validate-required ecommerce-invalid ecommerce-invalid-required-field" id="billing_last_name_field">
                                                    <label for="billing_last_name">Last Name
                                                        <abbr class="required" title="required">*</abbr>
                                                    </label>
                                                    <input type="text" class="input-text" placeholder value name="billing_last_name" id="billing_last_name">
                                                </p>

                                                <p class="form-row form-row-wide" id="billing_company_field">
                                                    <label for="billing_company">Company</label>
                                                    <input type="text" class="input-text" placeholder value name="billing_company" id="billing_company">
                                                </p>

                                                <p class="form-row form-row-wide address-field validate-required ecommerce-invalid ecommerce-invalid-required-field" id="billing_address_1_field">
                                                    <label for="billing_address_1">Address
                                                        <abbr class="required" title="required">*</abbr>
                                                    </label>
                                                    <input type="text" class="input-text" placeholder="Street address" value name="billing_address_1" id="billing_address_1">
                                                </p>

                                                <p class="form-row form-row-wide address-field" id="billing_address_2_field">
                                                    <input type="text" class="input-text" placeholder="Apartment, suite, unit etc. (optional)" value name="billing_address_2" id="billing_address_2">
                                                </p>

                                                <p class="form-row form-row-wide address-field validate-required" id="billing_city_field" data-o_class="form-row form-row-wide address-field validate-required">
                                                    <label for="billing_city">Town / City
                                                        <abbr class="required" title="required">*</abbr>
                                                    </label>
                                                    <input type="text" class="input-text" placeholder="Town / City" value name="billing_city" id="billing_city">
                                                </p>

                                                <p class="form-row form-row-first address-field validate-state" id="billing_state_field" data-o_class="form-row form-row-first address-field validate-state">
                                                    <label for="billing_state">County</label>
                                                    <input type="text" class="input-text" placeholder value name="billing_state" id="billing_state">
                                                </p>

                                                <p class="form-row form-row-last address-field validate-required validate-postcode ecommerce-invalid ecommerce-invalid-required-field" id="billing_postcode_field" data-o_class="form-row form-row-last address-field validate-required validate-postcode">
                                                    <label for="billing_postcode">Postcode
                                                        <abbr class="required" title="required">*</abbr>
                                                    </label>
                                                    <input type="text" class="input-text" placeholder="Postcode" value name="billing_postcode" id="billing_postcode">
                                                </p>

                                                <p class="form-row form-row-first validate-required validate-email" id="billing_email_field">
                                                    <label for="billing_email">Email Address
                                                        <abbr class="required" title="required">*</abbr>
                                                    </label>
                                                    <input type="text" class="input-text" placeholder value name="billing_email" id="billing_email">
                                                </p>

                                                <p class="form-row form-row-last validate-required validate-phone" id="billing_phone_field">
                                                    <label for="billing_phone">Phone
                                                        <abbr class="required" title="required">*</abbr>
                                                    </label>
                                                    <input type="text" class="input-text" placeholder value name="billing_phone" id="billing_phone">
                                                </p>

                                                <div class="clear"></div>

                                            </div>

                                            <p class="form-row form-row-wide create-account">
                                                <input type="checkbox" class="input-checkbox" id="createaccount" name="createaccount" value="1">
                                                <label for="createaccount" class="checkbox">Create an account?</label>
                                            </p>

                                            <div class="clear"></div>

                                            <div>
                                                <div class="ecommerce-shipping-fields">
                                                    <input type="checkbox" id="ship-to-different-address-checkbox" class="input-checkbox" name="ship_to_different_address" value="1">
                                                    <label for="ship-to-different-address-checkbox" class="checkbox">Ship to a different address</label>
                                                </div>
                                                <p class="form-row notes ecommerce-validated" id="order_comments_field">
                                                    <label for="order_comments">Order Notes</label>
                                                    <textarea name="order_comments" class="input-text" id="order_comments" placeholder="Notes about your order, e.g. special notes for delivery." rows="2" cols="6"></textarea>
                                                </p>
                                            </div>

                                            <div class="clear"></div>

                                        </div> <!-- end col -->

                                        <!-- Your Order -->
                                        <div class="col-md-4">
                                            <div class="order-review-wrap ecommerce-checkout-review-order" id="order_review">
                                                <h2 class="heading uppercase bottom-line full-grey">Your Order</h2>
                                                <table class="table shop_table ecommerce-checkout-review-order-table">
                                                    <tbody>
                                                        <tr>
                                                    <c:forEach items="${listCart}" var="cart">
                                                    <th>${cart.product.productName}<span class="count"> x ${cart.quantity}</span></th>
                                                    <td>
                                                        <span class="amount">$${cart.product.price * cart.quantity}</span>
                                                    </td>
                                                </c:forEach>
                                                </tr>
                                                <tr class="cart-subtotal">
                                                    <th>Cart Subtotal</th>
                                                    <td>
                                                        <span class="amount">$${totalAmount}</span>
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
                                                        <strong><span class="amount">$1799.00</span></strong>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>

                                            <div id="payment" class="ecommerce-checkout-payment">
                                                <h2 class="heading uppercase bottom-line full-grey">Payment Method</h2>
                                                <ul class="payment_methods methods">

                                                    <li class="payment_method_bacs">
                                                        <input id="payment_method_bacs" type="radio" class="input-radio" name="payment_method" value="bacs" checked="checked">
                                                        <label for="payment_method_bacs">Direct Bank Transfer</label>
                                                        <div class="payment_box payment_method_bacs">
                                                            <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order wont be shipped until the funds have cleared in our account.</p>
                                                        </div>
                                                    </li>

                                                    <li class="payment_method_cheque">
                                                        <input id="payment_method_cheque" type="radio" class="input-radio" name="payment_method" value="cheque">
                                                        <label for="payment_method_cheque">Cheque payment</label>
                                                        <div class="payment_box payment_method_cheque">
                                                            <p>Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                                                        </div>
                                                    </li>

                                                    <li class="payment_method_paypal">
                                                        <input id="payment_method_paypal" type="radio" class="input-radio" name="payment_method" value="paypal">
                                                        <label for="payment_method_paypal">Paypal</label>
                                                        <img src="../jsp/user/img/shop/paypal.png" alt="">
                                                        <div class="payment_box payment_method_paypal">
                                                            <p>Pay via PayPal; you can pay with your credit card if you don?t have a PayPal account.</p>
                                                        </div>
                                                    </li>

                                                </ul>
                                                <div class="form-row place-order">
                                                    <input type="submit" name="ecommerce_checkout_place_order" class="btn btn-lg btn-color" id="place_order" value="Place order">
                                                </div>
                                            </div>
                                        </div>
                                    </div> <!-- end order review -->
                                </form>

                            </div> <!-- end ecommerce -->

                        </div> <!-- end row -->
                    </div> <!-- end container -->
                </section> <!-- end checkout -->
                <jsp:include page="footer.jsp" />
            </div> <!-- end content wrapper -->
        </main> <!-- end main wrapper -->
    </body>
</html>
