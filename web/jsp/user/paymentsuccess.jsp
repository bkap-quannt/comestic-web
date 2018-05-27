
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <title>Cosmetic | paymentsuccess</title>

            <link rel="stylesheet" href="../jsp/user/css/checkout.css" />
            <link rel="stylesheet" href="../jsp/user/css/bootstrap.min.css" />


        <jsp:include page="head.jsp" />
    </head>
    <body>
         <div class="fullLoading" style="display:none">
                <div class="cssload-ball"></div>
            </div>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3" style="min-height: 200px; margin-top: 50px;">
            
        <h3>Chúc mừng bạn thanh toán thành công!</h3>
        <a class="btn btn-primary" href="<%=request.getContextPath()%>/index/allProduct.htm">Tiếp tục mua hàng</a>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
