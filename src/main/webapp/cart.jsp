<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart - ABC Restaurant</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: 'Helvetica Neue', Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
            background-color: #f8f9fa;
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

        .container {
            width: 80%;
            margin: 20px auto;
        }

        .cart-item {
            display: flex;
            justify-content: space-between;
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        .cart-item h3 {
            margin: 0;
        }

        .cart-item input {
            width: 50px;
            text-align: center;
            padding: 5px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .cart-item button {
            background-color: #dc3545;
            border: none;
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .cart-item button:hover {
            background-color: #c82333;
        }

        .total {
            text-align: right;
            font-size: 20px;
            margin: 20px 0;
        }

        .checkout {
            background-color: #28a745;
            border: none;
            color: white;
            padding: 15px 30px;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            display: block;
            margin: 20px auto;
        }

        .checkout:hover {
            background-color: #218838;
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
        <a href="Gallery.jsp">Gallery</a>
        <a href="Contact.jsp">Contact</a>
        <a href="menu.jsp">Menu</a>
        <a href="reservation.jsp">Reservation</a>
        <a href="order.jsp" style="float: right;">Order Online</a>
        <a href="cart.jsp" style="float: right; margin-right: 20px;">Cart</a>
    </div>

    <div class="header">
        <img src="images/logo.png" alt="ABC Restaurant Logo" class="logo">
        <h1>Your Cart</h1>
    </div>

    <div class="container">
        <!-- Cart items will be inserted here dynamically -->
        <div id="cart-items">
           
           
        </div>

        <div class="total">
            Total: LKR <span id="total-price">0.00</span>
        </div>

        <button class="checkout" onclick="window.location.href='payment.jsp'">Proceed to Checkout</button>
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

   <script>
    document.addEventListener('DOMContentLoaded', function () {
        const cart = [];
        const cartDisplay = document.getElementById('cart');
        const totalPriceElement = document.getElementById('total-price');

        document.querySelectorAll('.add-to-cart').forEach(button => {
            button.addEventListener('click', function () {
                const foodItem = this.closest('.food-item');
                const price = parseFloat(foodItem.dataset.price);
                const quantity = parseInt(foodItem.querySelector('.quantity-bar').value);

                const item = cart.find(i => i.foodItem === foodItem);
                if (item) {
                    item.quantity += quantity;
                } else {
                    cart.push({ foodItem, price, quantity });
                }

                updateCart();
            });
        });

        function updateCart() {
            let total = 0;
            cart.forEach(item => {
                total += item.price * item.quantity;
            });

            cartDisplay.innerHTML = `<p>Items in Cart: ${cart.length}</p><p id="total-price">Total Price: LKR ${total.toFixed(2)}</p>`;
        }
    });
</script>

</body>
</html>
