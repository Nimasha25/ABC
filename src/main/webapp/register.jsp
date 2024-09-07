<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.sql.*, java.net.URLEncoder" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: 'Helvetica Neue', Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
            background-color: #f8f9fa;
             background-image: url('images/back1.png');
            background-size: cover; /* Makes sure the image covers the entire body */
    background-repeat: no-repeat; /* Prevents the image from repeating */
    background-position: center; /* Centers the image on the page */
    background-attachment: fixed;
        }
        .header {
    text-align: center;
    padding: 20px;
}

.header .logo {
    max-width: 150px; /* Adjust this value to make the logo smaller */
    height: auto; /* Maintain aspect ratio */
}

.header h1 {
    font-size: 24px; /* Adjust this value to make the text smaller */
    margin-top: 10px;
    color: #FFFFFF; /* Royal Blue, if desired */
}

        
        .navbar {
            background-color: #007bff;
            overflow: hidden;
            padding: 10px 0;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .navbar a {
            float: left;
            display: block;
            color: #fff;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }
        .navbar a:hover {
            background-color: #0056b3;
            color: #fff;
        }
        .container {
            padding: 20px;
        }
        h1 {
            text-align: center;
            margin-top: 40px;
           color: #FFFFFF;
        }
        .registration-form {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .registration-form label {
            display: block;
            margin: 10px 0 5px;
            font-size: 16px;
        }
        .registration-form input[type="text"], .registration-form input[type="email"], .registration-form input[type="tel"], .registration-form input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            box-sizing: border-box;
            margin-bottom: 15px;
        }
        .registration-form select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            box-sizing: border-box;
            margin-bottom: 15px;
        }
        .registration-form input[type="submit"], .registration-form button {
            background-color: #007bff;
            border: none;
            color: white;
            padding: 15px;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .registration-form input[type="submit"]:hover, .registration-form button:hover {
            background-color: #0056b3;
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
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="About.jsp">About</a>
        <a href="Gallery.jsp">Gallery</a>
        <a href="Contact.jsp">Contact</a>
       <a href="menu.jsp">Menu</a>
        <a href="reservation.jsp">Reservation</a>
        <a href="Services.jsp">Services</a>
        <a href="order.jsp" style="float: right;">Order Online</a>
    </div>
    
    <div class="header">
        <img src='<c:url value="/images/Yellow%20Emblem%20Restaurant%20Logo.jpg"/>' alt="ABC Restaurant Logo" class="logo">
         
        <h1>Welcome to ABC Restaurant to Register for More</h1>
    </div>

    <div class="container">
        <h1>Registration</h1>
        <div class="registration-form">
            <form action="register.jsp" method="post">
                <label for="full-name">Full Name:</label>
                <input type="text" id="full-name" name="full-name" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="phone" required>

                <label for="username">User-name:</label>
                <input type="text" id="username" name="username" required>

                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>

                <label for="role">Select Role:</label>
                <select id="role" name="role" required>
                    <option value="admin">Admin</option>
                    <option value="staff">Staff</option>
                    <option value="customer">Customer</option>
                </select>
                 
                <input type="submit" value="Register">
               
            </form>

              <%
        String username = request.getParameter("username");
        String fullName = request.getParameter("full-name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password"); // Storing plain-text password
        String role = request.getParameter("role");

        if (username != null && fullName != null && email != null && phone != null && password != null && role != null) {
            String url = "jdbc:mysql://localhost:3306/abc_res_db";
            String user = "root";
            String pass = "MySQL@25";
            Connection conn = null;
            PreparedStatement pst = null;

            try {
                // Load MySQL JDBC Driver
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(url, user, pass);

                // SQL to insert user data into the database
                String sql = "INSERT INTO users (username, full_name, email, phone, password, role) VALUES (?, ?, ?, ?, ?, ?)";
                pst = conn.prepareStatement(sql);
                pst.setString(1, username);
                pst.setString(2, fullName);
                pst.setString(3, email);
                pst.setString(4, phone);
                pst.setString(5, password); // Storing plain-text password
                pst.setString(6, role);

                int result = pst.executeUpdate();
                if (result > 0) {
                    // Registration successful, redirect based on role
                    if ("customer".equalsIgnoreCase(role)) {
                        response.sendRedirect("payment.jsp"); // Redirect customer to payment page
                    } else {
                        response.sendRedirect("login.jsp"); // Redirect staff/admin to login page
                    }
                } else {
                    out.println("Registration failed.<br>");
                }
            } catch (Exception e) {
                e.printStackTrace();
                out.println("Error: " + e.getMessage() + "<br>");
            } finally {
                if (pst != null) try { pst.close(); } catch (SQLException e) { e.printStackTrace(); }
                if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
        }
    %>
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
</body>
</html>
