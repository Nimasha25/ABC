<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
        <a href="Services.jsp">Services</a>
        <a href="Gallery.jsp">Gallery</a>
        <a href="Contact.jsp">Contact</a>
        <a href="menu.jsp">Menu</a>
        <a href="reservation.jsp">Reservation</a>
        <a href="order.jsp" style="float: right;">Order Online</a>
    </div>
    
    
<div class="header">
    <img src="images/logo.png" alt="ABC Restaurant Logo" class="logo">
    <h1>Welcome to ABC Restaurant Gallery</h1>
</div>

    <div class="section">
    <h2>Gallery</h2>
    <div class="gallery">
        <div class="gallery-item">
            <img src="images/interior1.jpg" alt="Restaurant Interior">
            <div class="gallery-description">
                <p>Elegant and modern interior of ABC Restaurant.</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="images/exterior1.jpg" alt="Restaurant Exterior">
            <div class="gallery-description">
                <p>Beautiful exterior view of ABC Restaurant at night.</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="images/dining_area1.jpg" alt="Dining Area">
            <div class="gallery-description">
                <p>Cozy dining area perfect for family gatherings.</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="images/dining_area2.jpg" alt="Private Dining Room">
            <div class="gallery-description">
                <p>Private dining room available for special occasions.</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="images/outdoor_seating1.jpg" alt="Outdoor Seating">
            <div class="gallery-description">
                <p>Relaxing outdoor seating with a view.</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="images/dish1.jpg" alt="Signature Dish">
            <div class="gallery-description">
                <p>Our signature dish: Spicy Sri Lankan Chicken Curry.</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="images/dish2.jpg" alt="Gourmet Dessert">
            <div class="gallery-description">
                <p>Gourmet dessert made with the finest ingredients.</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="images/happy_customers1.jpg" alt="Happy Customers">
            <div class="gallery-description">
                <p>Happy customers enjoying their meals at ABC Restaurant.</p>
            </div>
        </div>
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
             <a href="Services.jsp">Contact</a>
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
