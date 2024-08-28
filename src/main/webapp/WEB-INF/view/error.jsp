<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .container {
            margin-top: 50px;
            max-width: 600px;
        }
        .alert {
            padding: 20px;
            background-color: #f44336;
            color: white;
        }
        .btn {
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="container">
        <h1 class="text-center">Oops! Something went wrong.</h1>
        <p class="text-center">The page you are looking for could not be found.</p>
        <p class="text-center"><a href="${pageContext.request.contextPath}/index.jsp" class="btn btn-primary">Go to Home</a></p>
    </div>

 <div class="error-container">
        <h1>Error Occurred</h1>
        <p>Sorry, an error occurred while processing your request. Please try again later.</p>
        <p><a href="<%= request.getContextPath() %>/admin/dashboard.jsp">Return to Dashboard</a></p>
    </div>

<p>Sorry, there was a problem processing your request. Please try again later.</p>
    <a href="<%= request.getContextPath() %>/admin/cart?action=view">Go Back to Orders</a>
<h1>Error</h1>
    <p>${errorMessage}</p>
    <a href="contact?action=list">Back to List</a>
<div class="container">
        <div class="alert alert-danger text-center">
            <h1>Error</h1>
            <p>An error has occurred. Please try again later or contact support if the problem persists.</p>
            <a href="<%= request.getContextPath() %>" class="btn btn-primary">Go to Homepage</a>
        </div>
    </div>
<h1>Something went wrong</h1>
<p>We encountered an error. Please try again later.</p>
<a href="admin/reservations">Back to Reservations</a>
<p class="text-danger">
            An error has occurred. Please try again later or contact support if the problem persists.
        </p>
        <a href="<%= request.getContextPath() %>" class="btn btn-primary">Go to Homepage</a>
<h1>Error</h1>
    <p style="color: red;">${errorMessage}</p>
    <a href="user?action=list">Back to User List</a>
    <div class="container">
        <div class="alert alert-danger text-center">
            <h1>Error</h1>
            <p>
                <c:choose>
                    <c:when test="${not empty errorMessage}">
                        ${errorMessage}
                    </c:when>
                    <c:otherwise>
                        An unexpected error occurred. Please try again later.
                    </c:otherwise>
                </c:choose>
            </p>
            <a href="index.jsp" class="btn btn-primary">Back to Home</a>
        </div>
        
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
