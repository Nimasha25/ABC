<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin-Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            background-image: url('images/back3.png');
        }
       /* Default sidebar styling */
.sidebar {
    position: fixed;
    left: 0;
    top: 0;
    width: 60px; /* Start with a small width */
    height: 100%;
    background-color: #343a40;
    overflow-x: hidden;
    transition: width 0.3s ease; /* Smooth transition */
}

/* Hover effect for expanding the sidebar */
.sidebar:hover {
    width: 200px; /* Expand to full width on hover */
}

/* Style the links and icons */
.sidebar a {
    display: block;
    color: white;
    padding: 16px;
    text-decoration: none;
    white-space: nowrap; /* Prevent text from wrapping */
    opacity: 0; /* Initially hide the text */
    transition: opacity 0.3s ease; /* Smooth transition for text appearance */
}

/* Show the text on hover */
.sidebar:hover a {
    opacity: 1; /* Show the text on hover */
}

/* Icon styling */
.sidebar a i {
    margin-right: 10px;
}

/* Adjust heading for better visibility */
.sidebar h2 {
    font-size: 1.2rem;
    padding: 20px 16px;
    margin: 0;
    text-align: center;
    transition: opacity 0.3s ease;
    opacity: 0; /* Initially hide the heading text */
}

.sidebar:hover h2 {
    opacity: 1; /* Show the heading text on hover */
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
        .footer {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 40px 20px;
    position: relative; /* Relative positioning for absolute positioning of child elements */
    overflow: hidden; /* Ensure content doesn't overflow */
}

.footer-images {
    display: flex;
    position: relative; /* Relative positioning for containing absolutely positioned content */
    z-index: 1; /* Ensures images are behind content */
    margin-bottom: 40px; /* Space between images and content */
}

.footer-image {
    position: relative;
    width: 100%;
    flex: 1;
}

.footer-image img {
    width: 100%;
    height: 400px; /* Adjust height as needed */
    object-fit: cover;
    display: block;
}

.footer-content {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 90%; /* Adjust width as needed */
    display: flex;
    justify-content: space-between;
    gap: 20px;
    z-index: 2; /* Ensure content is above images */
}

.footer-logo,
.opening-hours,
.sign-up {
    background: rgba(0, 0, 0, 0.7); /* Semi-transparent background for readability */
    padding: 20px;
    border-radius: 8px;
    color: #fff;
    flex: 1;
    text-align: center;
}

.footer-logo img {
    width: 150px;
    height: auto;
}

.footer .opening-hours h3,
.footer .sign-up h3 {
    margin-top: 0;
    font-size: 20px;
    margin-bottom: 15px;
}

.footer .opening-hours p,
.footer .sign-up input[type="email"],
.footer .sign-up button {
    font-size: 16px;
}

.footer .sign-up input[type="email"] {
    padding: 10px;
    border: none;
    border-radius: 5px;
    margin-right: 10px;
    width: 250px;
}

.footer .sign-up button {
    background-color: #28a745;
    border: none;
    color: white;
    padding: 10px 20px;
    font-size: 16px;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.footer .sign-up button:hover {
    background-color: #218838;
}

.footer p {
    margin: 0;
    font-size: 14px;
    color: #ccc;
}
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <h2 class="text-center text-light">Admin-Panel</h2>
        <a href="/admin/dashboard"><i class="fas fa-tachometer-alt"></i> Dash-board</a>
        <a href="/admin/reservations"><i class="fas fa-calendar-check"></i> Reservations</a>
        <a href="/admin/users"><i class="fas fa-users"></i> Users</a>
        <a href="/admin/settings"><i class="fas fa-cogs"></i> Settings</a>
<a href="<%= request.getContextPath() %>/logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <nav class="navbar">
            <h1>Admin-Dashboard</h1>
        </nav>

        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <img src="images/reservation.png" alt="Reservations">
                        <div class="card-body">
                            <h5 class="card-title">Manage Reservations</h5>
                            <p class="card-text">View and manage all reservations made on the website.</p>
                            <a href="admin/reservations" class="btn btn-primary">View Reservations</a>


                        </div>
                    </div>
                </div>
                <div class="col-md-4">
    <div class="card">
        <img src="images/payments.png" alt="Payments" class="card-img-top">
        <div class="card-body">
            <h5 class="card-title">Manage Payments</h5>
            <p class="card-text">View and manage all payment transactions.</p>
            <a href="<%= request.getContextPath() %>/admin/payments" class="btn btn-primary">View Payments</a>
        </div>
    </div>
</div>
                
                
                <div class="col-md-4">
                    <div class="card">
                        <img src="images/users.png" alt="Users">
                        <div class="card-body">
                            <h5 class="card-title">Manage Users</h5>
                            <p class="card-text">Manage user accounts and their roles.</p>
                            <a href="<%= request.getContextPath() %>/admin/users" class="btn btn-primary">View Users</a>
                        </div>
                    </div>
                </div>
             <div class="col-md-4">
    <div class="card">
        <img src="images/orders.png" alt="Orders" class="card-img-top">
        <div class="card-body">
            <h5 class="card-title">Manage Orders</h5>
            <p class="card-text">View and manage customer orders, update their statuses, and mark them as delivered.</p>
            <a href="<%= request.getContextPath() %>/admin/cart?action=view" class="btn btn-primary">View Orders</a>
        </div>
    </div>
</div>
                <div class="col-md-4">
    <div class="card">
        <img src="images/contact.png" alt="Contacts" class="card-img-top">
        <div class="card-body">
            <h5 class="card-title">Manage Contact Messages</h5>
            <p class="card-text">Manage and view contact messages received through the website.</p>
            <a href="<%= request.getContextPath() %>/admin/contact-admin?action=list" class="btn btn-primary">View Contacts</a>
        </div>
    </div>
</div>


                
                <div class="col-md-4">
                    <div class="card">
                        <img src="images/setting.png" alt="Settings">
                        <div class="card-body">
                            <h5 class="card-title">Settings</h5>
                            <p class="card-text">Configure system settings and preferences.</p>
<a href="/abcres/admin/settings" class="btn btn-primary">Go to Settings</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 <div class="footer">
    <div class="footer-images">
        <div class="footer-image" id="image1">
            <img src='<c:url value="/images/back1.png"/>' alt="Background Image 1">
        </div>
        <div class="footer-image" id="image2">
            <img src="images/backmid2.png" alt="Background Image 2">
        </div>
        <div class="footer-image" id="image3">
            <img src="images/back3.png" alt="Background Image 3">
        </div>
    </div>
    <div class="footer-content">
        <div class="footer-logo">
            <img src='<c:url value="/images/Yellow%20Emblem%20Restaurant%20Logo.jpg"/>' alt="ABC Restaurant Logo">
        </div>
        <div class="opening-hours">
            <h3>Opening Hours</h3>
            <p>Monday - Friday: 10:00 AM - 10:00 PM</p>
            <p>Saturday - Sunday: 9:00 AM - 11:00 PM</p>
        </div>
        <div class="sign-up">
            <h3>Sign Up for Special Offers</h3>
            <input type="email" placeholder="Enter your email">
            <button onclick="window.location.href='register.jsp';">Sign Up</button>
        </div>
    </div>
    <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
</div>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
