<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <jsp:include page="head1.jsp"></jsp:include>
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
                            <li class="active">Management Product</li>
                        </ol>
                    </section>
                    <!-- Main content -->
                    <section class="content">
                        <!-- Info boxes -->
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="table-header">
                                    <a href="<%=request.getContextPath()%>/backend/initInsertProduct.htm" class="">New Product</a>
                                </div>
                                <div class="table-responsive">    
                                    <table id="product" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>Product ID</th>
                                                <th>Product Code</th>
                                                <th>Product From</th>
                                                <th>Product Name</th>
                                                <th>Menu ID</th>
                                                <th>Category ID</th>
                                                <th style="width:100px;text-align:center;">Image</th>
                                                <th>Price</th>
                                                <th>In Stock</th>
                                                <th>Flag Sale</th>
                                                <th>Price Sale</th>
                                                <th>Status</th>
                                                <th>Discount</th>
                                                <th>Review</th>
                                                <th>Provider ID</th>
                                                <th>Creater</th>
                                                <th>Editer</th>
                                                <th>Created</th>
                                                <th>Modified</th>
                                                <th>Deleted</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${listProduct}" var="product">
                                                <tr>
                                                    <td>${product.productId}</td>
                                                    <td>${product.productCode}</td>
                                                    <td>${product.productFrom}</td>
                                                    <td>${product.productName}</td>
                                                    <td>${product.menuId}</td>
                                                    <td>${product.categoryId}</td>
                                                    <td><img title="${product.productName}" src="../jsp/user/img/shop/${product.imageLink}" class="img-fix3" style="width: 60px; height: 70px;"></td>
                                                    <td>${product.price}</td>
                                                    <td>${product.inStock}</td>
                                                    <td>${product.flagSale}</td>
                                                    <td>${product.priceSale}</td>
                                                    <td>${product.productStatus}</td>
                                                    <td>${product.discount}</td>
                                                    <td>${product.reviews}</td>
                                                    <td>${product.providerId}</td>
                                                    <td>${product.creater}</td>
                                                    <td>${product.editer}</td>
                                                    <td>${product.created}</td>
                                                    <td>${product.modified}</td>
                                                    <td>${product.deleted}</td>
                                                    <td>
                                                        <div class="hidden-sm hidden-xs action-buttons">
                                                            <a class="blue" href="<%=request.getContextPath()%>/backend/viewProduct.htm?productId=${product.productId}">
                                                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                                            </a>
                                                            <a class="green" href="<%=request.getContextPath()%>/backend/initUpdateProduct.htm?productId=${product.productId}">
                                                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                                                            </a>
                                                            <a class="red" href="<%=request.getContextPath()%>/backend/deleteProduct.htm?productId=${product.productId}">
                                                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>   
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
