<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin - Reservations</title>
</head>
<body>
<h2>Reservations</h2>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Service Type</th>
        <th>Date</th>
        <th>Time</th>
        <th>Guests</th>
        <th>Status</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="reservation" items="${reservations}">
        <tr>
            <td>${reservation.id}</td>
            <td>${reservation.name}</td>
            <td>${reservation.email}</td>
            <td>${reservation.phone}</td>
            <td>${reservation.serviceType}</td>
            <td>${reservation.date}</td>
            <td>${reservation.time}</td>
            <td>${reservation.guests}</td>
            <td>${reservation.status}</td>
            <td>
                <a href="reservations?action=edit&id=${reservation.id}">Edit</a> |
                <form action="reservations" method="post" style="display:inline;">
                    <input type="hidden" name="action" value="delete"/>
                    <input type="hidden" name="id" value="${reservation.id}"/>
                    <input type="submit" value="Delete"/>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
