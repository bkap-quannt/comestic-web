<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="pagination-wrap clearfix">
    <c:choose>
        <c:when test="${listProduct.size() > 12}">
            <p class="result-count">Showing: 12 of ${listProduct.size()} results</p>
        </c:when>
        <c:otherwise>
            <p class="result-count">Showing: ${listProduct.size()} of ${listProduct.size()} results</p>
        </c:otherwise>
    </c:choose>
    <div class="paging container"></div>
</div>
