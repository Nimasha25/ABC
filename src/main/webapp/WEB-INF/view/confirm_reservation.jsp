<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Confirm Reservation</h2>
<p>Are you sure you want to confirm this reservation?</p>
<form action="${pageContext.request.contextPath}/admin/reservations" method="post">
    <input type="hidden" name="id" value="${reservation.id}">
    <input type="hidden" name="action" value="confirm">
    <button type="submit">Yes, Confirm</button>
    <a href="${pageContext.request.contextPath}/admin/reservations">Cancel</a>
</form>

</body>
</html>