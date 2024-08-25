<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manage Payments</title>
</head>
<body>
    <h1>Manage Payments</h1>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Order ID</th>
                <th>Payment Method</th>
                <th>Card Number</th>
                <th>Card Expiry</th>
                <th>Phone Number</th>
                <th>Amount</th>
                <th>Email</th>
                <th>Payment Date</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="payment" items="${payments}">
                <tr>
                    <td>${payment.id}</td>
                    <td>${payment.orderId}</td>
                    <td>${payment.paymentMethod}</td>
                    <td>${payment.cardNumber}</td>
                    <td>${payment.cardExpiry}</td>
                    <td>${payment.phoneNumber}</td>
                    <td>${payment.amount}</td>
                    <td>${payment.email}</td>
                    <td>${payment.paymentDate}</td>
                    <td>${payment.status}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
