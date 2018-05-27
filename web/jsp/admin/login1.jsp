<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="loginInclude.jsp"></jsp:include>
<html lang="en"> <!--<![endif]-->
    <!-- BEGIN HEAD -->
    <head>
        <jsp:include page="loginHead.jsp"></jsp:include>
    </head>
    <!-- END HEAD -->
    <!-- BEGIN BODY -->
    <body class="login">
        <!-- BEGIN LOGO -->
        <div class="logo">
            <img src="../jsp/admin/assets/img/logo-big.png" alt="" /> 
        </div>
        <!-- END LOGO -->
        <!-- BEGIN LOGIN -->
        <div class="content">
            <!-- BEGIN LOGIN FORM -->
            <jsp:include page="loginAccount.jsp"></jsp:include>
            <!-- END LOGIN FORM -->        
            <!-- BEGIN FORGOT PASSWORD FORM -->
            <jsp:include page="loginForgotPassword.jsp"></jsp:include>
            <!-- END FORGOT PASSWORD FORM -->
            <!-- BEGIN REGISTRATION FORM -->
            <jsp:include page="loginCreateAccount.jsp"></jsp:include>
            <!-- END REGISTRATION FORM -->
        </div>
        <!-- END LOGIN -->
        <jsp:include page="loginFooter.jsp"></jsp:include>
    </body>
    <!-- END BODY -->
</html>
