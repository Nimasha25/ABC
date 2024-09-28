<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - ABC Restaurant</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
            background-color: #f8f9fa;
             background-image: url('images/back1.png');
             background-size: cover; 
    background-repeat: no-repeat; 
    background-position: center; 
    background-attachment: fixed;
        }
        .navbar {
            background-color: #007bff;
            overflow: hidden;
            padding: 10px 0;
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
            color: white;
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
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    margin: 20px auto;
    max-width: 800px;
}


.section h2 {
    font-size: 28px;
    color: #333;
    border-bottom: 2px solid #dd3333;
    padding-bottom: 10px;
    margin-bottom: 20px;
    font-family: 'Georgia', serif;
}

.section h3 {
    font-size: 24px;
    color: #555;
    margin-top: 30px;
    font-family: 'Georgia', serif;
}


.section p {
    font-size: 16px;
    line-height: 1.6;
    color: #666;
    margin-bottom: 15px;
    font-family: 'Arial', sans-serif;
}


.section p strong {
    color: #dd3333;
}


.section a {
    color: #dd3333;
    text-decoration: none;
    font-weight: bold;
}

.section a:hover {
    text-decoration: underline;
}

/* Media Query for Responsiveness */
@media (max-width: 600px) {
    .section {
        padding: 15px;
        margin: 10px;
    }
    
    .section h2 {
        font-size: 24px;
    }
    
    .section h3 {
        font-size: 20px;
    }
    
    .section p {
        font-size: 14px;
    }
}

      .location {
    text-align: center;
}

.location h2 {
    font-size: 32px;
    font-weight: bold;
    color: #007bff;
    border-bottom: 2px solid #007bff;
    padding-bottom: 10px;
    margin-bottom: 30px;
}

.location p {
    font-size: 18px;
    color: #555;
}

/* Contact Details Section Styles */
.contact-details {
    text-align: center;
}

.contact-details h2 {
    font-size: 32px;
    font-weight: bold;
    color: #007bff;
    border-bottom: 2px solid #007bff;
    padding-bottom: 10px;
    margin-bottom: 30px;
}

.contact-details p {
    font-size: 18px;
    color: #555;
}

.contact-details a {
    color: #007bff;
    text-decoration: none;
}

.contact-details a:hover {
    text-decoration: underline;
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

        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="About.jsp">About Us</a>
        <a href="Services.jsp">Services</a>
        <a href="Gallery.jsp">Gallery</a>
        <a href="Services.jsp">Contact</a>
        <a href="menu.jsp">Menu</a>
        <a href="Contact.jsp">Contact</a>
        <a href="order.jsp" style="float: right;">Order Online</a>
    </div>

    <div class="header">
        <img src='<c:url value="/images/Yellow%20Emblem%20Restaurant%20Logo.jpg"/>' alt="ABC Restaurant Logo" class="logo">
        <h1>About ABC Restaurant</h1>
    </div>
  
  
  
    <div class="section">
    <h2>Overview</h2>
    <p>ABC Restaurant is a premier dining establishment, offering an exceptional blend of culinary delights in various cities across Sri Lanka. Our mission is to provide a truly memorable dining experience through the use of top-quality ingredients, expertly crafted dishes, and a commitment to outstanding customer service.</p>
    <p>Founded with a passion for gastronomy, ABC Restaurant has become a beacon of culinary excellence, drawing food enthusiasts from around the world. Our menu is a celebration of both traditional Sri Lankan flavors and contemporary global cuisines, curated by our team of renowned chefs.</p>
    <p>In addition to our exquisite dishes, ABC Restaurant is dedicated to innovation. We have integrated advanced technology into every aspect of our operations, ensuring that making reservations, placing orders, and interacting with our staff is as seamless and convenient as possible.</p>
    <p>Whether you are dining in one of our elegantly designed locations or enjoying a meal at home through our delivery service, ABC Restaurant guarantees an unparalleled dining experience that delights the senses and nourishes the soul.</p>

    <h3>Our Chef and Founder</h3>
    <p>ABC Restaurant was founded by Chef Arun Perera, a visionary in the culinary world with over 20 years of experience. Chef Arun's journey began in the kitchens of Colombo, where he mastered the art of Sri Lankan cuisine. His passion for innovation and commitment to excellence led him to establish ABC Restaurant, where he brings his creative vision to life.</p>
    <p>Chef Arun believes in using only the freshest and highest-quality ingredients, sourced locally whenever possible. His culinary philosophy is rooted in the belief that food should not only satisfy hunger but also tell a story. Each dish at ABC Restaurant is a testament to his dedication to flavor, artistry, and the joy of dining.</p>
    <p>Under Chef Arun's leadership, ABC Restaurant has earned numerous accolades and has become a favorite destination for both locals and tourists alike. His passion for culinary excellence continues to drive the success of ABC Restaurant, making it a leading name in Sri Lanka's dining scene.</p>
</div>


    <div class="section">
        <h2>Why Choose ABC Restaurant</h2>
        <p>At ABC Restaurant, we believe in delivering more than just a meal. We offer a memorable dining experience that keeps our customers coming back. Here's why you should choose us:</p>
        <ul>
            <li>Fresh and high-quality ingredients sourced locally.</li>
            <li>Diverse menu catering to various tastes, including Sri Lankan, Chinese, and Korean cuisines.</li>
            <li>State-of-the-art facilities with a warm and welcoming atmosphere.</li>
            <li>Convenient online reservations and ordering system.</li>
            <li>Exceptional customer service focused on your satisfaction.</li>
        </ul>
    </div>

    <div class="section location">
        <h2>Exact Location</h2>
        <p>Our flagship restaurant is located at:</p>
        <p>123 Main Street, Colombo,Sri-Lanka</p>
        <p>We are also expanding our presence with new locations opening soon in Kandy and other major cities.</p>
         <div class="map-container">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d125153.43124128782!2d79.95541554227648!3d6.927079379357355!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2598db1006d3b%3A0x18d5b927b3f10a80!2sColombo%2C%20Sri%20Lanka!5e0!3m2!1sen!2sus!4v1683005967063!5m2!1sen!2sus" 
        width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
    </div>

    <div class="section contact-details">
        <h2>Contact Details</h2>
        <p>Phone: +94 11 123 4567</p>
        <p>Email: <a href="mailto:info@abcrestaurant.com">info@abcrestaurant.com</a></p>
        <p>Website: <a href="http://www.abcrestaurant.com">www.abcrestaurant.com</a></p>
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
