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
                            <li class="active">Management Category</li>
                        </ol>
                    </section>
                    <!-- Main content -->
                    <section class="content">
                        <!-- Info boxes -->
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="table-header">
                                    <a href="<%=request.getContextPath()%>/backend/initInsertCategory.htm" class="">New Category</a>
                                </div>
                                <div class="table-responsive">    
                                    <table id="category" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>Category ID</th>
                                                <th>Category Name</th>
                                                <th>Description</th>
                                                <th>Parent ID</th>
                                                <th>Priority</th>
                                                <th>Created</th>
                                                <th>Modified</th>
                                                <th>Deleted</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${listCategory}" var="category">
                                                <tr>
                                                    <td>${category.categoryId}</td>
                                                    <td>${category.categoryName}</td>
                                                    <td class="hidden-480">${category.description}</td>
                                                    <td>${category.parentId}</td>
                                                    <td>${category.priority}</td>
                                                    <td>${category.created}</td>
                                                    <td>${category.modified}</td>
                                                    <td>${category.deleted}</td>
                                                    <td>
                                                        <div class="hidden-sm hidden-xs action-buttons">
                                                            <a class="blue" href="<%=request.getContextPath()%>/backend/viewCategory.htm?categoryId=${category.categoryId}">
                                                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                                            </a>
                                                            <a class="green" href="<%=request.getContextPath()%>/backend/initUpdateCategory.htm?categoryId=${category.categoryId}">
                                                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                                                            </a>
                                                            <a class="red" href="<%=request.getContextPath()%>/backend/deleteCategory.htm?categoryId=${category.categoryId}">
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
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered" cellspacing="0">
                            <tr>
                                <c:if test="${minPageSection > 0}">
                                    <c:if test="${currentSection > 1}">
                                        <td>
                                            <a href="<%=request.getContextPath()%>/backend/getAllCategory.htm?page=${minPageSection - 3}">
                                                <c:out value=" << "></c:out>
                                            </a>
                                        </td>
                                    </c:if>
                                    <c:forEach var="page" items="${getListPage}">
                                        <c:choose>
                                            <c:when test="${currentPage == page}">
                                                <td>${page}</td>
                                            </c:when>
                                            <c:otherwise>
                                                <td>
                                                    <a href="<%=request.getContextPath()%>/backend/getAllCategory.htm?page=${page}">${page}</a>
                                                </td>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                    <c:if test="${currentSection < totalSection}">
                                        <td>
                                            <a href="<%=request.getContextPath()%>/backend/getAllCategory.htm?page=${maxPageSection + 1}">
                                                <c:out value=" >> "></c:out>
                                            </a>
                                        </td>
                                    </c:if>
                                </c:if>
                            </tr>
                        </table>
                    </div>
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
