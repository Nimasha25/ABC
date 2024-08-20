<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>List Reservations</title>
</head>
<body>
    <h1>Reservations</h1>
    <a href="reservation?action=add">Add Reservation</a>
    <table border="1">
        <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Service Type</th>
                <th>Date</th>
                <th>Time</th>
                <th>Guests</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="reservation" items="${reservations}">
                <tr>
                    <td><c:out value="${reservation.name}" /></td>
                    <td><c:out value="${reservation.email}" /></td>
                    <td><c:out value="${reservation.phone}" /></td>
                    <td><c:out value="${reservation.serviceType}" /></td>
                    <td><c:out value="${reservation.date}" /></td>
                    <td><c:out value="${reservation.time}" /></td>
                    <td><c:out value="${reservation.guests}" /></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
