<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Success</title>
</head>
<body>
    <div class="message">
        <h1>Success</h1>
        <p><c:out value="${message}"/></p>
        <a href="${pageContext.request.contextPath}/admin/cart?action=view">Back to Cart</a>
    </div>
</body>
</html>
