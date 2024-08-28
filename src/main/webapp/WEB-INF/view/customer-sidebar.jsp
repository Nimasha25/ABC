<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- customer-sidebar.jsp -->
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        .sidebar {
            position: fixed;
            right: 0;
            top: 0;
            width: 60px; /* Start with a small width */
            height: 100%;
            background-color: #ffffff;
            overflow-x: hidden;
            transition: width 0.3s ease; /* Smooth transition */
            border-left: 2px solid #ccc; /* Optional border for better visibility */
            box-shadow: 0 0 10px rgba(0,0,0,0.1); /* Optional shadow */
        }

        /* Hover effect for expanding the sidebar */
        .sidebar:hover {
            width: 250px; /* Expand to full width on hover */
        }

        /* Style the links and icons */
        .sidebar a {
            display: block;
            color: #333;
            padding: 16px;
            text-decoration: none;
            white-space: nowrap; /* Prevent text from wrapping */
            transition: background-color 0.3s ease, color 0.3s ease; /* Smooth transition */
        }

        /* Hover effect for links */
        .sidebar a:hover {
            background-color: #f1f1f1; /* Light background on hover */
            color: #000; /* Change text color on hover */
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
            border-bottom: 1px solid #ccc; /* Optional border */
            background-color: #f8f9fa; /* Light background color */
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h2>Customer Panel</h2>
        <a href="/customer/orders"><i class="fas fa-shopping-cart"></i> Orders</a>
        <a href="/customer/messages"><i class="fas fa-inbox"></i> Messages</a>
        <a href="/customer/profile"><i class="fas fa-user"></i> My Profile</a>
        <a href="/customer/settings"><i class="fas fa-cogs"></i> Settings</a>
        <a href="/logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </div>
</body>
</html>
    