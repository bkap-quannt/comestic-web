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
                            <li class="active">Management Color</li>
                        </ol>
                    </section>
                    <!-- Main content -->
                    <section class="content">
                        <!-- Info boxes -->
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="table-header">
                                    <a href="<%=request.getContextPath()%>/backend/initInsertColor.htm" class="">New Color</a>
                                </div>
                                <div>    
                                    <table id="category" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>Color ID</th>
                                                <th>Color Name</th>
                                                <th>Natation</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${listColor}" var="color">
                                                <tr>
                                                    <td>${color.colorId}</td>
                                                    <td>${color.colorName}</td>
                                                    <td>${color.natation}</td>
                                                    <td>${color.status}</td>
                                                    <td>
                                                        <div class="hidden-sm hidden-xs action-buttons">
                                                            <a class="blue" href="<%=request.getContextPath()%>/backend/viewColor.htm?colorId=${color.colorId}">
                                                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                                            </a>
                                                            <a class="green" href="<%=request.getContextPath()%>/backend/initUpdateColor.htm?colorId=${color.colorId}">
                                                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                                                            </a>
                                                            <a class="red" href="<%=request.getContextPath()%>/backend/deleteColor.htm?colorId=${color.colorId}">
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