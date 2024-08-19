<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - ABC Restaurant</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
            background-color: #0056b3;
            color: #fff;
            padding: 15px 0;
            text-align: center;
        }
        header .logo {
            width: 150px;
            height: auto;
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
            width: 80%;
            margin: auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .container h1 {
            text-align: center;
            color: #333;
        }
        .contact-form {
            display: flex;
            flex-direction: column;
            max-width: 600px;
            margin: auto;
        }
        .contact-form input, .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .contact-form button {
            background-color: #0056b3;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        .contact-form button:hover {
            background-color: #004494;
        }
        .map {
            text-align: center;
            margin: 20px 0;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 20px;
            position: relative;
            bottom: 0;
            width: 100%;
        }
        footer .footer-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            max-width: 1200px;
            margin: 0 auto;
        }
        footer .quick-links, footer .opening-hours, footer .sign-up {
            flex: 1;
            text-align: center;
            margin: 10px;
        }
        footer .quick-links a, footer .sign-up a {
            color: #f2f2f2;
            text-decoration: none;
            margin-bottom: 10px;
            display: block;
            font-size: 16px;
        }
        footer .quick-links a:hover {
            color: #007bff;
        }
        footer .sign-up input[type="email"] {
            padding: 10px;
            border: none;
            border-radius: 5px;
            margin-right: 10px;
            font-size: 16px;
            width: 250px;
        }
        footer .sign-up button {
            background-color: #28a745;
            border: none;
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
        }
        footer .sign-up button:hover {
            background-color: #218838;
        }
        .footer-logo img {
            width: 150px;
            height: auto;
        }
        .footer p {
            margin: 10px 0;
        }
        .background-images {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin: 20px 0;
        }
        .background-images img {
            width: 200px;
            height: 100px;
            object-fit: cover;
            border-radius: 8px;
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
         
       <a href="order.jsp" style="float: right;">Order Online</a>
        
    </div>
    <header>
        <img src="images/logo.png" alt="ABC Restaurant Logo" class="logo">
        <h1>Contact Us</h1>
    </header>
    <div class="container">
        <h2>Get in Touch</h2>
        <div class="contact-info">
            <p><strong>ABC Restaurant</strong></p>
            <p>1234 Restaurant Avenue, Colombo, Sri Lanka</p>
            <p>Phone: +94 123 456 789</p>
            <p>Email: info@abcrestaurant.lk</p>
        </div>
        <div class="map">
            <!-- Embed Google Map -->
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3971.510832339426!2d79.98170691475457!3d6.927079995004338!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae25995d9d4cbd7%3A0x6e0a70e9f510fc7d!2sABC%20Restaurant!5e0!3m2!1sen!2slk!4v1692195049820!5m2!1sen!2slk" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </div>
        <form action="contactSubmit.jsp" method="post" class="contact-form">
            <input type="text" name="name" placeholder="Your Name" required>
            <input type="email" name="email" placeholder="Your Email" required>
            <input type="text" name="subject" placeholder="Subject" required>
            <textarea name="message" rows="5" placeholder="Your Message" required></textarea>
            <button type="submit">Send Message</button>
        </form>
        <form action="querySubmit.jsp" method="post" class="contact-form">
            <h3>Submit a Query</h3>
            <input type="text" name="queryName" placeholder="Your Name" required>
            <input type="email" name="queryEmail" placeholder="Your Email" required>
            <textarea name="queryMessage" rows="5" placeholder="Your Query" required></textarea>
            <button type="submit">Submit Query</button>
        </form>
    </div>
    <footer>
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
                <button onclick="window.location.href='SignUp.jsp';">Sign Up</button>
            </div>
        </div>
        <div class="background-images">
            <img src="images/footer-bg1.jpg" alt="Background Image 1">
            <img src="images/footer-bg2.jpg" alt="Background Image 2">
            <img src="images/footer-bg3.jpg" alt="Background Image 3">
        </div>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
