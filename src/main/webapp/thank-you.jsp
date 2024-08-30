<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thank You</title>
    <link rel="stylesheet" href="styles.css">
    <style>
      /* Rating bar styles */
        .rating-bar {
            margin-top: 30px;
        }
        .rating-bar label {
            font-size: 24px;
            color: #ffd700;
            cursor: pointer;
            transition: color 0.3s;
        }
        .rating-bar input[type="radio"] {
            display: none;
        }
        .rating-bar input[type="radio"]:checked ~ label {
            color: #ff9800;
        }
        body {
            font-family: 'Helvetica Neue', Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
            background-color: #f8f9fa;
            text-align: center;
        }
        .thank-you-message {
            margin-top: 50px;
            font-size: 24px;
            font-weight: bold;
            color: #007bff;
        }
        .container {
            padding: 20px;
        }
        .button-container {
            margin-top: 20px;
        }
        .home-button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            text-decoration: none;
            display: inline-block;
        }
        .home-button:hover {
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
    <div class="container">
        <div class="thank-you-message">
            <h1>Thank You!</h1>
            <p>Your payment has been processed successfully.</p>
            <p>We appreciate your business. A confirmation email has been sent to you with the details of your order.</p>
        </div>
        <!-- Rating Bar Form -->
        <div class="rating-bar">
           <form action="submitRating" method="post">
    <h3>Please rate your experience:</h3>
    <input type="radio" name="rating" id="star5" value="5"><label for="star5">★</label>
    <input type="radio" name="rating" id="star4" value="4"><label for="star4">★</label>
    <input type="radio" name="rating" id="star3" value="3"><label for="star3">★</label>
    <input type="radio" name="rating" id="star2" value="2"><label for="star2">★</label>
    <input type="radio" name="rating" id="star1" value="1"><label for="star1">★</label>

    <!-- Hidden fields for customer details -->
    <input type="hidden" name="customerName" value="${customerName}">
    <input type="hidden" name="itemId" value="${itemId}"> <!-- Add itemId field -->

    <div class="button-container">
        <button type="submit" class="home-button">Submit Rating</button>
    </div>
</form>

        </div>
        <div class="button-container">
            <a href="index.jsp" class="home-button">Return to Home</a>
        </div>
    </div>

    <div class="footer">
        <div class="footer-container">
            <div class="footer-logo">
                <img src="logo.png" alt="Logo">
            </div>
            <div class="quick-links">
                <h3>Quick Links</h3>
                <a href="index.jsp">Home</a>
                <a href="About.jsp">About</a>
                <a href="Gallery.jsp">Gallery</a>
                <a href="Contact.jsp">Contact</a>
                <a href="menu.jsp">Menu</a>
                <a href="reservation.jsp">Reservation</a>
                <a href="Services.jsp">Services</a>
            </div>
            <div class="opening-hours">
                <h3>Opening Hours</h3>
                <p>Monday - Friday: 10 AM - 10 PM</p>
                <p>Saturday - Sunday: 11 AM - 11 PM</p>
            </div>
            <div class="sign-up">
                <h3>Sign Up for Updates</h3>
                <form>
                    <input type="email" placeholder="Enter your email">
                    <button type="submit">Subscribe</button>
                </form>
            </div>
        </div>
        <div class="background-images">
            <img src="background1.jpg" alt="Background Image 1">
            <img src="background2.jpg" alt="Background Image 2">
        </div>
        <p>&copy; 2024 Your Company. All rights reserved.</p>
    </div>
</body>
</html>
