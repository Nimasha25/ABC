<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.abcres.model.Payment" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 30px;
        }
        h1 {
            font-size: 2.5rem;
            color: #343a40;
        }
        .alert {
            margin-bottom: 20px;
        }
        table {
            background-color: #ffffff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        th, td {
            text-align: center;
            vertical-align: middle;
        }
        th {
            background-color: #007bff;
            color: #ffffff;
            font-weight: bold;
        }
        td {
            padding: 12px;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #e9ecef;
        }
        .no-data {
            text-align: center;
            font-size: 1.2rem;
            color: #6c757d;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="my-4">Payment Dashboard</h1>

        <% 
            List<Payment> payments = (List<Payment>) request.getAttribute("payments");
            String errorMessage = (String) request.getAttribute("errorMessage");
        %>

        <% if (errorMessage != null) { %>
            <div class="alert alert-danger" role="alert">
                <%= errorMessage %>
            </div>
        <% } %>

        <% if (payments != null && !payments.isEmpty()) { %>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Amount</th>
                    <th>Payment Method</th>
                    <th>Card Number</th>
                    <th>Card Expiry</th>
                    <th>Phone Number</th>
                    <th>Email</th>
                    <th>Payment Date</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <% for (Payment payment : payments) { %>
                <tr>
                    <td><%= payment.getId() %></td>
                    <td><%= payment.getAmount() %></td>
                    <td><%= payment.getPaymentMethod() %></td>
                    <td><%= payment.getCardNumber() %></td>
                    <td><%= payment.getCardExpiry() %></td>
                    <td><%= payment.getPhoneNumber() %></td>
                    <td><%= payment.getEmail() %></td>
                    <td><%= payment.getPaymentDate() %></td>
                    <td><%= payment.getStatus() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
        <% } else { %>
        <p>No payment data available.</p>
        <% } %>
    </div>
</body>
</html>
