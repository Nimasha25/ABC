<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Processed</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: 'Helvetica Neue', Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
            background-color: #f8f9fa;
        }
        .container {
            padding: 20px;
            max-width: 800px;
            margin: 0 auto;
        }
        .receipt {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
        }
        .receipt h1 {
            color: #007bff;
        }
        .receipt p {
            font-size: 18px;
        }
       .receipt button {
    background-color: #28a745; /* Green background color */
    color: white; /* White text color */
    padding: 12px 24px; /* Larger padding for a more prominent button */
    border: none; /* No border */
    border-radius: 8px; /* More rounded corners */
    font-size: 18px; /* Slightly larger font size */
    cursor: pointer; /* Pointer cursor on hover */
    transition: all 0.3s ease; /* Smooth transition for all properties */
    margin-top: 20px; /* Space above the button */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Subtle shadow for depth */
}

.receipt button:hover {
    background-color: #218838; /* Darker green background color on hover */
    transform: translateY(-2px); /* Slight lift effect on hover */
}

.receipt button:active {
    background-color: #1e7e34; /* Even darker green for active state */
    transform: translateY(0); /* Reset lift effect on click */
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
        <%
        // Retrieve payment details
        String amount = request.getParameter("amount");
        String paymentMethod = request.getParameter("payment-method");

        // Simulate payment processing (replace with actual payment logic)
        boolean paymentSuccessful = true; // Assume payment is successful

        if (paymentSuccessful) {
            // Display receipt
            out.println("<div class='receipt'><h1>Payment Successful</h1>");
            out.println("<p>Thank you for your payment!</p>");
            out.println("<p>Total Amount: $" + amount + "</p>");
            out.println("<p>Payment Method: " + paymentMethod + "</p></div>");
            out.println("<button onclick=\"window.location.href='index.jsp';\">Back to Home</button></div>");
        } else {
            // Payment failed message
            out.println("<div class='receipt'><h1>Payment Failed</h1>");
            out.println("<p>Sorry, your payment could not be processed. Please try again.</p></div>");
            out.println("<button onclick=\"window.location.href='index.jsp';\">Back to Home</button></div>");
        }
        %>
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
