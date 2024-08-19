<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
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
            box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.1);
            position: relative;
        }
        .footer-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            max-width: 1200px;
            margin: 0 auto;
        }
        .footer .footer-logo {
            text-align: center;
            margin-bottom: 20px;
        }
        .footer .footer-logo img {
            width: 150px;
            height: auto;
        }
        .footer .quick-links {
            flex: 1;
            text-align: center;
        }
        .footer .quick-links h3 {
            margin-top: 0;
            font-size: 20px;
            color: #fff;
            margin-bottom: 15px;
        }
        .footer .quick-links a {
            display: block;
            color: #f2f2f2;
            text-decoration: none;
            margin-bottom: 10px;
            font-size: 16px;
            transition: color 0.3s ease;
        }
        .footer .quick-links a:hover {
            color: #007bff;
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
        <a href="Menu.jsp">Menu</a>
        <a href="reservation.jsp">Reservation</a>
        <a href="Services.jsp">Services</a>
        <a href="order.jsp" style="float: right;">Order Online</a>
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

                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>

                <input type="submit" value="Register">
            </form>

            <%
                String fullName = request.getParameter("full-name");
                String email = request.getParameter("email");
                String phone = request.getParameter("phone");
                String password = request.getParameter("password");

                if (fullName != null && email != null && phone != null && password != null) {
                    // Replace with your database connection details
                    String url = "jdbc:mysql://localhost:3306/abc_res_db";
                    String user = "root";
                    String pass = "MYSQL@25";
                    Connection conn = null;
                    PreparedStatement pst = null;
                    
                    try {
                        // Load database driver
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        conn = DriverManager.getConnection(url, user, pass);

                        // Insert registration data into database
                        String sql = "INSERT INTO users (full_name, email, phone, password) VALUES (?, ?, ?, ?)";
                        pst = conn.prepareStatement(sql);
                        pst.setString(1, fullName);
                        pst.setString(2, email);
                        pst.setString(3, phone);
                        pst.setString(4, password);
                        int result = pst.executeUpdate();

                        if (result > 0) {
                            // Registration successful, redirect to payment.jsp
                            response.sendRedirect("payment.jsp");
                        } else {
                            // Registration failed, show error message
                            out.println("<div class='message'>Registration Failed. Please try again.</div>");
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        out.println("<div class='message'>An error occurred. Please try again later.</div>");
                    } finally {
                        if (pst != null) try { pst.close(); } catch (SQLException e) { e.printStackTrace(); }
                        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
                    }
                }
            %>
        </div>
    </div>

    <div class="footer">
        <div class="footer-container">
            <div class="footer-logo">
                <img src="logo.png" alt="ABC Restaurant Logo">
            </div>
            <div class="quick-links">
                <h3>Quick Links</h3>
                <a href="index.jsp">Home</a>
                <a href="About.jsp">About</a>
                <a href="Gallery.jsp">Gallery</a>
                <a href="Contact.jsp">Contact</a>
                <a href="Menu.jsp">Menu</a>
                <a href="reservation.jsp">Reservation</a>
                <a href="Services.jsp">Services</a>
                <a href="order.jsp">Order Online</a>
            </div>
        </div>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </div>
    <script>
        function handleFormSubmission(event) {
            event.preventDefault(); // Prevent the default form submission
            
            var form = document.getElementById("registration-form");
            var formData = new FormData(form);

            // Create an XMLHttpRequest object
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "register.jsp", true);
            xhr.onload = function() {
                if (xhr.status === 200) {
                    // Check the response to determine success
                    if (xhr.responseText.includes("Registration Successful")) {
                        window.location.href = "payment.jsp";
                    } else {
                        alert("Registration failed: " + xhr.responseText);
                    }
                } else {
                    alert("Error: " + xhr.status + " " + xhr.statusText);
                }
            };
            xhr.onerror = function() {
                alert("Request failed. Please check your network connection.");
            };
            xhr.send(formData);
        }
    </script>
</body>
</html>
