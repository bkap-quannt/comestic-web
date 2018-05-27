<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<html lang="en">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <jsp:include page="head1.jsp"></jsp:include>
    <script src="../jsp/admin/js/ckeditor/ckeditor.js" type="text/javascript"></script>
    <script src="../jsp/admin/js/ckfinder/ckfinder.js" type="text/javascript"></script>
        <script>
            function validate() {
                var productName = document.getElementById("productName").value;
                var des = document.getElementById("description").value;
                var desDetail = document.getElementById("descriptionDetail").value;
                var productCode = document.getElementById("productCode").value;
                var imageLink = document.getElementById("imageLink").value;
                if (productName != "" && des != "" && productCode != "" && des != "" && desDetail != "" && imageLink != "") {
                    return true;
                } else {
                    if (productName == "") {
                        swal("Bạn phải nhập tên sản phẩm.");
                        document.getElementById("productName").focus();
                        return false;
                    }
                    if (des == "") {
                        swal("Bạn phải nhập mô tả sản phẩm.");
                        document.getElementById("description").focus();
                        return false;
                    }
                    if (desDetail == "") {
                        swal("Bạn phải nhập mô tả chi tiết sản phẩm.");
                        document.getElementById("descriptionDetail").focus();
                        return false;
                    }
                    if (productCode == "") {
                        swal("Bạn phải nhập product code của sản phẩm.");
                        document.getElementById("productCode").focus();
                        return false;
                    }
                    if (imageLink == "") {
                        swal("Bạn phải chọn ảnh của sản phẩm.");
                        document.getElementById("imageLink").focus();
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
                            <li class="active">New Product</li>
                        </ol>
                    </section>
                    <!-- Main content -->
                    <section class="content">
                        <!-- Info boxes -->
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                    <f:form class="form-horizontal form-label-left" action="insertProduct.htm" method="GET" commandName="newProduct" enctype="multipart/form-data"  onsubmit="return validate()">
                                        <div class="form-group message">
                                            ${message}
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Product Code <span class="required" style="color: red;">*</span></label>
                                            <div class="col-md-10 col-sm-10 col-xs-12">
                                                <f:input type="text" id="productCode" class="form-control col-md-7 col-xs-12" path="productCode" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Product From <span class="required" style="color: red;">*</span></label>
                                            <div class="col-md-10 col-sm-10 col-xs-12">
                                                <f:input type="text" id="productFrom" class="form-control col-md-7 col-xs-12" path="productFrom" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Product Name <span class="required" style="color: red;">*</span></label>
                                            <div class="col-md-10 col-sm-10 col-xs-12">
                                                <f:input type="text" id="productName" class="form-control col-md-7 col-xs-12" path="productName" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="last-name">Description <span class="required" style="color: red;">*</span>
                                            </label>
                                            <div class="col-md-10 col-sm-10 col-xs-12">
                                                <f:textarea type="text" id="description" class="form-control col-md-7 col-xs-12" path="description" /> 
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="last-name">Description Detail <span class="required" style="color: red;">*</span>
                                            </label>
                                            <div class="col-md-10 col-sm-10 col-xs-12">
                                                <f:textarea id="descriptionDetail"  class="form-control col-md-7 col-xs-12" path="descriptionDetail"></f:textarea>
                                                </div>
                                            </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="last-name">Image <span class="required" style="color: red;">*</span></label>
                                            <div class="col-md-10 col-sm-10 col-xs-12">
                                                <f:input type="file" id="imageLink"  class="form-control col-md-7 col-xs-12" path="imageLink" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="last-name">Price <span class="required" style="color: red;">*</span>
                                            </label>
                                            <div class="col-md-10 col-sm-10 col-xs-12">
                                                <f:input type ="text" id="price"  class="form-control col-md-7 col-xs-12" path="price" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">In Stock <span class="required" style="color: red;">*</span>
                                            </label>
                                            <div class="col-md-10 col-sm-10 col-xs-12">
                                                <f:input type="text" id="inStock" class="form-control col-md-7 col-xs-12" path="inStock" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Flag Sale <span class="required" style="color: red;">*</span>
                                            </label>
                                            <div class="col-md-10 col-sm-10 col-xs-12">
                                                <f:input type="text" id="flagSale" class="form-control col-md-7 col-xs-12" path="flagSale" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Price Sale <span class="required" style="color: red;">*</span>
                                            </label>
                                            <div class="col-md-10 col-sm-10 col-xs-12">
                                                <f:input type="text" id="priceSale" class="form-control col-md-7 col-xs-12" path="priceSale" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="last-name">Provider <span class="required" style="color: red;">*</span>
                                            </label>
                                            <div class="col-md-10 col-sm-10 col-xs-12">
                                                <f:select id="providerId" class="form-control col-md-7 col-xs-12" path="providerId" >

                                                    <c:forEach items="${listProvider}" var="provider">
                                                        <f:option value="${provider.providerId}" >${provider.providerName}</f:option>
                                                    </c:forEach>
                                                </f:select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="last-name">Category <span class="required" style="color: red;">*</span>
                                            </label>
                                            <div class="col-md-10 col-sm-10 col-xs-12">
                                                <f:select id="categoryId" class="form-control col-md-7 col-xs-12"  path="categoryId" >
                                                    <c:forEach items="${listCategory}" var="category">
                                                        <f:option value="${category.categoryId}" >${category.categoryName}</f:option>
                                                    </c:forEach>
                                                </f:select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="last-name">Menu <span class="required" style="color: red;">*</span>
                                            </label>
                                            <div class="col-md-10 col-sm-10 col-xs-12">
                                                <f:select id="menuId" class="form-control col-md-7 col-xs-12"  path="menuId" >

                                                    <c:forEach items="${listMenu}" var="menu">
                                                        <f:option value="${menu.menuId}" >${menu.menuName}</f:option>
                                                    </c:forEach>
                                                </f:select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Discount <span class="required" style="color: red;">*</span>
                                            </label>
                                            <div class="col-md-10 col-sm-10 col-xs-12">
                                                <f:input type="text" id="discount" class="form-control col-md-7 col-xs-12" path="discount" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Status <span class="required" style="color: red;">*</span>
                                            </label>
                                            <div class="col-md-10 col-sm-10 col-xs-12">
                                                <f:input type="text" id="productStatus" class="form-control col-md-7 col-xs-12" path="productStatus" />
                                            </div>
                                        </div>
                                        <div class="ln_solid"></div>
                                        <div class="form-group">
                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                <button class="btn btn-primary" type="button" onclick="history.go(-1)">Back</button>
                                                <button type="submit" class="btn btn-success">Add</button>
                                                <button class="btn btn-primary" type="reset">Cancel</button>
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