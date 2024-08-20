<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>ABC Restaurant Reservation</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Existing CSS styles */
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
        .footer .quick-links, .footer .opening-hours, .footer .sign-up {
            flex: 1;
        }
        .footer .quick-links h3, .footer .opening-hours h3, .footer .sign-up h3 {
            margin-top: 0;
            font-size: 20px;
            color: #fff;
            margin-bottom: 15px;
        }
        .footer .quick-links a, .footer .opening-hours p, .footer .sign-up input[type="email"], .footer .sign-up button {
            color: #f2f2f2;
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
        .form-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .form-container label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }
        .form-container input[type="text"], .form-container input[type="date"], .form-container input[type="time"], .form-container input[type="email"], .form-container input[type="number"], .form-container select {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 12px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .form-container input[type="submit"] {
            background-color: #28a745;
            border: none;
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }
        .form-container input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>
  <script>
        // Handle form submission using AJAX
        function handleReservation(event) {
            event.preventDefault(); // Prevent the form from submitting immediately

            // Get form data
            var form = document.querySelector('.form-container form');
            var formData = new FormData(form);

            fetch('reservation', {
                method: 'POST',
                body: formData
            })
            .then(response => response.text())
            .then(result => {
                alert(result);
                if (result === "Reservation successful!") {
                    form.reset(); // Reset form fields after success
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert("There was an error processing your reservation.");
            });
        }
    </script>
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
        <img src="images/logo.png" alt="ABC Restaurant Logo" class="logo">
        <h1>Make a Reservation</h1>
    </div>

    <div class="form-container">
        <h2>Reservation Form</h2>
        <form action="reservation" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br>
            
            <label for="phone">Phone Number:</labelz>
            <input type="tel" id="phone" name="phone" required><br>

            <label for="serviceType">Select Service:</label>
            <select name="serviceType" id="serviceType" required>
                <option value="delivery">Delivery</option>
                <option value="dine-in">Dine-In</option>
                <option value="takeaway">Take-Away</option>
            </select><br>

            <label for="date">Date:</label>
            <input type="date" id="date" name="date" required><br>

            <label for="time">Time:</label>
            <input type="time" id="time" name="time" required><br>

            <label for="guests">Number of Guests:</label>
            <input type="number" id="guests" name="guests" min="1" required><br>

            <input type="submit" value="Book Now">
        </form>
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
