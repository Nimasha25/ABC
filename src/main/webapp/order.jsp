<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Online - ABC Restaurant</title>
    <link rel="stylesheet" href="styles.css">
    
    <style>
    /* Sidebar styles */
.sidebar {
    position: fixed;
    right: 0; /* Place on the right side */
    top: 0;
    width: 60px; /* Start with a small width */
    height: 100%;
    background-color: #ffffff; /* White background */
    overflow-x: hidden;
    transition: width 0.3s ease; /* Smooth transition */
    border-left: 1px solid #ddd; /* Optional border for separation */
    box-shadow: 2px 0 5px rgba(0,0,0,0.1); /* Optional shadow for better visibility */
}


.sidebar:hover {
    width: 250px;
}

/* Style the links and icons */
.sidebar a {
    display: block;
    color: #333; /* Dark text color for contrast */
    padding: 16px;
    text-decoration: none;
    white-space: nowrap; /* Prevent text from wrapping */
    opacity: 0; /* Initially hide the text */
    transition: opacity 0.3s ease; /* Smooth transition for text appearance */
}

/* Show the text on hover */
.sidebar:hover a {
    opacity: 1; /* Show the text on hover */
}

/* Icon styling */
.sidebar a i {
    margin-right: 10px;
}

/* Adjust heading for better visibility */
.sidebar h2 {
    font-size: 1.2rem;
    padding: 20px 16px;
    margin: 0;
    text-align: center;
    transition: opacity 0.3s ease;
    opacity: 0; /* Initially hide the heading text */
}

.sidebar:hover h2 {
    opacity: 1; /* Show the heading text on hover */
}
    
    
        body {
            font-family: 'Helvetica Neue', Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
            background-color: #f8f9fa;
            background-image: url('images/back3.png');

    background-size: cover; /* Makes sure the image covers the entire body */
    background-repeat: no-repeat; /* Prevents the image from repeating */
    background-position: center; /* Centers the image on the page */
    background-attachment: fixed; 
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
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 8px;
    background-color: #f9f9f9;
    margin-bottom: 20px;
    text-align: center;
}

#cart p {
    font-size: 18px;
    color: #87CEEB; /* Grey color for text */
}


        #total-price {
            font-size: 22px;
            font-weight: bold;
            color: #FFFFFF;
           
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
       .promotions {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
    text-align: center;
}

.promotion-item {
    display: none; /* Hide all promotions by default */
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 8px;
    background-color: #f9f9f9;
    margin-bottom: 20px;
}

.promotion-item.active {
    display: block; /* Show only the active promotion */
}

h2 {
    font-size: 28px;
    color: #007bff; /* Blue color */
    margin-bottom: 20px;
}

h3 {
    font-size: 22px;
    color: #333; /* Darker color */
}

.discount {
    font-weight: bold;
    color: #ff0000; /* Red color for discount */
}

.expiry {
    font-style: italic;
    color: #666; /* Grey color for expiry date */
}

.pagination {
    margin-top: 20px;
}

.pagination button {
    background-color: #007bff; /* Blue color */
    border: none;
    color: white;
    padding: 10px 20px;
    font-size: 16px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    margin: 0 10px;
}

.pagination button:hover {
    background-color: #0056b3; /* Darker blue color on hover */
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
        <h1>Order Your Favorite Food</h1>
    </div>
    
    <!-- Sidebar -->
<div class="sidebar">
    <h2 class="text-center">Customer Panel</h2>
    <a href="<c:url value='/customer/orders' />"><i class="fas fa-shopping-cart"></i> Orders</a>
<a href="<c:url value='/customer/messages' />"><i class="fas fa-inbox"></i> Messages</a>
<a href="<c:url value='/customer/profile' />"><i class="fas fa-user"></i> My Profile</a>
<a href="<c:url value='/customer/settings' />"><i class="fas fa-cogs"></i> Settings</a>
<a href="<c:url value='/logout' />"><i class="fas fa-sign-out-alt"></i> Logout</a>

</div>
    
    
    
   <div class="promotions">
    <h2>Special Promotions</h2>
    <div class="promotion-item" id="promotion-1">
        <h3>20% Off on All Orders!</h3>
        <p class="discount">Save 20% on your total bill.</p>
        <p class="expiry">Expires: 31st August 2024</p>
    </div>
    <div class="promotion-item" id="promotion-2">
        <h3>Combo Deal: Buy 1 Get 1 Free</h3>
        <p>Buy one of our special combo meals and get another one free!</p>
        <p class="expiry">Expires: 15th September 2024</p>
    </div>
    <div class="promotion-item" id="promotion-3">
        <h3>Family Pack Special</h3>
        <p>Enjoy a special family pack with 50% off on your second meal.</p>
        <p class="expiry">Expires: 30th September 2024</p>
    </div>
    <div class="promotion-item" id="promotion-4">
        <h3>Combo Packs</h3>
        <p>Get our exclusive combo packs at a discounted rate. Perfect for parties and gatherings!</p>
        <p class="expiry">Expires: 10th October 2024</p>
    </div>
    <div class="promotion-item" id="promotion-5">
        <h3>Happy Hour: 25% Off</h3>
        <p>Enjoy 25% off on all orders between 4 PM and 6 PM.</p>
        <p class="expiry">Expires: 31st August 2024</p>
    </div>
    <div class="promotion-item" id="promotion-6">
        <h3>Student Discount: 15% Off</h3>
        <p>Show your student ID to receive a 15% discount on your meal.</p>
        <p class="expiry">Expires: 31st October 2024</p>
    </div>
    <div class="promotion-item" id="promotion-7">
        <h3>Weekend Special: Buy 2 Get 1 Free</h3>
        <p>On weekends, buy two meals and get the third one free!</p>
        <p class="expiry">Expires: 30th November 2024</p>
    </div>
    <div class="promotion-item" id="promotion-8">
        <h3>Free Dessert with Every Meal</h3>
        <p>Enjoy a free dessert with every meal purchased. Choose from our selection of desserts!</p>
        <p class="expiry">Expires: 31st December 2024</p>
    </div>
    <div class="promotion-item" id="promotion-9">
        <h3>Loyalty Program: Earn Double Points</h3>
        <p>Earn double loyalty points on all orders for a limited time.</p>
        <p class="expiry">Expires: 15th September 2024</p>
    </div>
    <div class="pagination">
        <button class="prev" onclick="changePromotion(-1)">Previous</button>
        <button class="next" onclick="changePromotion(1)">Next</button>
    </div>
</div>



 <div class="container">
    <div class="menu-items">
        <!-- Existing Items -->
        <div class="food-item" data-name="Chicken Biryani" data-price="1200">
            <img src="images/Chicken-Biryani.png" alt="Chicken Biryani">
            <div class="food-details">
                <h3>Chicken Biryani</h3>
                <p>Price: LKR 1200.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="Seafood Platter" data-price="1500">
            <img src="images/seafood-platter.png" alt="Seafood Platter">
            <div class="food-details">
                <h3>Seafood Platter</h3>
                <p>Price: LKR 1500.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="Vegetable Fried Rice" data-price="800">
            <img src="images/vege-friedrice.png" alt="Vegetable Fried Rice">
            <div class="food-details">
                <h3>Vegetable Fried Rice</h3>
                <p>Price: LKR 800.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="Beef Steak" data-price="1000">
            <img src="images/beef-steak.png" alt="Beef Steak">
            <div class="food-details">
                <h3>Beef Steak</h3>
                <p>Price: LKR 1000.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="Spaghetti Carbonara" data-price="950">
            <img src="images/spaggeti-carbonara.png" alt="Spaghetti Carbonara">
            <div class="food-details">
                <h3>Spaghetti Carbonara</h3>
                <p>Price: LKR 950.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="Chicken Parmesan" data-price="1100">
            <img src="images/chicken-paramasen.png" alt="Chicken Parmesan">
            <div class="food-details">
                <h3>Chicken Parmesan</h3>
                <p>Price: LKR 1100.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="Mushroom Soup" data-price="850">
            <img src="images/mushroom-soup.png" alt="Mushroom Soup">
            <div class="food-details">
                <h3>Mushroom Soup</h3>
                <p>Price: LKR 850.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="Caesar Salad" data-price="950">
            <img src="images/caeser-salad.png" alt="Caesar Salad">
            <div class="food-details">
                <h3>Caesar Salad</h3>
                <p>Price: LKR 950.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="Vegetable Curry" data-price="900">
            <img src="images/vege-curry.png" alt="Vegetable Curry">
            <div class="food-details">
                <h3>Vegetable Curry</h3>
                <p>Price: LKR 900.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="Roast Chicken" data-price="1050">
            <img src="images/roast-curry.png" alt="Roast Chicken">
            <div class="food-details">
                <h3>Roast Chicken</h3>
                <p>Price: LKR 1050.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="Cheeseburger" data-price="850">
            <img src="images/cheese_burger.png" alt="Cheeseburger">
            <div class="food-details">
                <h3>Cheeseburger</h3>
                <p>Price: LKR 850.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="Tandoori Chicken" data-price="950">
            <img src="images/Tandoori-Chicken.png" alt="Tandoori Chicken">
            <div class="food-details">
                <h3>Tandoori Chicken</h3>
                <p>Price: LKR 950.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>

        <!-- New Items -->
        <div class="food-item" data-name="Lamb Curry" data-price="1150">
            <img src="images/lamb-curry.png" alt="Lamb Curry">
            <div class="food-details">
                <h3>Lamb Curry</h3>
                <p>Price: LKR 1150.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="Prawn Tempura" data-price="1300">
            <img src="images/prawun-tempura.png" alt="Prawn Tempura">
            <div class="food-details">
                <h3>Prawn Tempura</h3>
                <p>Price: LKR 1300.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="BBQ Ribs" data-price="1400">
            <img src="images/bbq-ribs.png" alt="BBQ Ribs">
            <div class="food-details">
                <h3>BBQ Ribs</h3>
                <p>Price: LKR 1400.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="Grilled Salmon" data-price="1600">
            <img src="images/grilled-salmon.png" alt="Grilled Salmon">
            <div class="food-details">
                <h3>Grilled Salmon</h3>
                <p>Price: LKR 1600.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="Falafel Wrap" data-price="700">
            <img src="images/falafel-wrap.png" alt="Falafel Wrap">
            <div class="food-details">
                <h3>Falafel Wrap</h3>
                <p>Price: LKR 700.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="Beef Stroganoff" data-price="1250">
            <img src="images/beef-stangoff.png" alt="Beef Stroganoff">
            <div class="food-details">
                <h3>Beef Stroganoff</h3>
                <p>Price: LKR 1250.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="Chicken Caesar Wrap" data-price="850">
            <img src="images/chicken-caesar-wrap.png" alt="Chicken Caesar Wrap">
            <div class="food-details">
                <h3>Chicken Caesar Wrap</h3>
                <p>Price: LKR 850.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="Pol Sambol and Bread" data-price="350">
    <img src="images/pol-sambol-bread.png" alt="Pol Sambol and Bread">
    <div class="food-details">
        <h3>Pol Sambol and Bread</h3>
        <p>Price: LKR 350.00</p>
        <input type="number" class="quantity-bar" value="1" min="1">
    </div>
    <button class="add-to-cart">Add to Cart</button>
</div>

<div class="food-item" data-name="Kottu" data-price="700">
    <img src="images/kottu.png" alt="Kottu">
    <div class="food-details">
        <h3>Kottu</h3>
        <p>Price: LKR 700.00</p>
        <input type="number" class="quantity-bar" value="1" min="1">
    </div>
    <button class="add-to-cart">Add to Cart</button>
</div>

<div class="food-item" data-name="Sri Lankan Rice and Curry" data-price="850">
    <img src="images/rice-and-curry.png" alt="Sri Lankan Rice and Curry">
    <div class="food-details">
        <h3>Sri Lankan Rice and Curry</h3>
        <p>Price: LKR 850.00</p>
        <input type="number" class="quantity-bar" value="1" min="1">
    </div>
    <button class="add-to-cart">Add to Cart</button>
</div>

<div class="food-item" data-name="Hoppers" data-price="300">
    <img src="images/hoppers.png" alt="Hoppers">
    <div class="food-details">
        <h3>Hoppers</h3>
        <p>Price: LKR 300.00</p>
        <input type="number" class="quantity-bar" value="1" min="1">
    </div>
    <button class="add-to-cart">Add to Cart</button>
</div>

<div class="food-item" data-name="Bibimbap" data-price="950">
    <img src="images/bibimbap.png" alt="Bibimbap">
    <div class="food-details">
        <h3>Bibimbap</h3>
        <p>Price: LKR 950.00</p>
        <input type="number" class="quantity-bar" value="1" min="1">
    </div>
    <button class="add-to-cart">Add to Cart</button>
</div>

<div class="food-item" data-name="Fish Curry" data-price="1200">
    <img src="images/fish-curry.png" alt="Fish Curry">
    <div class="food-details">
        <h3>Fish Curry</h3>
        <p>Price: LKR 1200.00</p>
        <input type="number" class="quantity-bar" value="1" min="1">
    </div>
    <button class="add-to-cart">Add to Cart</button>
</div>

<div class="food-item" data-name="Vegetable Roti" data-price="250">
    <img src="images/vegetable-roti.png" alt="Vegetable Roti">
    <div class="food-details">
        <h3>Vegetable Roti</h3>
        <p>Price: LKR 250.00</p>
        <input type="number" class="quantity-bar" value="1" min="1">
    </div>
    <button class="add-to-cart">Add to Cart</button>
</div>

<div class="food-item" data-name="Chicken Fried Rice" data-price="900">
    <img src="images/chicken-friedrice.png" alt="Chicken Fried Rice">
    <div class="food-details">
        <h3>Chicken Fried Rice</h3>
        <p>Price: LKR 900.00</p>
        <input type="number" class="quantity-bar" value="1" min="1">
    </div>
    <button class="add-to-cart">Add to Cart</button>
</div>
        

        <!-- Additional New Items -->
        <div class="food-item" data-name="Lamb Curry" data-price="1150">
            <img src="images/lamb-curry.png" alt="Lamb Curry">
            <div class="food-details">
                <h3>Lamb Curry</h3>
                <p>Price: LKR 1150.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="Prawn Tempura" data-price="1300">
            <img src="images/prawun-tempura.png" alt="Prawn Tempura">
            <div class="food-details">
                <h3>Prawn Tempura</h3>
                <p>Price: LKR 1300.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="BBQ Ribs" data-price="1400">
            <img src="images/bbq-ribs.png" alt="BBQ Ribs">
            <div class="food-details">
                <h3>BBQ Ribs</h3>
                <p>Price: LKR 1400.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="Grilled Salmon" data-price="1600">
            <img src="images/grilled-salmon.png" alt="Grilled Salmon">
            <div class="food-details">
                <h3>Grilled Salmon</h3>
                <p>Price: LKR 1600.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="Falafel Wrap" data-price="700">
            <img src="images/falafel-wrap.png" alt="Falafel Wrap">
            <div class="food-details">
                <h3>Falafel Wrap</h3>
                <p>Price: LKR 700.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="Quiche Lorraine" data-price="950">
            <img src="images/quiche-lorraine.png" alt="Quiche Lorraine">
            <div class="food-details">
                <h3>Quiche Lorraine</h3>
                <p>Price: LKR 950.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="Stuffed Bell Peppers" data-price="850">
            <img src="images/stuffed-bell-peppers.png" alt="Stuffed Bell Peppers">
            <div class="food-details">
                <h3>Stuffed Bell Peppers</h3>
                <p>Price: LKR 850.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="Pasta Primavera" data-price="900">
            <img src="images/pasta-primavera.png" alt="Pasta Primavera">
            <div class="food-details">
                <h3>Pasta Primavera</h3>
                <p>Price: LKR 900.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
         <div class="food-item" data-name="Mutton Rogan Josh" data-price="1350">
            <img src="images/mutton-rogan.png" alt="Mutton Rogan Josh">
            <div class="food-details">
                <h3>Mutton Rogan Josh</h3>
                <p>Price: LKR 1350.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="food-item" data-name="Vegetarian Lasagna" data-price="1100">
            <img src="images/vege-lazangya.png" alt="Vegetarian Lasagna">
            <div class="food-details">
                <h3>Vegetarian Lasagna</h3>
                <p>Price: LKR 1100.00</p>
                <input type="number" class="quantity-bar" value="1" min="1">
            </div>
            <button class="add-to-cart">Add to Cart</button>
        </div>
   <div class="food-item" data-name="Fish Ambul Thiyal" data-price="1100">
    <img src="images/fish-ambul-thiyal.png" alt="Fish Ambul Thiyal">
    <div class="food-details">
        <h3>Fish Ambul Thiyal</h3>
        <p>Price: LKR 1100.00</p>
        <input type="number" class="quantity-bar" value="1" min="1">
    </div>
    <button class="add-to-cart">Add to Cart</button>
</div>
<div class="food-item" data-name="String Hoppers" data-price="350">
    <img src="images/string-hoppers.png" alt="String Hoppers">
    <div class="food-details">
        <h3>String Hoppers</h3>
        <p>Price: LKR 350.00</p>
        <input type="number" class="quantity-bar" value="1" min="1">
    </div>
    <button class="add-to-cart">Add to Cart</button>
</div>
<div class="food-item" data-name="milk rice" data-price="250">
    <img src="images/milk rice.jpg" alt="milk rice">
    <div class="food-details">
        <h3>Milk Rice</h3>
        <p>Price: LKR 250.00</p>
        <input type="number" class="quantity-bar" value="1" min="1">
    </div>
    <button class="add-to-cart">Add to Cart</button>
</div>
<div class="food-item" data-name="dosai" data-price="250">
    <img src="images/dosai.png" alt="dosai">
    <div class="food-details">
        <h3>Dosai </h3>
        <p>Price: LKR 250.00</p>
        <input type="number" class="quantity-bar" value="1" min="1">
    </div>
    <button class="add-to-cart">Add to Cart</button>
</div>
<div class="food-item" data-name="pizza" data-price="1000">
    <img src="images/pizza.png" alt="pizza">
    <div class="food-details">
        <h3>Pizza </h3>
        <p>Price: LKR 1000.00</p>
        <input type="number" class="quantity-bar" value="1" min="1">
    </div>
    <button class="add-to-cart">Add to Cart</button>
</div>
<div class="food-item" data-name="pittu" data-price="400">
    <img src="images/pittu.png" alt="pittu">
    <div class="food-details">
        <h3>Pittu </h3>
        <p>Price: LKR 400.00</p>
        <input type="number" class="quantity-bar" value="1" min="1">
    </div>
    <button class="add-to-cart">Add to Cart</button>
</div>
<div class="food-item" data-name="boba" data-price="1400">
    <img src="images/boba.png" alt="boba">
    <div class="food-details">
        <h3>Bubble Tea </h3>
        <p>Price: LKR 1400.00</p>
        <input type="number" class="quantity-bar" value="1" min="1">
    </div>
    <button class="add-to-cart">Add to Cart</button>
</div>
    </div>
</div>
        
        
   
    

        <h2>Your Cart</h2>
        <div id="cart">
            <p>No items in cart.</p>
        </div>
        <h3>Total: LKR <span id="total-price">0.00</span></h3>
        <button id="checkout" onclick="window.location.href='cart.jsp'">Checkout</button>

   

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
        let cart = {};
        let totalPrice = 0;

        document.querySelectorAll('.add-to-cart').forEach(button => {
            button.addEventListener('click', () => {
                const foodItem = button.closest('.food-item');
                const name = foodItem.getAttribute('data-name');
                const price = parseFloat(foodItem.getAttribute('data-price'));
                const quantity = parseInt(foodItem.querySelector('.quantity-bar').value);

                if (cart[name]) {
                    cart[name].quantity += quantity;
                    cart[name].total += price * quantity;
                } else {
                    cart[name] = {
                        price: price,
                        quantity: quantity,
                        total: price * quantity
                    };
                }

                localStorage.setItem('cart', JSON.stringify(cart));
                updateCart();
            });
        });

        function updateCart() {
            const cartData = JSON.parse(localStorage.getItem('cart')) || {};
            const cartDiv = document.getElementById('cart');
            cartDiv.innerHTML = '';

            if (Object.keys(cartData).length === 0) {
                cartDiv.innerHTML = '<p>No items in cart.</p>';
                totalPrice = 0;
            } else {
                let cartHTML = '<table border="1"><tr><th>Item</th><th>Quantity</th><th>Price</th><th>Total</th><th>Action</th></tr>';
                totalPrice = 0;

                for (const [name, { quantity, price, total }] of Object.entries(cartData)) {
                    cartHTML += `
                        <tr>
                            <td>${name}</td>
                            <td>${quantity}</td>
                            <td>LKR ${price.toFixed(2)}</td>
                            <td>LKR ${total.toFixed(2)}</td>
                            <td><button onclick="removeItem('${name}')">Remove</button></td>
                        </tr>
                    `;
                    totalPrice += total;
                }

                cartHTML += '</table>';
                cartDiv.innerHTML = cartHTML;
            }

            document.getElementById('total-price').textContent = totalPrice.toFixed(2);
        }

        function removeItem(name) {
            const cartData = JSON.parse(localStorage.getItem('cart')) || {};
            delete cartData[name];
            localStorage.setItem('cart', JSON.stringify(cartData));
            updateCart();
        }

        updateCart(); // Initialize cart on page load
    </script>
    <script>
    let currentPromotionIndex = 1;
    const totalPromotions = document.querySelectorAll('.promotion-item').length;

    function showPromotion(index) {
        document.querySelectorAll('.promotion-item').forEach((item, i) => {
            item.classList.toggle('active', i + 1 === index);
        });
    }

    function changePromotion(step) {
        currentPromotionIndex += step;
        if (currentPromotionIndex < 1) currentPromotionIndex = totalPromotions;
        if (currentPromotionIndex > totalPromotions) currentPromotionIndex = 1;
        showPromotion(currentPromotionIndex);
    }

    // Initialize the first promotion as visible
    showPromotion(currentPromotionIndex);
</script>

<script>
    let currentPromotion = 0;
    const promotions = document.querySelectorAll('.promotion-item');
    
    function showPromotion(index) {
        promotions.forEach((promo, i) => {
            promo.classList.toggle('active', i === index);
        });
    }

    function changePromotion(direction) {
        currentPromotion += direction;
        if (currentPromotion < 0) {
            currentPromotion = promotions.length - 1;
        } else if (currentPromotion >= promotions.length) {
            currentPromotion = 0;
        }
        showPromotion(currentPromotion);
    }

    document.querySelector('.prev').addEventListener('click', () => changePromotion(-1));
    document.querySelector('.next').addEventListener('click', () => changePromotion(1));

    // Initialize the first promotion
    showPromotion(currentPromotion);
</script>

    
</body>
</html>
