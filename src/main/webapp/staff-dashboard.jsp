<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Staff-Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    background-image: url('images/back3.png');
    background-size: cover;
    background-attachment: fixed;
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
    z-index: 999;
}

.navbar h1 {
    margin: 0;
}

.container {
    margin-top: 20px;
}

.card {
    margin-bottom: 20px;
    border: none;
    border-radius: 8px;
}

.card img {
    max-width: 100%;
    height: auto;
    border-radius: 8px 8px 0 0;
}

.card-body {
    padding: 20px;
    background-color: #ffffff;
    border-radius: 0 0 8px 8px;
}

.card-title {
    font-size: 1.25rem;
    margin-bottom: 10px;
}

.card-text {
    font-size: 1rem;
    margin-bottom: 15px;
}

.btn-primary {
    background-color: #007bff;
    border-color: #007bff;
    color: #ffffff;
    font-size: 1rem;
    padding: 10px 20px;
    border-radius: 5px;
}

.btn-primary:hover {
    background-color: #0056b3;
    border-color: #004085;
}

.footer {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 40px 20px;
    position: relative;
    overflow: hidden;
    margin-top: 20px;
}

.footer-images {
    display: flex;
    justify-content: center;
    margin-bottom: 40px;
}

.footer-image {
    flex: 1;
    margin: 0 10px;
}

.footer-image img {
    width: 100%;
    height: 300px;
    object-fit: cover;
    border-radius: 8px;
}

.footer-content {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    gap: 20px;
    position: relative;
    z-index: 2;
}

.footer-logo,
.opening-hours,
.sign-up {
    background: rgba(0, 0, 0, 0.7);
    padding: 20px;
    border-radius: 8px;
    color: #fff;
    flex: 1;
    min-width: 220px;
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
    width: 200px;
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

/* Responsive Design */
@media (max-width: 768px) {
    .sidebar {
        width: 100%;
        height: auto;
        position: relative;
    }

    .main-content {
        margin-left: 0;
    }

    .navbar {
        margin-left: 0;
    }
}

@media (max-width: 576px) {
    .footer-images {
        flex-direction: column;
    }

    .footer-image {
        margin-bottom: 20px;
    }

    .footer-content {
        flex-direction: column;
        gap: 10px;
    }
}

    </style>
</head>
<body>
   
<div class="sidebar">
    <h2 class="text-center text-light">Staff Dashboard</h2>
    <a href="<%= request.getContextPath() %>/staff/dashboard"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
    <a href="<%= request.getContextPath() %>/staff/orders"><i class="fas fa-box"></i> View Orders</a>
    <a href="<%= request.getContextPath() %>/staff/inventory"><i class="fas fa-boxes"></i> Manage Inventory</a>
    <a href="<%= request.getContextPath() %>/staff/inquiries"><i class="fas fa-comments"></i> Customer Inquiries</a>
    <a href="<%= request.getContextPath() %>/staff/search"><i class="fas fa-search"></i> Search Services</a>
    <a href="<%= request.getContextPath() %>/staff/payments"><i class="fas fa-credit-card"></i> Manage Payments</a>
    <a href="<%= request.getContextPath() %>/staff/settings"><i class="fas fa-cogs"></i> Settings</a>
    <a href="<%= request.getContextPath() %>/logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
</div>


    
    <div class="main-content">
        <nav class="navbar">
            <h1>Welcome, <%= session.getAttribute("userName") != null ? session.getAttribute("userName") : "Staff" %>!</h1>
        </nav>
    <div class="container">
            <div class="row">
                <!-- Orders Card -->
                <div class="col-md-4 mb-4">
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
                        <img src="images/reservation.png" alt="Reservations">
                        <div class="card-body">
                            <h5 class="card-title">Manage Reservations</h5>
                            <p class="card-text">View and manage all reservations made on the website.</p>
                            <a href="admin/reservations" class="btn btn-primary">View Reservations</a>


                        </div>
                    </div>
                </div>
                <!-- Inventory Card -->
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <img src="images/inventory.png" alt="Inventory" class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">Manage Inventory</h5>
                            <p class="card-text">Track and manage inventory levels to ensure availability of menu items.</p>
                            <a href="<%= request.getContextPath() %>/admin/inventory" class="btn btn-primary">Manage Inventory</a>
                        </div>
                    </div>
                </div>

                <!-- Customer Inquiries Card -->
                

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
