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
<!-- BEGIN FORGOT PASSWORD FORM -->
<form class="form-vertical forget-form" action="index.html" method="post">
    <h3 >Forget Password ?</h3>
    <p>Enter your e-mail address below to reset your password.</p>
    <div class="control-group">
        <div class="controls">
            <div class="input-icon left">
                <i class="icon-envelope"></i>
                <input class="m-wrap placeholder-no-fix" type="text" autocomplete="off" placeholder="Email" name="email" />
            </div>
        </div>
    </div>
    <div class="form-actions">
        <button type="button" id="back-btn" class="btn">
            <i class="m-icon-swapleft"></i> Back
        </button>
        <button type="submit" class="btn green pull-right">
            Submit <i class="m-icon-swapright m-icon-white"></i>
        </button>            
    </div>
</form>
<!-- END FORGOT PASSWORD FORM -->
