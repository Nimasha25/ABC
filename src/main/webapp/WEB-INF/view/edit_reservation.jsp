<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Reservation</title>
</head>
<body>
<h2>Edit Reservation</h2>
<form action="reservations" method="post">
    <input type="hidden" name="action" value="update"/>
    <input type="hidden" name="id" value="${reservation.id}"/>
    <p>
        <label>Name:</label>
        <input type="text" name="name" value="${reservation.name}" required/>
    </p>
    <p>
        <label>Email:</label>
        <input type="email" name="email" value="${reservation.email}" required/>
    </p>
    <p>
        <label>Phone:</label>
        <input type="text" name="phone" value="${reservation.phone}" required/>
    </p>
    <p>
        <label>Service Type:</label>
        <input type="text" name="serviceType" value="${reservation.serviceType}" required/>
    </p>
    <p>
        <label>Date:</label>
        <input type="date" name="date" value="${reservation.date}" required/>
    </p>
    <p>
        <label>Time:</label>
        <input type="time" name="time" value="${reservation.time}" required/>
    </p>
    <p>
        <label>Guests:</label>
        <input type="number" name="guests" value="${reservation.guests}" required/>
    </p>
    <p>
        <label>Status:</label>
        <select name="status">
            <option value="pending" <c:if test="${reservation.status == 'pending'}">selected</c:if>>Pending</option>
            <option value="confirmed" <c:if test="${reservation.status == 'confirmed'}">selected</c:if>>Confirmed</option>
            <option value="cancelled" <c:if test="${reservation.status == 'cancelled'}">selected</c:if>>Cancelled</option>
        </select>
    </p>
    <p>
        <input type="submit" value="Save"/>
    </p>
</form>
</body>
</html>
