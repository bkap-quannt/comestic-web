<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<script>
    function validate() {
        var userName = document.getElementById("userName").value;
        var pass = document.getElementById("password").value;
        if (userName != "" && pass != "") {
            return true;
        } else {
            if (userName == "") {
                swal("Bạn phải nhập tên đăng nhập.");
                document.getElementById("userName").focus();
                return false;
            }
            if (pass == "") {
                swal("Bạn phải nhập mật khẩu.");
                document.getElementById("password").focus();
                return false;
            }
        }
    }
</script>
<!-- BEGIN LOGIN FORM -->
<f:form class="form-vertical login-form" action="backendLogin.htm" commandName="user" onsubmit="return validate()">
    <fieldset>
        <h3 class="form-title">Login to your account</h3>
        <!--                    <div class="alert alert-error hide">
                                <button class="close" data-dismiss="alert"></button>
                                <span>Enter any username and password.</span>
                            </div>-->
        <label class="block clearfix">
            <div class="message">
                ${message}
            </div>
        </label>
        <div class="control-group">
            <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
            <label class="control-label visible-ie8 visible-ie9">Username</label>
            <div class="controls">
                <div class="input-icon left">
                    <i class="icon-user"></i>
                    <f:input class="m-wrap placeholder-no-fix" type="text" autocomplete="off" placeholder="Username" name="userName" path="userName" id="userName" style="height: 35px;" />
                </div>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label visible-ie8 visible-ie9">Password</label>
            <div class="controls">
                <div class="input-icon left">
                    <i class="icon-lock"></i>
                    <f:input class="m-wrap placeholder-no-fix" type="password" autocomplete="off" placeholder="Password" name="password" path="password" id="password" style="height: 35px;" />
                </div>
            </div>
        </div>
        <div class="form-actions">
            <label class="checkbox">
                <input type="checkbox" name="remember" value="1"/> Remember me
            </label>
            <button type="submit" class="btn green pull-right">
                Login <i class="m-icon-swapright m-icon-white"></i>
            </button>            
        </div>
        <div class="forget-password">
            <h4>Forgot your password ?</h4>
            <p>
                no worries, click <a href="javascript:;"  id="forget-password">here</a>
                to reset your password.
            </p>
        </div>
        <div class="create-account">
            <p>
                Don't have an account yet ?&nbsp; 
                <a href="javascript:;" id="register-btn" >Create an account</a>
            </p>
        </div>
    </fieldset>
</f:form>
<!-- END LOGIN FORM -->        
