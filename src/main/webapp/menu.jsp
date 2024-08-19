<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Menu</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .menu-container {
            width: 80%;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            background-color: #ff6600;
            color: #fff;
            padding: 10px;
            text-align: center;
            border-radius: 5px;
            margin-bottom: 20px;
        }
        .menu-section {
            margin-bottom: 40px;
        }
        .menu-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            background-color: #f9f9f9;
            padding: 15px;
            border-radius: 5px;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1);
        }
        .menu-item img {
            width: 100px;
            height: 100px;
            border-radius: 5px;
            object-fit: cover;
        }
        .menu-item-details {
            flex-grow: 1;
            margin-left: 20px;
        }
        .menu-item-details h3 {
            margin: 0 0 10px 0;
            font-size: 1.2em;
        }
        .menu-item-details p {
            margin: 0;
            font-size: 0.9em;
            color: #555;
        }
        .menu-item-price {
            font-size: 1.2em;
            font-weight: bold;
            color: #ff6600;
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
        <a href="Gallery.jsp">Gallery</a>
        <a href="Contact.jsp">Contact</a>
        <a href="menu.jsp">Menu</a>
        <a href="reservation.jsp">Reservation</a>
         <a href="Services.jsp">Services</a>
         
        <a href="order.jsp" style="float: right;">Order Online</a>
        
    </div>

    <div class="header">
        <img src="images/logo.png" alt="ABC Restaurant Logo" class="logo">
        <h1>Savour Our Dishes</h1>
    </div>
    <div class="menu-container">
        <!-- Sri Lankan Cuisine Section -->
        <div class="menu-section">
            <h2>Sri Lankan Cuisine</h2>
            <div class="menu-item">
                <img src="images/sri_lankan_rice_curry.jpg" alt="Sri Lankan Rice & Curry">
                <div class="menu-item-details">
                    <h3>Sri Lankan Rice & Curry</h3>
                    <p>A traditional dish with a variety of curries, including chicken, dhal, and coconut sambol.</p>
                </div>
                <div class="menu-item-price">LKR 750</div>
            </div>
            <div class="menu-item">
                <img src="images/kottu.jpg" alt="Chicken Kottu">
                <div class="menu-item-details">
                    <h3>Chicken Kottu</h3>
                    <p>Stir-fried roti with chicken, vegetables, and spices, a popular Sri Lankan street food.</p>
                </div>
                <div class="menu-item-price">LKR 650</div>
            </div>
            <div class="menu-item">
                <img src="images/hoppers.jpg" alt="Hoppers">
                <div class="menu-item-details">
                    <h3>Hoppers</h3>
                    <p>Delicious bowl-shaped pancakes made from fermented rice flour and coconut milk, served with a range of accompaniments.</p>
                </div>
                <div class="menu-item-price">LKR 300</div>
            </div>
            <div class="menu-item">
                <img src="images/pol_sambol.jpg" alt="Pol Sambol & Roti">
                <div class="menu-item-details">
                    <h3>Pol Sambol & Roti</h3>
                    <p>Flatbread served with freshly grated coconut mixed with chili, onion, and lime.</p>
                </div>
                <div class="menu-item-price">LKR 250</div>
            </div>
        </div>

        <!-- Chinese Cuisine Section -->
        <div class="menu-section">
            <h2>Chinese Cuisine</h2>
            <div class="menu-item">
                <img src="images/kung_pao_chicken.jpg" alt="Kung Pao Chicken">
                <div class="menu-item-details">
                    <h3>Kung Pao Chicken</h3>
                    <p>A spicy stir-fry with tender chicken, peanuts, vegetables, and chili peppers.</p>
                </div>
                <div class="menu-item-price">LKR 1200</div>
            </div>
            <div class="menu-item">
                <img src="images/fried_rice.jpg" alt="Special Fried Rice">
                <div class="menu-item-details">
                    <h3>Special Fried Rice</h3>
                    <p>Fried rice with a mix of seafood, chicken, and vegetables, served with a side of chili paste.</p>
                </div>
                <div class="menu-item-price">LKR 900</div>
            </div>
            <div class="menu-item">
                <img src="images/dim_sum.jpg" alt="Dim Sum">
                <div class="menu-item-details">
                    <h3>Dim Sum</h3>
                    <p>Steamed or fried dumplings filled with a variety of fillings like shrimp, pork, and vegetables.</p>
                </div>
                <div class="menu-item-price">LKR 800</div>
            </div>
            <div class="menu-item">
                <img src="images/szechuan_beef.jpg" alt="Szechuan Beef">
                <div class="menu-item-details">
                    <h3>Szechuan Beef</h3>
                    <p>Stir-fried beef with a bold, spicy Szechuan sauce, served with steamed rice.</p>
                </div>
                <div class="menu-item-price">LKR 1300</div>
            </div>
        </div>

        <!-- Korean Cuisine Section -->
        <div class="menu-section">
            <h2>Korean Cuisine</h2>
            <div class="menu-item">
                <img src="images/bibimbap.jpg" alt="Bibimbap">
                <div class="menu-item-details">
                    <h3>Bibimbap</h3>
                    <p>A mixed rice dish with sautéed vegetables, a fried egg, and marinated beef.</p>
                </div>
                <div class="menu-item-price">LKR 1350</div>
            </div>
            <div class="menu-item">
                <img src="images/korean_bbq.jpg" alt="Korean BBQ">
                <div class="menu-item-details">
                    <h3>Korean BBQ</h3>
                    <p>Grilled marinated beef, served with rice, kimchi, and a variety of side dishes.</p>
                </div>
                <div class="menu-item-price">LKR 1800</div>
            </div>
            <div class="menu-item">
                <img src="images/kimchi.jpg" alt="Kimchi">
                <div class="menu-item-details">
                    <h3>Kimchi</h3>
                    <p>Traditional Korean fermented vegetables, usually cabbage and radishes, seasoned with chili, garlic, and ginger.</p>
                </div>
                <div class="menu-item-price">LKR 300</div>
            </div>
            <div class="menu-item">
                <img src="images/tteokbokki.jpg" alt="Tteokbokki">
                <div class="menu-item-details">
                    <h3>Tteokbokki</h3>
                    <p>Spicy rice cakes stir-fried with fish cakes, boiled eggs, and vegetables.</p>
                </div>
                <div class="menu-item-price">LKR 700</div>
            </div>
        </div>

        <!-- Seafood Section -->
        <div class="menu-section">
            <h2>Seafood</h2>
            <div class="menu-item">
                <img src="images/seafood_platter.jpg" alt="Seafood Platter">
                <div class="menu-item-details">
                    <h3>Seafood Platter</h3>
                    <p>A lavish assortment of grilled prawns, calamari, and fish fillet.</p>
                </div>
                <div class="menu-item-price">LKR 2000</div>
            </div>
            <div class="menu-item">
                <img src="images/grilled_salmon.jpg" alt="Grilled Salmon">
                <div class="menu-item-details">
                    <h3>Grilled Salmon</h3>
                    <p>Fresh salmon fillet grilled to perfection, served with lemon butter sauce.</p>
                </div>
                <div class="menu-item-price">LKR 2200</div>
            </div>
            <div class="menu-item">
                <img src="images/lobster.jpg" alt="Lobster Thermidor">
                <div class="menu-item-details">
                    <h3>Lobster Thermidor</h3>
                    <p>Lobster meat cooked with mustard, egg yolks, and brandy, stuffed back into the lobster shell.</p>
                </div>
                <div class="menu-item-price">LKR 4500</div>
            </div>
            <div class="menu-item">
                <img src="images/prawn_curry.jpg" alt="Prawn Curry">
                <div class="menu-item-details">
                    <h3>Prawn Curry</h3>
                    <p>Aromatic prawn curry cooked in a spicy coconut milk gravy.</p>
                </div>
                <div class="menu-item-price">LKR 1500</div>
            </div>
        </div>

        <!-- Desserts Section -->
        <div class="menu-section">
            <h2>Desserts</h2>
            <div class="menu-item">
                <img src="images/wattalappam.jpg" alt="Wattalappam">
                <div class="menu-item-details">
                    <h3>Watta lappam </h3>
                    <p>Traditional coconut custard pudding sweetened with jaggery and flavored with cardamom.</p>
                </div>
                <div class="menu-item-price">LKR 400</div>
            </div>
            <div class="menu-item">
                <img src="images/ice_cream.jpg" alt="Ice Cream Sundae">
                <div class="menu-item-details">
                    <h3>Ice Cream Sundae</h3>
                    <p>A delightful mix of ice cream, top with chocolate sauce, nuts, and cherries.</p>
                </div>
                <div class="menu-item-price">LKR 350</div>
            </div>
            <div class="menu-item">
                <img src="images/falooda.jpg" alt="Falooda">
                <div class="menu-item-details">
                    <h3>Falooda</h3>
                    <p>A sweet drink with layers of jelly, basil seeds, ice cream, and rose syrup.</p>
                </div>
                <div class="menu-item-price">LKR 300</div>
            </div>
            <div class="menu-item">
                <img src="images/fruit_salad.jpg" alt="Fresh Fruit Salad">
                <div class="menu-item-details">
                    <h3>Fresh Fruit Salad</h3>
                    <p>A healthy mix of seasonal fruits, served with a dash of honey and lime.</p>
                </div>
                <div class="menu-item-price">LKR 250</div>
            </div>
        </div>

        <!-- Beverages/Drink Types Section -->
        <div class="menu-section">
            <h2>Beverages and Drink Types</h2>
            <div class="menu-item">
                <img src="images/king_coconut.jpg" alt="King Coconut">
                <div class="menu-item-details">
                    <h3>King Coconut</h3>
                    <p>Freshly tapped king coconut water, served chilled.</p>
                </div>
                <div class="menu-item-price">LKR 200</div>
            </div>
            <div class="menu-item">
                <img src="images/tea.jpg" alt="Ceylon Tea">
                <div class="menu-item-details">
                    <h3>Ceylon Tea</h3>
                    <p>A rich and aromatic cup of freshly brewed Ceylon tea.</p>
                </div>
                <div class="menu-item-price">LKR 150</div>
            </div>
            <div class="menu-item">
                <img src="images/fruit_juice.jpg" alt="Fresh Fruit Juice">
                <div class="menu-item-details">
                    <h3>Fresh Fruit Juice</h3>
                    <p>Choice of fresh juices: Orange, Pineapple, or Mango.</p>
                </div>
                <div class="menu-item-price">LKR 300</div>
            </div>
            <div class="menu-item">
                <img src="images/smoothie.jpg" alt="Mixed Berry Smoothie">
                <div class="menu-item-details">
                    <h3>Mixed Berry Smoothie</h3>
                    <p>A refreshing smoothie made with a blend of strawberries, blueberries, and rasepberries.</p>
                </div>
                <div class="menu-item-price">LKR 350</div>
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
