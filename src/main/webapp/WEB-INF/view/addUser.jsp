<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add User</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/styles/style.css' />">
</head>
<body>
    <h1>Add New User</h1>
    <form action="user" method="post">
        <input type="hidden" name="action" value="add" />
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required /><br/><br/>
        <label for="full-name">Full Name:</label>
        <input type="text" id="full-name" name="full-name" required /><br/><br/>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required /><br/><br/>
        <label for="phone">Phone:</label>
        <input type="tel" id="phone" name="phone" required /><br/><br/>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required /><br/><br/>
        <label for="role">Role:</label>
        <select id="role" name="role" required>
            <option value="admin">Admin</option>
            <option value="staff">Staff</option>
            <option value="customer">Customer</option>
        </select><br/><br/>
        <input type="submit" value="Add User" />
    </form>
    <a href="user?action=list">Back to User List</a>
</body>
</html>
