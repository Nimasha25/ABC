<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            background-image: url('images/about-header.jpg');
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
        .section p {
            font-size: 18px;
            line-height: 1.6;
            color: #555;
            margin-bottom: 20px;
        }
        .location, .contact-details {
            margin: 30px 0;
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
        <a href="Contact.jsp">Contact</a>
        <a href="order.jsp" style="float: right;">Order Online</a>
    </div>

    <div class="header">
        <img src="images/logo.png" alt="ABC Restaurant Logo" class="logo">
        <h1>About ABC Restaurant</h1>
    </div>

    <div class="section">
        <h2>Overview</h2>
        <p>ABC Restaurant is a giving dining establishment, offering a unique blend of culinary delights in various cities across Sri Lanka. Our mission is to provide an exceptional dining experience through a combination of quality ingredients, expert chefs, and outstanding customer service.</p>
        <p>With a commitment to innovation, ABC Restaurant has integrated advanced technology to enhance the customer experience, making reservations and orders seamless and convenient.</p>
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
        <p>123 Main Street, Colombo, Sri Lanka</p>
        <p>We are also expanding our presence with new locations opening soon in Kandy and other major cities.</p>
    </div>

    <div class="section contact-details">
        <h2>Contact Details</h2>
        <p>Phone: +94 11 123 4567</p>
        <p>Email: <a href="mailto:info@abcrestaurant.com">info@abcrestaurant.com</a></p>
        <p>Website: <a href="http://www.abcrestaurant.com">www.abcrestaurant.com</a></p>
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
            <a href="reservation.jsp">Reservation</a>
             <a href="Services.jsp">Contact</a>
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
</div>

</body>
</html>
