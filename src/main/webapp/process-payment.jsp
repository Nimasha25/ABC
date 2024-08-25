<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Payment Status</title>
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
        .error {
            color: #a94442;
            background-color: #f2dede;
            border-color: #ebccd1;
        }
    </style>
</head>
<body>
    <h2>Payment Status</h2>
    <div>
        <% String successMessage = (String) request.getAttribute("successMessage"); %>
        <% if (successMessage != null) { %>
            <div class="message success"><%= successMessage %></div>
        <% } %>

        <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
        <% if (errorMessage != null) { %>
            <div class="message error"><%= errorMessage %></div>
        <% } %>
    </div>
    <a href="index.jsp">Return to Home</a>
</body>
</html>
