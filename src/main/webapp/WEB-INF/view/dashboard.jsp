<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css"> <!-- Link to your CSS file -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #333;
            color: white;
            padding: 10px 20px;
            text-align: center;
        }
        nav {
            background-color: #f4f4f4;
            padding: 15px;
        }
        nav ul {
            list-style-type: none;
            padding: 0;
        }
        nav ul li {
            display: inline;
            margin-right: 10px;
        }
        nav ul li a {
            text-decoration: none;
            color: #333;
        }
        main {
            padding: 20px;
        }
        .section {
            margin-bottom: 20px;
        }
        .section h2 {
            margin-top: 0;
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome to the Admin Dashboard</h1>
        <a href="${pageContext.request.contextPath}/logout" style="color: white;">Logout</a>
    </header>
    <nav>
        <ul>
            <li><a href="${pageContext.request.contextPath}/admin/reservations">Manage Reservations</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/users">Manage Users</a></li>
            <!-- Add other management links here -->
        </ul>
    </nav>
    <main>
        <div class="section">
            <h2>Overview</h2>
            <p>Welcome to the dashboard! From here you can manage reservations, users, and other aspects of the application.</p>
        </div>
        <div class="section">
            <h2>Recent Reservations</h2>
            <!-- Example section for displaying recent reservations -->
            <p>No recent reservations to display.</p>
        </div>
        <div class="section">
            <h2>System Status</h2>
            <!-- Example section for system status or metrics -->
            <p>All systems are operational.</p>
        </div>
    </main>
</body>
</html>
