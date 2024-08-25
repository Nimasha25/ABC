<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Cart Dashboard</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/admin.css">
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f4f4f4;
        }
    </style>
</head>
<body>
    <h1>Admin Cart Dashboard</h1>
    <table>
        <thead>
            <tr>
                <th>Item ID</th>
                <th>Item Name</th>
                <th>Quantity</th>
                <th>Price (per item)</th>
                <th>Total</th>
                <th>Status</th>
                <th>Created At</th>
                <th>Delivered At</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="item" items="${cartItems}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.itemName}</td>
                    <td>${item.quantity}</td>
                    <td>LKR ${item.price}</td>
                    <td>LKR ${item.total}</td>
                    <td>${item.status}</td>
                    <td>${item.createdAt}</td>
                    <td>${item.deliveredAt}</td>
                    <td>
                        <form action="${pageContext.request.contextPath}/admin/cart" method="post">
                            <input type="hidden" name="id" value="${item.id}">
                            <input type="hidden" name="action" value="markDelivered">
                            <button type="submit">Mark as Delivered</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
