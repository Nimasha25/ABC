<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Online - ABC Restaurant</title>
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
            padding: 40px 20px;
            background-color: #fff;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            margin: 20px 0;
        }

        .container h1 {
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
            gap: 20px;
        }

        .food-item {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 250px;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 15px;
            background-color: #f8f9fa;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .food-item img {
            width: 100%;
            height: auto;
            border-radius: 8px;
        }

        .food-details {
            text-align: center;
            margin: 15px 0;
        }

        .food-details h3 {
            margin: 0;
            font-size: 24px;
            color: #333;
        }

        .food-details p {
            margin: 5px 0;
            font-size: 18px;
            color: #777;
        }

        .quantity-bar {
            width: 50px;
            padding: 5px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            text-align: center;
            margin-top: 10px;
        }

        .add-to-cart {
            background-color: #007bff;
            border: none;
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            margin-top: 10px;
        }

        .add-to-cart:hover {
            background-color: #0056b3;
        }

        #cart {
            margin-top: 30px;
        }

        #cart p {
            font-size: 18px;
            color: #333;
        }

        #total-price {
            font-size: 22px;
            font-weight: bold;
            color: #007bff;
        }

        #checkout {
            background-color: #28a745;
            border: none;
            color: white;
            padding: 15px 30px;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            margin-top: 20px;
        }

        #checkout:hover {
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
        .promotions {
            background-color: #e9ecef;
            padding: 40px 20px;
            margin: 20px 0;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .promotions h2 {
            font-size: 28px;
            font-weight: bold;
            color: #007bff;
            margin-bottom: 30px;
        }

        .promotion-item {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .promotion-item h3 {
            margin: 0;
            font-size: 24px;
            color: #333;
        }

        .promotion-item p {
            font-size: 18px;
            color: #777;
        }

        .promotion-item .discount {
            font-size: 22px;
            font-weight: bold;
            color: #28a745;
        }

        .promotion-item .expiry {
            font-size: 16px;
            color: #dc3545;
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
        <img src="images/logo.png" alt="ABC Restaurant Logo" class="logo">
        <h1>Order Your Favorite Food</h1>
    </div>
    
    <div class="promotions">
        <h2>Special Promotions</h2>
        <!-- Example promotion -->
        <div class="promotion-item">
            <h3>20% Off on All Orders!</h3>
            <p class="discount">Save 20% on your total bill.</p>
            <p class="expiry">Expires: 31st August 2024</p>
        </div>
        <div class="promotion-item">
            <h3>Combo Deal: Buy 1 Get 1 Free</h3>
            <p>Buy one of our special combo meals and get another one free!</p>
            <p class="expiry">Expires: 15th September 2024</p>
        </div>
        
    </div>

    <div class="container">
        <h1>Order Your Favorite Food</h1>
        <div class="menu-items">
            <div class="food-item" data-price="1200">
                <img src="images/chicken-biryani.jpg" alt="Chicken Biryani">
                <div class="food-details">
                    <h3>Chicken Biryani</h3>
                    <p>Price: LKR 1200.00</p>
                    <input type="number" class="quantity-bar" value="1" min="1">
                </div>
                <button class="add-to-cart">Add to Cart</button>
            </div>
            <div class="food-item" data-price="1500">
                <img src="images/seafood-platter.jpg" alt="Seafood Platter">
                <div class="food-details">
                    <h3>Seafood Platter</h3>
                    <p>Price: LKR 1500.00</p>
                    <input type="number" class="quantity-bar" value="1" min="1">
                </div>
                <button class="add-to-cart">Add to Cart</button>
            </div>
            <div class="food-item" data-price="800">
                <img src="images/vegetable-fried-rice.jpg" alt="Vegetable Fried Rice">
                <div class="food-details">
                    <h3>Vegetable Fried Rice</h3>
                    <p>Price: LKR 800.00</p>
                    <input type="number" class="quantity-bar" value="1" min="1">
                </div>
                <button class="add-to-cart">Add to Cart</button>
            </div>
             <div class="food-item" data-price="1200">
                <img src="images/chicken-biryani.jpg" alt="Chicken Biryani">
                <div class="food-details">
                    <h3>Chicken Biryani</h3>
                    <p>Price: LKR 1200.00</p>
                    <input type="number" class="quantity-bar" value="1" min="1">
                </div>
                <button class="add-to-cart">Add to Cart</button>
            </div>
            <div class="food-item" data-price="1500">
                <img src="images/seafood-platter.jpg" alt="Seafood Platter">
                <div class="food-details">
                    <h3>Seafood Platter</h3>
                    <p>Price: LKR 1500.00</p>
                    <input type="number" class="quantity-bar" value="1" min="1">
                </div>
                <button class="add-to-cart">Add to Cart</button>
            </div>
            <div class="food-item" data-price="800">
                <img src="images/vegetable-fried-rice.jpg" alt="Vegetable Fried Rice">
                <div class="food-details">
                    <h3>Vegetable Fried Rice</h3>
                    <p>Price: LKR 800.00</p>
                    <input type="number" class="quantity-bar" value="1" min="1">
                </div>
                <button class="add-to-cart">Add to Cart</button>
            </div>
            <!-- Additional Food Items -->
            <div class="food-item" data-price="1000">
                <img src="images/beef-steak.jpg" alt="Beef Steak">
                <div class="food-details">
                    <h3>Beef Steak</h3>
                    <p>Price: LKR 1000.00</p>
                    <input type="number" class="quantity-bar" value="1" min="1">
                </div>
                <button class="add-to-cart">Add to Cart</button>
            </div>
            <div class="food-item" data-price="950">
                <img src="images/spaghetti-carbonara.jpg" alt="Spaghetti Carbonara">
                <div class="food-details">
                    <h3>Spaghetti Carbonara</h3>
                    <p>Price: LKR 950.00</p>
                    <input type="number" class="quantity-bar" value="1" min="1">
                </div>
                <button class="add-to-cart">Add to Cart</button>
            </div>
            <div class="food-item" data-price="1100">
                <img src="images/chicken-parmesan.jpg" alt="Chicken Parmesan">
                <div class="food-details">
                    <h3>Chicken Parmesan</h3>
                    <p>Price: LKR 1100.00</p>
                    <input type="number" class="quantity-bar" value="1" min="1">
                </div>
                <button class="add-to-cart">Add to Cart</button>
            </div>
            <div class="food-item" data-price="850">
                <img src="images/mushroom-soup.jpg" alt="Mushroom Soup">
                <div class="food-details">
                    <h3>Mushroom Soup</h3>
                    <p>Price: LKR 850.00</p>
                    <input type="number" class="quantity-bar" value="1" min="1">
                </div>
                <button class="add-to-cart">Add to Cart</button>
            </div>
            <div class="food-item" data-price="950">
                <img src="images/caesar-salad.jpg" alt="Caesar Salad">
                <div class="food-details">
                    <h3>Caesar Salad</h3>
                    <p>Price: LKR 950.00</p>
                    <input type="number" class="quantity-bar" value="1" min="1">
                </div>
                <button class="add-to-cart">Add to Cart</button>
            </div>
            <div class="food-item" data-price="900">
                <img src="images/vegetable-curry.jpg" alt="Vegetable Curry">
                <div class="food-details">
                    <h3>Vegetable Curry</h3>
                    <p>Price: LKR 900.00</p>
                    <input type="number" class="quantity-bar" value="1" min="1">
                </div>
                <button class="add-to-cart">Add to Cart</button>
            </div>
            <div class="food-item" data-price="1050">
                <img src="images/roast-chicken.jpg" alt="Roast Chicken">
                <div class="food-details">
                    <h3>Roast Chicken</h3>
                    <p>Price: LKR 1050.00</p>
                    <input type="number" class="quantity-bar" value="1" min="1">
                </div>
                <button class="add-to-cart">Add to Cart</button>
            </div>
            <div class="food-item" data-price="850">
                <img src="images/cheeseburger.jpg" alt="Cheeseburger">
                <div class="food-details">
                    <h3>Cheese-burger</h3>
                    <p>Price: LKR 850.00</p>
                    <input type="number" class="quantity-bar" value="1" min="1">
                </div>
                <button class="add-to-cart">Add to Cart</button>
            </div>
            <div class="food-item" data-price="950">
                <img src="images/tandoori-chicken.jpg" alt="Tandoori Chicken">
                <div class="food-details">
                    <h3>Tandoori Chicken</h3>
                    <p>Price: LKR 950.00</p>
                    <input type="number" class="quantity-bar" value="1" min="1">
                </div>
                <button class="add-to-cart">Add to Cart</button>
            </div>
        </div>

        

        <h2>Your Cart</h2>
        <div id="cart">
            <p>No items in cart.</p>
        </div>
        <h3>Total: LKR <span id="total-price">0.00</span></h3>
        <button id="checkout" onclick="window.location.href='payment.jsp'">Checkout</button>

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
        document.addEventListener('DOMContentLoaded', () => {
            const cart = [];
            const cartElement = document.getElementById('cart');
            const totalPriceElement = document.getElementById('total-price');

            document.querySelectorAll('.add-to-cart').forEach(button => {
                button.addEventListener('click', (event) => {
                    const foodItem = event.target.parentElement;
                    const foodName = foodItem.querySelector('h3').innerText;
                    const foodPrice = parseFloat(foodItem.getAttribute('data-price'));
                    const quantity = parseInt(foodItem.querySelector('.quantity-bar').value);

                    const cartItem = cart.find(item => item.name === foodName);
                    if (cartItem) {
                        cartItem.quantity += quantity;
                    } else {
                        cart.push({ name: foodName, price: foodPrice, quantity: quantity });
                    }
                    updateCart();
                });
            });

            function updateCart() {
                if (cart.length === 0) {
                    cartElement.innerHTML = '<p>No items in cart.</p>';
                } else {
                    cartElement.innerHTML = '';
                    let total = 0;
                    cart.forEach((item) => {
                        total += item.price * item.quantity;
                        cartElement.innerHTML += `<p>${item.name} (x${item.quantity}) - LKR ${(item.price * item.quantity).toFixed(2)}</p>`;
                    });
                    totalPriceElement.innerText = total.toFixed(2);
                }
            }
        });
    </script>
</body>
</html>
