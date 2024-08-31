<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gallery - ABC Restaurant</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
             background-image: url('images/back1.png');
            background-size: cover;
    background-repeat: no-repeat;
    background-position: center; 
    background-attachment: fixed;
        }
        .gallery {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 20px;
    margin: 20px 0;
}

.gallery-item {
    position: relative;
    overflow: hidden;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.gallery-item img {
    width: 100%;
    height: auto;
    display: block;
    transition: transform 0.3s ease;
}

.gallery-item:hover {
    transform: scale(1.05);
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
}

.gallery-description {
    position: absolute;
    bottom: 0;
    background: rgba(0, 0, 0, 0.7);
    color: white;
    width: 100%;
    text-align: center;
    padding: 10px;
    opacity: 0;
    transition: opacity 0.3s ease;
}

.gallery-item:hover .gallery-description {
    opacity: 1;
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
            background-image: url('images/back3.png');
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
.footer {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 40px 20px;
    position: relative; 

    overflow: hidden; 
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
    background: rgba(0, 0, 0, 0.7); 
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
  /* New CSS for Gallery h2 */
    .section h2 {
        color: white;
        transition: color 0.3s ease;
        text-align: center; /* Optional: Center the heading */
        margin-bottom: 20px;
       font-size: 50px;  /* Optional: Add some space below the heading */
    }

    .section h2:hover {
        color: #FFD700; /* Example hover color: Gold */
        cursor: pointer; /* Optional: Change cursor to pointer on hover */
    }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="About.jsp">About</a>
        <a href="Services.jsp">Services</a>
        <a href="Gallery.jsp">Gallery</a>
        <a href="Contact.jsp">Contact</a>
        <a href="menu.jsp">Menu</a>
        <a href="reservation.jsp">Reservation</a>
        <a href="order.jsp" style="float: right;">Order Online</a>
    </div>
    
    
<div class="header">
        <img src="images/Yellow Emblem Restaurant Logo.jpg" alt="ABC Restaurant Logo" class="logo">
    <h1>Welcome to ABC Restaurant Gallery</h1>
</div>

    <div class="section">
    <h2>Gallery</h2>
    <div class="gallery">
        <div class="gallery-item">
            <img src="images/interior.png" alt="Restaurant Interior">
            <div class="gallery-description">
                <p>Elegant and modern interior of ABC Restaurant.</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="images/exterior1.png" alt="Restaurant Exterior">
            <div class="gallery-description">
                <p>Beautiful exterior view of ABC Restaurant at night.</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="images/dining.png" alt="Dining Area">
            <div class="gallery-description">
                <p>Cozy dining area perfect for family gatherings.</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="images/private-dine.png" alt="Private Dining Room">
            <div class="gallery-description">
                <p>Private dining room available for special occasions.</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="images/outdoor.png" alt="Outdoor Seating">
            <div class="gallery-description">
                <p>Relaxing outdoor seating with a view.</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="images/chicken-curry.png" alt="Signature Dish">
            <div class="gallery-description">
                <p>Our signature dish: Spicy Sri Lankan Chicken Curry.</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="images/goumet.png" alt="Gourmet Dessert">
            <div class="gallery-description">
                <p>Gourmet dessert made with the finest ingredients.</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="images/happy-customer.png" alt="Happy Customers">
            <div class="gallery-description">
                <p>Happy customers enjoying their meals at ABC Restaurant.</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="images/italian-dish.png" alt="italitan dish">
            <div class="gallery-description">
                <p>Happy customers, Dive into the deliciousness of this Andouille Sausage + Peppers recipe! .</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="images/boba.png" alt="boba-trend">
            <div class="gallery-description">
                <p>The popular pearl drink>
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


</body>
</html>
