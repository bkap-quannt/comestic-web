<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<html lang="en">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <jsp:include page="head1.jsp"></jsp:include>
    <script>
        function validate() {
            var userName = document.getElementById("userName").value;
            var des = document.getElementById("password").value;
            var dis = document.getElementById("status").value;
            if (userName != "" && des != "" && dis != "") {
                return true;
            } else {
                if (userName == "") {
                    swal("Bạn phải nhập tên danh mục sản phẩm.");
                    document.getElementById("userName").focus();
                    return false;
                }
                if (des == "") {
                    swal("Bạn phải nhập mô tả danh mục sản phẩm.");
                    document.getElementById("password").focus();
                    return false;
                }
                if(dis == ""){

                     swal("Bạn phải nhập mức độ ưu tiên hiển thi của danh mục.");
                    document.getElementById("status").focus();
                    return false;
                }

            }
        }
    </script>
        <body class="hold-transition skin-blue sidebar-mini">
            <div class="wrapper">
                <jsp:include page="header1.jsp"></jsp:include>
                <!-- Left side column. contains the logo and sidebar -->
                <jsp:include page="sidebar.jsp"></jsp:include>
                <!-- Content Wrapper. Contains page content -->
                <div class="content-wrapper">
                    <!-- Content Header (Page header) -->
                    <section class="content-header">
                        <h1>
                            Dashboard
                        </h1>
                        <ol class="breadcrumb">
                            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                            <li class="active">Update User</li>
                        </ol>
                    </section>
                    <!-- Main content -->
                    <section class="content">
                        <!-- Info boxes -->
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <f:form class="form-horizontal form-label-left" action="updateUser.htm" commandName="updateUser" onsubmit="return validate()">
                                            <div class="form-group message">
                                                ${message}
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">User ID</label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="userId" class="form-control col-md-7 col-xs-12" path="userId" readonly="true"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">User Name <span class="required" style="color: red">*</span></label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="userName" class="form-control col-md-7 col-xs-12" path="userName" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Password <span class="required" style="color: red">*</span></label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="password"  class="form-control col-md-7 col-xs-12" path="password" /> 
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Role <span class="required" style="color: red">*</span></label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:select id="roleId" class="form-control col-md-7 col-xs-12" path="roleId" >
                                                        <c:forEach items="${listRole}" var="role">
                                                            <f:option value="${role.roleId}" >${role.roleName}</f:option>
                                                        </c:forEach>
                                                    </f:select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Name <span class="required" style="color: red">*</span></label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="name"  class="form-control col-md-7 col-xs-12" path="name" /> 
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Status <span class="required" style="color: red">*</span></label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="status"  class="form-control col-md-7 col-xs-12" path="status" /> 
                                                </div>
                                            </div>
                                            <div class="ln_solid"></div>
                                            <div class="form-group">
                                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                    <button class="btn btn-primary" type="button" onclick="history.go(-1)">Back</button>
                                                    <button type="submit" class="btn btn-success">Update</button>
                                                </div>
                                            </div>
                                        </f:form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- /.content -->
                </div>
            <!-- /.content-wrapper -->
            <jsp:include page="footer1.jsp"></jsp:include>
                <!-- Control Sidebar -->
            <%--<jsp:include page="sidebar1.jsp"></jsp:include>--%>
            <!-- /.control-sidebar -->
            <!-- Add the sidebar's background. This div must be placed
                 immediately after the control sidebar -->
            <!--<div class="control-sidebar-bg"></div>-->
        </div>
        <!-- ./wrapper -->
        <!-- jQuery 3 -->
        <jsp:include page="jQuery1.jsp"></jsp:include>
    </body>
</html>
