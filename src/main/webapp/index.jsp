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
            
             
   background-image: url('images/backmid2.png');

    background-size: cover; 
    background-repeat: no-repeat; 
    background-position: center; 
    background-attachment: fixed; 
    
}
      
     
  .search-container {
            margin: 20px;
            text-align: center;
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
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-left: 10px;
        }
        #search-button:hover {
            background-color: #0056b3;
        }
        .search-results {
            margin-top: 20px;
            padding: 10px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            display: none; /* Initially hidden */
            text-align: left;
        }
        .search-results p {
            font-weight: bold;
        }
        .search-results ul {
            list-style-type: none;
            padding: 0;
        }
        .search-results li {
            padding: 5px 0;
        }
        .search-results a {
            text-decoration: none;
            color: #007bff;
        }
        .search-results a:hover {
            text-decoration: underline;
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
        @keyframes upDown {
    0% {
        transform: translateY(0);
    }
    50% {
        transform: translateY(-10px);
    }
    100% {
        transform: translateY(0);
    }
}


.menu-highlight {
    text-align: center;
    display: inline-block;
    animation: upDown 1s ease-in-out infinite;
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
     background-image: url('images/back1.png');
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
             background-image: url('images/back1.png');
        }
        .feedback p {
            font-style: italic;
            border-left: 4px solid #007bff;
            padding-left: 15px;
            margin: 15px 0;
            font-size: 18px;
            color: #555;
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
    position: relative; 
    overflow: hidden; 
}

.footer-images {
    display: flex;
    position: relative; 
    z-index: 1; 
    margin-bottom: 40px;
}

.footer-image {
    position: relative;
    width: 100%;
    flex: 1;
}

.footer-image img {
    width: 100%;
    height: 400px; 
    object-fit: cover;
    display: block;
}

.footer-content {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 90%; 
    display: flex;
    justify-content: space-between;
    gap: 20px;
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

 .section.offers {
    max-width: 900px;
    margin: 40px auto;
    padding: 20px;
    background-color: #ffffff;
    background-image: url('images/backmid2.png'); 
    background-size: cover; 
    background-position: center; 
    background-repeat: no-repeat; 
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.section.offers h2 {
    margin: 0 0 20px;
    font-size: 28px;
    color: #333;
    text-align: center;
}

.offer-item {
    display: flex;
    align-items: center;
    margin-bottom: 20px;
    padding: 15px;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    background-color: rgba(249, 249, 249, 0.9); 
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.offer-item:hover {
    transform: scale(1.02);
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.offer-item img {
    width: 100px;
    height: 100px;
    border-radius: 8px;
    margin-right: 20px;
    object-fit: cover;
}

.offer-item h3 {
    margin: 0 0 10px;
    font-size: 20px;
    color: #007bff;
}

.offer-item p {
    margin: 0;
    font-size: 16px;
    color: #555;
}
.section.feedback {
    max-width: 900px;
    margin: 40px auto;
    padding: 20px;
    background-color: #f4f4f9;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    overflow: hidden; 
    position: relative;
}

.section.feedback h2 {
    margin: 0 0 20px;
    font-size: 28px;
    color: #white;
    text-align: center;
}

.feedback-content {
    display: flex;
    animation: scroll 10s linear infinite;
}

.feedback-content p {
    flex: 0 0 auto;
    width: 100%;
    padding: 15px;
    box-sizing: border-box;
    font-size: 16px;
    color: #555;
    line-height: 1.5;
    margin: 0;
    background-color: #ffffff;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease, background-color 0.3s ease, color 0.3s ease;
}

.feedback-content p:hover {
    transform: scale(1.02);
    background-color: #e7f0ff;
    color: #0056b3;
}

@keyframes scroll {
    0% {
        transform: translateX(0);
    }
    100% {
        transform: translateX(-100%);
    }
}

.section.contact-details {
    max-width: 900px;
    margin: 40px auto;
    padding: 20px;
    background-color: #ffffff;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
     background-image: url('images/back3.png');
}

.section.contact-details h2 {
    margin: 0 0 20px;
    font-size: 28px;
    color: #white;
    text-align: center;
}

.contact-info {
    margin-bottom: 20px;
    text-align: center;
}

.contact-info p {
    margin: 10px 0;
    font-size: 16px;
    color: #666;
}

.contact-info a {
    color: #007bff;
    text-decoration: none;
}

.contact-info a:hover {
    text-decoration: underline;
}

.map-container {
    position: relative;
    width: 100%;
    height: 0;
    padding-bottom: 56.25%; 
    overflow: hidden;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.map-container iframe {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    border: 0;
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
       <a href="menu.jsp">Menu</a>
        <a href="reservation.jsp">Reservation</a>
         <a href="Services.jsp">Services</a>
         
        <a href="order.jsp" style="float: right;">Order Online</a>
        
    </div>

    <div class="header">
        <img src='<c:url value="/images/Yellow%20Emblem%20Restaurant%20Logo.jpg"/>' alt="ABC Restaurant Logo" class="logo">
         
        <h1>Welcome to ABC Restaurant</h1>
    </div>
    
   
 <div class="search-container">
    <input type="text" id="search-bar" placeholder="Search...">
    <button id="search-button">Search</button>
    <div class="search-results" id="search-results"></div>
</div>

<script>
    document.getElementById('search-button').addEventListener('click', function() {
        var query = document.getElementById('search-bar').value;
        if (query) {
            window.location.href = 'search.jsp?query=' + encodeURIComponent(query);
        } else {
            alert('Please enter a search term.');
        }
    });
</script>
    <script>
        document.getElementById('search-button').addEventListener('click', function() {
            const query = document.getElementById('search-bar').value.trim().toLowerCase();
            const resultsContainer = document.getElementById('search-results');

            // Define page links and services
            const pages = {
                "reservation": "reservation.jsp",
                "menu": "menu.jsp",
                "order": "order.jsp",
                "payment": "payment.jsp",
                "contact": "Contact.jsp",
                "about": "About.jsp",
                "offers": "order.jsp",
                "facilities": "Services.jsp",
                "gallery": "Gallery.jsp",
                "services": "Services.jsp",
                "rates": "order.jsp",
                "availability": "availability.jsp",
                "registration": "register.jsp",
            };

            let resultsHtml = `<p>Results for "${query}":</p><ul>`;

            if (query) {
                let resultsFound = false;
                for (const [key, value] of Object.entries(pages)) {
                    if (key.includes(query)) {
                        resultsHtml += `<li><a href="${value}">${key.charAt(0).toUpperCase() + key.slice(1)}</a></li>`;
                        resultsFound = true;
                    }
                }
                if (!resultsFound) {
                    resultsHtml += `<li>No results found</li>`;
                }
            } else {
                resultsHtml += `<li>Please enter a search term.</li>`;
            }

            resultsHtml += `</ul>`;
            resultsContainer.innerHTML = resultsHtml;
            resultsContainer.style.display = 'block';
        });
    </script>
    
    <div class="section">
        <h2>Why Choose ABC Restaurant</h2>
        <p>At ABC Restaurant, we pride ourselves on delivering exceptional dining experiences. Our high-quality ingredients, expert chefs, and welcoming atmosphere make us a top choice for food lovers. Whether you're here for a special occasion or a casual meal, you'll enjoy our delicious dishes and attentive service.</p>
        <div class="learn-more-button">
            <button onclick="window.location.href='About.jsp';">Learn More</button>
        </div>
    </div>

   <div class="section menu-items">
    <h2 class="menu-highlight">Menu Highlights</h2>
    <div class="menu-item">
        <img src="images/beef-stangoff.png" alt="Dish 1">
        <h3>Beef-Stangoff</h3>
        <p>Classic and hearty dish that features tender strips of beef simmered in a rich, creamy sauce. </p>
        <p><strong>RS.700</strong></p>
    </div>
    <div class="menu-item">
        <img src="images/quiche-lorraine.png" alt="Dish 2">
        <h3>Quiche-Lorraine</h3>
        <p>Savory, classic French tart known for its rich, creamy filling and buttery, flaky crust. This delicious dish features a custard-like mixture</p>
        <p><strong>RS.1300</strong></p>
    </div>
    <div class="menu-item">
        <img src="images/hoppers.png" alt="Dish 3">
        <h3>Hoppers</h3>
        <p>Sri-Lankan and South Indian specialty known for their unique bowl-like shape and delicate, crispy edges. </p>
        <p><strong>RS.300</strong></p>
    </div>
    <div class="check-menu-button">
        <button onclick="window.location.href='menu/FullMenu2.pdf';">Check Full Menu</button>
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
        <img src="images/blog21.png" alt="Blog Image 1">
    </div>
    <div>
        <img src="images/Blog22.png" alt="Blog Image 2">
    </div>
    <div>
        <img src="images/Blog3.jpg" alt="Blog Image 3">
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
            <img src="images/dining2.png" alt="Dine-In Service">
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
    <div class="feedback-content">
        <p>"ABC Restaurant offers the best dining experience in the city! The food is amazing, and the service is top-notch."</p>
        <p>"I love coming to ABC Restaurant with my family. The ambiance is great, and there is something for everyone on the menu."</p>
        <p>"The service was excellent and the food was delicious. I will definitely return!"</p>
        <p>"A wonderful dining experience with a great variety of options on the menu. Highly recommended!"</p>
    </div>
</div>


   <div class="section contact-details">
    <h2>Contact Us</h2>
    <div class="contact-info">
        <p>123 Main Street, Colombo, Sri Lanka</p>
        <p>Phone: +94 11 123 4567</p>
        <p>Email: <a href="mailto:info@abcrestaurant.com">info@abcrestaurant.com</a></p>
    </div>
    <div class="map-container">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d125153.43124128782!2d79.95541554227648!3d6.927079379357355!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2598db1006d3b%3A0x18d5b927b3f10a80!2sColombo%2C%20Sri%20Lanka!5e0!3m2!1sen!2sus!4v1683005967063!5m2!1sen!2sus" 
        width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
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
