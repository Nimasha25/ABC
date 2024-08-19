<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.sql.*, java.io.IOException, javax.servlet.*,java.net.URLEncoder" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
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
        .login-form {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .login-form label {
            display: block;
            margin: 10px 0 5px;
            font-size: 16px;
        }
        .login-form input[type="text"], .login-form input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            box-sizing: border-box;
            margin-bottom: 15px;
        }
        .login-form input[type="submit"] {
            background-color: #007bff;
            border: none;
            color: white;
            padding: 15px;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .login-form input[type="submit"]:hover {
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
    justify-content: space-between;
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
    text-align: left;
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

.footer .opening-hours {
    flex: 1;
    text-align: left;
}

.footer .opening-hours h3 {
    margin-top: 0;
    font-size: 20px;
    color: #fff;
    margin-bottom: 15px;
}

.footer .opening-hours p {
    font-size: 16px;
    color: #ccc;
}

.footer .sign-up {
    flex: 1;
    text-align: center;
}

.footer .sign-up h3 {
    margin-top: 0;
    font-size: 20px;
    color: #fff;
    margin-bottom: 15px;
}

.footer .sign-up input[type="email"] {
    padding: 10px;
    border: none;
    border-radius: 5px;
    margin-right: 10px;
    font-size: 16px;
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

.footer .background-images {
    display: flex;
    justify-content: center;
    gap: 20px;
    margin: 20px 0;
}

.footer .background-images img {
    width: 200px;
    height: 100px;
    object-fit: cover;
    border-radius: 8px;
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

    <div class="container">
        <h1>Login</h1>
        <div class="login-form">
            <form action="login.jsp" method="post">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>

                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>

                <input type="submit" value="Login">
            </form>

            <%
                String username = request.getParameter("username");
                String password = request.getParameter("password");

                if (username != null && password != null) {
                    // Replace with your database connection details
                    String url = "jdbc:mysql://localhost:3306/abc_res_db";
                    String user = "root";
                    String pass = "MySQL@25";
                    Connection conn = null;
                    PreparedStatement pst = null;
                    ResultSet rs = null;

                    try {
                        // Load database driver
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        conn = DriverManager.getConnection(url, user, pass);

                        // Validate user credentials
                        String sql = "SELECT role FROM users WHERE username = ? AND password = ?";
                        pst = conn.prepareStatement(sql);
                        pst.setString(1, username);
                        pst.setString(2, password); // Ideally, passwords should be hashed
                        rs = pst.executeQuery();

                        if (rs.next()) {
                            String role = rs.getString("role");
                            // Redirect based on role
                            if ("customer".equalsIgnoreCase(role)) {
                                response.sendRedirect("payment.jsp");
                            } else {
                                response.sendRedirect("home.jsp"); // Redirect to a role-specific page or dashboard
                            }
                        } else {
                            // Invalid credentials
                            String errorMessage = URLEncoder.encode("Invalid username or password.", "UTF-8");
                            response.sendRedirect("error.jsp?errorMessage=" + errorMessage);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        String errorMessage = URLEncoder.encode("An error occurred. Please try again later.", "UTF-8");
                        response.sendRedirect("error.jsp?errorMessage=" + errorMessage);
                    } finally {
                        if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
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
                <img src="images/logo.png" alt="ABC Restaurant Logo">
            </div>
            <div class="quick-links">
                <h3>Quick Links</h3>
                <a href="index.jsp">Home</a>
                <a href="About.jsp">About</a>
                <a href="Gallery.jsp">Gallery</a>
                <a href="Contact.jsp">Contact</a>
                <a href="Menu.jsp">Menu</a>
                <a href="Services.jsp">Services</a>
                <a href="Reservation.jsp">Reservation</a>
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
        <div class="background-images">
            <img src="images/footer-bg1.jpg" alt="Background Image 1">
            <img src="images/footer-bg2.jpg" alt="Background Image 2">
            <img src="images/footer-bg3.jpg" alt="Background Image 3">
        </div>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </div>
</body>
</html>
