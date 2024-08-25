<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.abcres.model.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manage Users</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Add your styles here */
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            font-size: 18px;
            text-align: left;
        }
        th, td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
        .action-buttons a, .action-buttons form input {
            margin-right: 10px;
            padding: 5px 10px;
            text-decoration: none;
            color: #fff;
            border-radius: 5px;
        }
        .edit-btn {
            background-color: #007bff;
        }
        .delete-btn {
            background-color: #dc3545;
        }
        .activate-btn {
            background-color: #28a745;
        }
        .deactivate-btn {
            background-color: #6c757d;
        }
    </style>
</head>
<body>
    <h1>Manage Users</h1>

    <table>
        <thead>
            <tr>
                <th>Username</th>
                <th>Email</th>
                <th>Role</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<User> users = (List<User>) request.getAttribute("users");
                if (users != null && !users.isEmpty()) {
                    for (User user : users) {
            %>
            <tr>
                <td><%= user.getUsername() %></td>
                <td><%= user.getEmail() %></td>
                <td><%= user.getRole() %></td>
                <td><%= user.getStatus() %></td>
                <td class="action-buttons">
                    <a class="edit-btn" href="admin/users?action=edit&username=<%= user.getUsername() %>">Edit</a>
                    <form action="admin/users" method="post" style="display:inline;">
                        <input type="hidden" name="username" value="<%= user.getUsername() %>">
                        <input type="submit" name="action" value="delete" class="delete-btn">
                    </form>
                    <form action="admin/users" method="post" style="display:inline;">
                        <input type="hidden" name="username" value="<%= user.getUsername() %>">
                        <input type="submit" name="action" value="activate" class="activate-btn">
                    </form>
                    <form action="admin/users" method="post" style="display:inline;">
                        <input type="hidden" name="username" value="<%= user.getUsername() %>">
                        <input type="submit" name="action" value="deactivate" class="deactivate-btn">
                    </form>
                </td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="5">No users found.</td>
            </tr>
            <% 
                }
            %>
        </tbody>
    </table>
</body>
</html>
