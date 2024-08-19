<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: 'Helvetica Neue', Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
            background-color: #f8f9fa;
             background-image: url('<c:url value="/images/logo.jpg"/>');
             background-image: url('https://pngtree.com/images/logo.jpg');
             
    background-size: cover; /* Adjust size as needed */
    background-position: center; /* Adjust position as needed */
        }
      
        
   .search-container {
    position: relative;
    display: inline-block;
}

#search-bar {
    width: 250px;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 5px;
    font-size: 16px;
    outline: none;
    box-sizing: border-box;
}

#search-button {
    position: absolute;
    right: 0;
    top: 0;
    height: 100%;
    padding: 0 15px;
    border: none;
    border-radius: 0 5px 5px 0;
    background-color: #007bff;
    color: white;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

#search-button:hover {
    background-color: #0056b3;
}

.search-results {
    display: none; /* Initially hidden */
    margin-top: 10px;
    border: 1px solid #ddd;
    border-radius: 5px;
    padding: 10px;
    background-color: #f9f9f9;
}

.search-results.visible {
    display: block; /* Show results when visible class is added */
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
        .logo {
            width: 150px;
            height: auto;
            display: block;
            margin: 20px auto;
        }
        .header {
            background-image: url('images/header-image.jpg');
            background-size: cover;
            color: white;
            text-align: center;
            padding: 100px 20px;
            box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.3);
        }
        .header h1 {
            margin: 0;
            font-size: 50px;
            font-weight: bold;
            text-transform: uppercase;
        }
        .section {
            padding: 40px 20px;
            background-color: #fff;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            margin: 20px 0;
        }
        .section h2 {
            font-size: 32px;
            font-weight: bold;
            color: #007bff;
            border-bottom: 2px solid #007bff;
            padding-bottom: 10px;
            margin-bottom: 30px;
        }
        .menu-items {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 20px;
        }
        .menu-item {
            flex: 1;
            min-width: 220px;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            text-align: center;
            background-color: #f8f9fa;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        .menu-item:hover {
            transform: translateY(-10px);
        }
        .menu-item img {
            width: 100%;
            height: auto;
            border-radius: 8px;
            margin-bottom: 15px;
        }
        .menu-item h3 {
            margin: 0;
            font-size: 24px;
            color: #333;
        }
        .menu-item p {
            font-size: 16px;
            color: #777;
            margin: 10px 0;
        }
        .menu-item strong {
            font-size: 20px;
            color: #007bff;
        }
        .learn-more-button {
            text-align: center;
            margin-top: 30px;
        }
        .learn-more-button button {
            background-color: #007bff;
            border: none;
            color: white;
            padding: 10px 20px;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .learn-more-button button:hover {
            background-color: #0056b3;
        }
        .check-menu-button {
            text-align: center;
            margin-top: 30px;
        }
        .check-menu-button button {
            background-color: #28a745;
            border: none;
            color: white;
            padding: 10px 20px;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .check-menu-button button:hover {
            background-color: #218838;
        }
        .blog-gallery {
    display: flex;
    justify-content: space-between;
    gap: 20px;
    margin: 20px 0;
    flex-wrap: wrap;
}

.blog-gallery div {
    flex: 1;
    min-width: 300px;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.blog-gallery img {
    width: 100%;
    height: auto;
    display: block;
    border-radius: 8px;
}

.view-all-button {
    text-align: center;
    margin: 20px 0;
}

.view-all-button button {
    background-color: #007bff;
    border: none;
    color: white;
    padding: 10px 20px;
    font-size: 18px;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.view-all-button button:hover {
    background-color: #0056b3;
}
   .services-section {
    padding: 40px 20px;
    background-color: #fff;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    margin: 20px 0;
}

.services-section h2 {
    font-size: 32px;
    font-weight: bold;
    color: #007bff;
    border-bottom: 2px solid #007bff;
    padding-bottom: 10px;
    margin-bottom: 30px;
    text-align: center;
}

.services {
    display: flex;
    justify-content: space-between;
    text-align: center;
    gap: 20px;
}

.service-item {
    flex: 1;
    min-width: 220px;
    border: 1px solid #ddd;
    border-radius: 8px;
    padding: 20px;
    background-color: #f8f9fa;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease;
}

.service-item:hover {
    transform: translateY(-10px);
}

.service-item img {
    width: 100px;
    height: auto;
    margin-bottom: 15px;
}

.service-item h3 {
    margin: 0;
    font-size: 24px;
    color: #333;
}

.service-item p {
    font-size: 16px;
    color: #777;
    margin: 10px 0;
}
   
        
        .feedback {
            margin: 40px 0;
        }
        .feedback p {
            font-style: italic;
            border-left: 4px solid #007bff;
            padding-left: 15px;
            margin: 15px 0;
            font-size: 18px;
            color: #555;
        }
        .contact-details {
            margin: 40px 0;
        }
        .contact-details p {
            margin: 5px 0;
            font-size: 16px;
            color: #333;
        }
        .contact-details a {
            color: #007bff;
            text-decoration: none;
            transition: color 0.3s ease;
        }
        .contact-details a:hover {
            color: #0056b3;
            text-decoration: underline;
        }
        
        .more-button {
    text-align: center;
    margin-top: 30px;
}

.more-button button {
    background-color: #007bff;
    border: none;
    color: white;
    padding: 10px 20px;
    font-size: 18px;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.more-button button:hover {
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

    <div class="header">
        <img src='<c:url value="/images/logo.jpg"/>' alt="ABC Restaurant Logo" class="logo">

        <h1>Welcome to ABC Restaurant</h1>
    </div>
    
   
 <div class="search-container">
    <input type="text" id="search-bar" placeholder="Search...">
    <button id="search-button">Search</button>
</div>
<div id="search-results" class="search-results"></div>

    
    <div class="section">
        <h2>Why Choose ABC Restaurant</h2>
        <p>At ABC Restaurant, we pride ourselves on delivering exceptional dining experiences. Our high-quality ingredients, expert chefs, and welcoming atmosphere make us a top choice for food lovers. Whether you're here for a special occasion or a casual meal, you'll enjoy our delicious dishes and attentive service.</p>
        <div class="learn-more-button">
            <button onclick="window.location.href='About.jsp';">Learn More</button>
        </div>
    </div>

    <div class="section menu-items">
        <h2>Menu Highlights</h2>
        <div class="menu-item">
            <img src="images/dish1.jpg" alt="Dish 1">
            <h3>Dish 1</h3>
            <p>Description of Dish 1.</p>
            <p><strong>$10.00</strong></p>
        </div>
        <div class="menu-item">
            <img src="images/dish2.jpg" alt="Dish 2">
            <h3>Dish 2</h3>
            <p>Description of Dish 2.</p>
            <p><strong>$12.00</strong></p>
        </div>
        <div class="menu-item">
            <img src="images/dish3.jpg" alt="Dish 3">
            <h3>Dish 3</h3>
            <p>Description of Dish 3.</p>
            <p><strong>$15.00</strong></p>
        </div>
        <div class="check-menu-button">
            <button onclick="window.location.href='menu/FullMenu.pdf';">Check Full Menu</button>
        </div>
    </div>
    <div class="section offers">
    <h2>Special Offers</h2>
    <div class="offer-item">
        <h3>Happy Hour Special</h3>
        <p>Enjoy 50% off on all beverages from 5 PM to 7 PM every day!</p>
    </div>
    <div class="offer-item">
        <h3>Weekend Family Feast</h3>
        <p>Get a free dessert platter with any family meal ordered on weekends.</p>
    </div>
    <div class="offer-item">
        <h3>Tuesday Two-for-One</h3>
        <p>Buy one, get one free on all main courses every Tuesday!</p>
    </div>
    <div class="offer-item">
        <h3>Loyalty Program</h3>
        <p>Join our loyalty program and earn points on every purchase to redeem for exciting rewards.</p>
    </div>
</div>
<div class="section blog-gallery">
    <div>
        <img src="images/blog1.jpg" alt="Blog Image 1">
    </div>
    <div>
        <img src="images/blog2.jpg" alt="Blog Image 2">
    </div>
</div>

<div class="view-all-button">
    <button onclick="window.location.href='Blog.jsp';">View All</button>
</div>

    <div class="services-section">
    <h2>Our Services</h2>
    <div class="services">
        <div class="service-item">
            <img src="images/delivery-icon.png" alt="Delivery Service">
            <h3>Delivery</h3>
            <p>Get your favorite meals delivered right to your doorstep.</p>
        </div>
        <div class="service-item">
            <img src="images/dine-in-icon.png" alt="Dine-In Service">
            <h3>Dine-In</h3>
            <p>Enjoy a fine dining experience in a comfortable setting.</p>
        </div>
        <div class="service-item">
            <img src="images/catering-icon.png" alt="Catering Service">
            <h3>Catering</h3>
            <p>Let us cater your events with our delicious dishes.</p>
        </div>
    </div>
     <div class="more-button">
        <button onclick="window.location.href='Services.jsp';">More</button>
    </div>
</div>
    

    <div class="section feedback">
        <h2>Customer Feedback</h2>
        <p>"ABC Restaurant offers the best dining experience in the city! The food is amazing, and the service is top-notch."</p>
        <p>"I love coming to ABC Restaurant with my family. The ambiance is great, and there is something for everyone on the menu."</p>
    </div>

    <div class="section contact-details">
        <h2>Contact Us</h2>
        <p>123 Main Street, Colombo, Sri Lanka</p>
        <p>Phone: +94 11 123 4567</p>
        <p>Email: <a href="mailto:info@abcrestaurant.com">info@abcrestaurant.com</a></p>
    </div>

   <div class="footer">
    <div class="footer-container">
        <div class="footer-logo">
            <img src='<c:url value="/images/logo.jpg"/>' alt="ABC Restaurant Logo" class="logo">
        </div>
        <div class="quick-links">
            <h3>Quick Links</h3>
            <a href="index.jsp">Home</a>
            <a href="About.jsp">About</a>
            <a href="Gallery.jsp">Gallery</a>
            <a href="Contact.jsp">Contact</a>
            <a href="menu.jsp">Menu</a>
             <a href="Services.jsp">Contact</a>
            <a href="reservation.jsp">Reservation</a>
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
