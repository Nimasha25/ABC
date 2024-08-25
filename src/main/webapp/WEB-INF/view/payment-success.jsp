<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Payment Success</title>
    <style>
        .message {
            padding: 15px;
            margin: 20px;
            border: 1px solid transparent;
            border-radius: 4px;
        }
        .success {
            color: #3c763d;
            background-color: #dff0d8;
            border-color: #d6e9c6;
        }
    </style>
</head>
<body>
    <h2>Payment Status</h2>
    <div class="message success">
        <%= request.getAttribute("successMessage") %>
    </div>
    <a href="index.jsp">Return to Home</a>
</body>
</html>
