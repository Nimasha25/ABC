<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Edit Reservation</h2>
<form action="${pageContext.request.contextPath}/admin/reservations" method="post">
    <input type="hidden" name="action" value="update">
    <input type="hidden" name="id" value="${reservation.id}">
    <!-- Form fields to edit reservation details -->
    <label>Name:</label>
    <input type="text" name="name" value="${reservation.name}" required>
    <label>Email:</label>
    <input type="email" name="email" value="${reservation.email}" required>
    <label>Phone:</label>
    <input type="text" name="phone" value="${reservation.phone}" required>
    <label>Service Type:</label>
    <input type="text" name="serviceType" value="${reservation.serviceType}" required>
    <label>Date:</label>
    <input type="date" name="date" value="${reservation.reservationDate.toLocalDate()}" required>
    <label>Time:</label>
    <input type="time" name="time" value="${reservation.reservationTime.toLocalTime()}" required>
    <label>Guests:</label>
    <input type="number" name="guests" value="${reservation.guests}" required>
    <label>Status:</label>
    <input type="text" name="status" value="${reservation.status}" required>
    <button type="submit">Update Reservation</button>
</form>

</body>
</html>