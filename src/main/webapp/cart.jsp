<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Cart - ABC Restaurant</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
             background-image: url('images/back3.png');

    background-size: cover; /* Makes sure the image covers the entire body */
    background-repeat: no-repeat; /* Prevents the image from repeating */
    background-position: center; /* Centers the image on the page */
    background-attachment: fixed; 
        }
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
            color: #FFFFFF;
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
      .container {
    color: #FF6347; /* Tomato Red for text */
}

.container h2, 
.container h3,
.container table th, 
.container table td, 
.container button {
    color: #FF6347; /* Tomato Red for specific elements */
}

.container table th, 
.container table td {
    border-color: #FF6347; /* Tomato Red for table borders */
}

.container button {
    background-color: transparent;
    border: 1px solid #FF6347; /* Tomato Red border */
    padding: 12px 24px;
    cursor: pointer;
    border-radius: 4px;
    font-size: 16px;
    transition: background-color 0.3s ease, color 0.3s ease;
}

.container button:hover {
    background-color: #FF6347; /* Red background on hover */
    color: #FFFFFF; /* White text on hover */
}



        .cart-table {
            width: 100%;
            border-collapse: collapse;
        }
        .cart-table, .cart-table th, .cart-table td {
            border: 1px solid #ddd;
        }
        .cart-table th, .cart-table td {
            padding: 10px;
            text-align: left;
        }
        .cart-table th {
            background-color: #f4f4f4;
        }
        .checkout-button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 4px;
            margin-top: 20px;
        }
        .checkout-button:hover {
            background-color: #45a049;
        }
        #cart-form {
            margin-top: 20px;
            text-align: center;
        }
        #cart-form button {
            background-color: #4CAF50; /* Green background */
            color: white; /* White text */
            border: none; /* Remove default border */
            padding: 10px 20px; /* Padding around the text */
            text-align: center; /* Center the text */
            text-decoration: none; /* Remove underline */
            display: inline-block; /* Align button */
            font-size: 16px; /* Font size */
            margin: 4px 2px; /* Margin for spacing */
            cursor: pointer; /* Pointer cursor on hover */
            border-radius: 4px; /* Rounded corners */
            transition: background-color 0.3s ease; /* Smooth background color transition */
        }
        #cart-form button:hover {
            background-color: #45a049; /* Darker green on hover */
        }
        .footer {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 40px 20px;
    position: relative; /* Relative positioning for absolute positioning of child elements */
    overflow: hidden; /* Ensure content doesn't overflow */
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
    background: rgba(0, 0, 0, 0.7); /* Semi-transparent background for readability */
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
        <h1>Your Cart</h1>
    </div>

    <div class="container">
        <h2>Items in Your Cart</h2>
        <table class="cart-table">
            <thead>
                <tr>
                    <th>Item</th>
                    <th>Quantity</th>
                    <th>Price (per item)</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody id="cart-items">
                <!-- Cart items will be inserted here by JavaScript -->
            </tbody>
        </table>
        <h3>Total Price: LKR <span id="total-price">0.00</span></h3>

        <button class="checkout-button" onclick="window.location.href='payment.jsp'">Proceed to Checkout</button>
        
        <!-- Form to submit cart data -->
        <form id="cart-form" method="post" action="saveCart">
            <!-- JavaScript will dynamically add hidden inputs here -->
            <button type="submit">Save Cart</button>
        </form>
        
        <p id="save-message"></p>
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
        function generateCartForm() {
            const cart = JSON.parse(localStorage.getItem('cart')) || {};
            const form = document.getElementById('cart-form');
            
            // Remove existing hidden inputs
            while (form.querySelector('input[type="hidden"]')) {
                form.removeChild(form.querySelector('input[type="hidden"]'));
            }

            // Add new hidden inputs for each cart item
            Object.entries(cart).forEach(([name, { quantity, price, total }], index) => {
                form.appendChild(createHiddenInput(`cartItems[${index}].itemName`, name));
                form.appendChild(createHiddenInput(`cartItems[${index}].quantity`, quantity));
                form.appendChild(createHiddenInput(`cartItems[${index}].price`, price));
            });
        }

        function createHiddenInput(name, value) {
            const input = document.createElement('input');
            input.type = 'hidden';
            input.name = name;
            input.value = value;
            return input;
        }

        function displayCart() {
            const cart = JSON.parse(localStorage.getItem('cart')) || {};
            const cartItems = document.getElementById('cart-items');
            const totalPriceElem = document.getElementById('total-price');

            cartItems.innerHTML = ''; // Clear existing items
            let totalPrice = 0;

            if (Object.keys(cart).length === 0) {
                cartItems.innerHTML = '<tr><td colspan="4">No items in cart.</td></tr>';
                totalPriceElem.textContent = '0.00';
                return;
            }

            for (const [name, { quantity, price, total }] of Object.entries(cart)) {
                cartItems.innerHTML += `
                    <tr>
                        <td>${name}</td>
                        <td>${quantity}</td>
                        <td>LKR ${price.toFixed(2)}</td>
                        <td>LKR ${total.toFixed(2)}</td>
                    </tr>
                `;
                totalPrice += total;
            }

            totalPriceElem.textContent = totalPrice.toFixed(2);
        }

        window.onload = function() {
            displayCart(); // Display the cart items on page load
            generateCartForm(); // Generate the hidden form inputs on page load
        };
        
        function calculateTotal(cart) {
            return cart.reduce((total, item) => total + item.price * item.quantity, 0);
        }
    </script>
</body>
</html>
