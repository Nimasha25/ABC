<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Services - ABC Restaurant</title>
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
        .logo {
            width: 150px;
            height: auto;
            display: block;
            margin: 20px auto;
        }
        .navbar {
            background-color: #007bff;
            overflow: hidden;
        }
        .navbar a {
            float: left;
            display: block;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }
        .navbar a:hover {
            background-color: #0056b3;
            color: #f2f2f2;
        }
        .search-bar {
            margin: 20px auto;
            text-align: center;
            max-width: 600px;
        }
        .search-bar input[type="text"] {
            width: 70%;
            padding: 10px;
            font-size: 16px;
            border: 2px solid #007bff;
            border-radius: 5px;
        }
        .search-bar button {
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            background-color: #007bff;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }
        .search-bar button:hover {
            background-color: #0056b3;
        }
        .section {
            padding: 20px;
        }
         .header {
            background-image: url('images/back3.png');
            background-size: cover;
            color: white;
            text-align: center;
            padding: 100px 20px;
            box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.3);
        }
       
        /* Additional footer styles here */
        h2 {
            color: #007bff;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        ul li {
            background-color: #f9f9f9;
            margin: 10px 0;
            padding: 10px;
            border-left: 4px solid #007bff;
        }
        .service-detail {
            font-size: 0.9em;
            color: #777;
        }
        .service-category {
            margin: 20px 0;
        }
        .service-category h3 {
            color: #007bff;
            margin-bottom: 10px;
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
        <a href="order.jsp" style="float: right;">Order Online</a>
    </div>
    
    <div class="header">
        <img src='<c:url value="/images/Yellow%20Emblem%20Restaurant%20Logo.jpg"/>' alt="ABC Restaurant Logo" class="logo">
        <h1>Services You Get</h1>
    </div>

    <!-- Search Bar Section -->
    <div class="search-bar">
        <input type="text" id="searchQuery" placeholder="Search facilities, rates, availability, and more...">
        <button onclick="performSearch()">Search</button>
    </div>

    <div class="section">
        <h2>Our Services</h2>
        <ul>
            <li>
                Event Catering Services
                <p class="service-detail">We offer tailored catering solutions for events of all sizes, with a wide selection of menu options.</p>
            </li>
            <li>
                Special Occasions and Private Dining
                <p class="service-detail">Celebrate your special moments with our exclusive private dining options.</p>
            </li>
            <li>
                Gift Vouchers
                <p class="service-detail">Give the gift of a great meal with our customizable gift vouchers. Perfect for any occasion!</p>
            </li>
        </ul>

        <div class="service-category">
            <h3>Dining Options</h3>
            <p>Experience a variety of dining options at ABC Restaurant:</p>
            <ul>
                <li>Dine-In
                    <p class="service-detail">Enjoy our cozy and inviting ambiance with top-notch service.</p>
                </li>
                <li>Delivery
                    <p class="service-detail">Savor our delicious food from the comfort of your home with our prompt delivery service.</p>
                </li>
                <li>Catering
                    <p class="service-detail">Let us cater your next event with a customized menu and professional service.</p>
                </li>
            </ul>
        </div>

        <div class="service-category">
            <h3>Facilities and Amenities</h3>
            <p>ABC Restaurant offers the following facilities and amenities to enhance your dining experience:</p>
            <ul>
                <li>Free WiFi
                    <p class="service-detail">Stay connected with our complimentary high-speed internet throughout the restaurant.</p>
                </li>
                <li>Parking
                    <p class="service-detail">Ample parking space available for our guests' convenience.</p>
                </li>
                <li>Garden Seating
                    <p class="service-detail">Enjoy your meal in our beautiful garden area, perfect for a relaxing dining experience.</p>
                </li>
                <li>Pool Area
                    <p class="service-detail">Take a dip in our pool or unwind by the water after your meal.</p>
                </li>
                <li>Private Dining Rooms
                    <p class="service-detail">Book our private rooms for special occasions and business meetings.</p>
                </li>
            </ul>
        </div>
 
        <div class="service-category">
            <h3>Featured Foods</h3>
            <p>Some of our popular dishes include:</p>
            <ul>
                <li>Spicy Sri-Lankan Chicken Curry
                    <p class="service-detail">A flavorfuly and aromatic dish, slow-cooked to perfection with a blend of spices.</p>
                </li>
                <li>Chinese Sweet and Sour Pork
                    <p class="service-detail">Tender pork pieces stir-fried with vegetables and a tangy sweet and sour sauce.</p>
                </li>
                <li>Korean-Bibimbap
                    <p class="service-detail">A traditional mixed rice dish topped with sautéed vegetables, meat, and a fried egg.</p>
                </li>
            </ul>
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


    <script>
        function performSearch() {
            const query = document.getElementById('searchQuery').value;
            if (query) {
                window.location.href = 'SearchResults.jsp?query=' + encodeURIComponent(query);
            }
        }
    </script>
</body>
</html>
