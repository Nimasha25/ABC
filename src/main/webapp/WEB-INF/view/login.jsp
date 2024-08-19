<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/styles/style.css' />">
</head>
<body>
    <h1>Login</h1>
    <form action="user" method="post">
        <input type="hidden" name="action" value="login" />
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required /><br/><br/>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required /><br/><br/>
        <input type="submit" value="Login" />
    </form>
    <c:if test="${not empty errorMessage}">
        <p style="color: red;">${errorMessage}</p>
    </c:if>
</body>
</html>
