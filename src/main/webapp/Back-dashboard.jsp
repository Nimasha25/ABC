<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .sidebar {
            height: 100%;
            width: 250px;
            background-color: #343a40;
            position: fixed;
            top: 0;
            left: 0;
            padding-top: 20px;
        }
        .sidebar a {
            padding: 15px 20px;
            text-decoration: none;
            font-size: 18px;
            color: #f8f9fa;
            display: block;
        }
        .sidebar a:hover {
            background-color: #495057;
            color: #ffffff;
        }
        .main-content {
            margin-left: 250px;
            padding: 20px;
        }
        .navbar {
            background-color: #007bff;
            color: #ffffff;
            padding: 15px;
            margin-left: 250px;
        }
        .navbar h1 {
            margin: 0;
        }
        .container {
            margin-top: 20px;
        }
        .card {
            margin-bottom: 20px;
        }
        .card img {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <h2 class="text-center text-light">Admin Panel</h2>
        <a href="/admin/dashboard"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
        <a href="/admin/reservations"><i class="fas fa-calendar-check"></i> Reservations</a>
        <a href="/admin/users"><i class="fas fa-users"></i> Users</a>
        <a href="/admin/settings"><i class="fas fa-cogs"></i> Settings</a>
        <a href="/logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <nav class="navbar">
            <h1>Admin Dashboard</h1>
        </nav>

        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <img src="images/reservation.jpg" alt="Reservations">
                        <div class="card-body">
                            <h5 class="card-title">Manage Reservations</h5>
                            <p class="card-text">View and manage all reservations made on the website.</p>
                            <a href="/admin/reservations" class="btn btn-primary">View Reservations</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img src="images/users.jpg" alt="Users">
                        <div class="card-body">
                            <h5 class="card-title">Manage Users</h5>
                            <p class="card-text">Manage user accounts and their roles.</p>
                            <a href="/admin/users" class="btn btn-primary">View Users</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img src="images/settings.jpg" alt="Settings">
                        <div class="card-body">
                            <h5 class="card-title">Settings</h5>
                            <p class="card-text">Configure system settings and preferences.</p>
                            <a href="/admin/settings" class="btn btn-primary">Go to Settings</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
