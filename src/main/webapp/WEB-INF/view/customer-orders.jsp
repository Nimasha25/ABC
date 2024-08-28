<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>My Orders</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/style.css' />">
</head>
<body>
   <jsp:include page="/WEB-INF/view/customer-sidebar.jsp" />

    <div class="content">
        <h1>My Orders</h1>
        <!-- Display orders here -->
        <table>
            <thead>
                <tr>
                    <th>Order ID</th>
                    <th>Date</th>
                    <th>Total</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <!-- Example row; dynamically generate rows with server-side data -->
                <tr>
                    <td>12345</td>
                    <td>2024-08-28</td>
                    <td>$99.99</td>
                    <td>Shipped</td>
                </tr>
                <!-- More rows as needed -->
            </tbody>
        </table>
    </div>
</body>
</html>
