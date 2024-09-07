<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Confirm Deletion</h2>
<p>Are you sure you want to delete this reservation?</p>
<form action="${pageContext.request.contextPath}/admin/reservations" method="post">
    <input type="hidden" name="id" value="${reservationId}">
    <input type="hidden" name="action" value="delete">
    <button type="submit">Yes, Delete</button>
    <a href="${pageContext.request.contextPath}/admin/reservations">Cancel</a>
</form>

</body>
</html>