<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Page</title>
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
        .container {
            padding: 20px;
        }
        h1 {
            text-align: center;
            margin-top: 40px;
        }
        .payment-form {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .payment-form label {
            display: block;
            margin: 10px 0 5px;
            font-size: 16px;
        }
        .payment-form input[type="text"], .payment-form input[type="number"], .payment-form input[type="email"], .payment-form input[type="date"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            box-sizing: border-box;
            margin-bottom: 15px;
        }
        .payment-form input[type="submit"], .payment-form button {
            background-color: #007bff;
            border: none;
            color: white;
            padding: 15px;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .payment-form input[type="submit"]:hover, .payment-form button:hover {
            background-color: #0056b3;
        }
        .payment-form .total {
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 15px;
        }
        .payment-options {
            margin-top: 20px;
        }
        .payment-option {
            margin-bottom: 20px;
        }
        .payment-option label {
            font-size: 18px;
            margin-right: 10px;
        }
        .payment-option input[type="radio"] {
            margin-right: 10px;
        }
        .thank-you {
            text-align: center;
            font-size: 20px;
            font-weight: bold;
            color: #007bff;
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
        #payment-details {
            display: none;
            margin-top: 20px;
        }
        .hidden {
            display: none;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="About.jsp">About</a>
        <a href="Gallery.jsp">Gallery</a>
        <a href="Contact.jsp">Contact</a>
        <a href="Menu.jsp">Menu</a>
        <a href="reservation.jsp">Reservation</a>
        <a href="Services.jsp">Services</a>
        <a href="order.jsp" style="float: right;">Order Online</a>
    </div>

    <div class="container">
        <h1>Payment</h1>
        
        <div class="payment-form">
         
            <form action="process-payment.jsp" method="post">
                <div class="payment-options">
                    <div class="payment-option">
                        <input type="radio" id="cash-on-delivery" name="payment-method" value="cash" required>
                        <label for="cash-on-delivery">Cash on Delivery</label>
                        <button type="submit" name="process-cash" onclick="window.location.href='register.jsp'; return false;">Process</button>
                    </div>
                    <div class="payment-option">
                        <input type="radio" id="online-payment" name="payment-method" value="online" required>
                        <label for="online-payment">Online Payment</label>
                        <div id="online-payment-fields" style="display: none;">
                            <label for="card-number">Card Number:</label>
                            <input type="text" id="card-number" name="card-number">

                            <label for="card-expiry">Expiry Date:</label>
                            <input type="text" id="card-expiry" name="card-expiry" placeholder="MM/YY">

                            <label for="phoneNumber">Phone Number:</label>
            <input type="text" id="phoneNumber" name="phoneNumber" required><br>
            
                            <label for="amount">Amount:</label>
                            <input type="number" id="amount" name="amount" step="0.01">

                            <label for="email">Email:</label>
                            <input type="email" id="email" name="email">

                            <div class="total">Total Amount: $<span id="total-amount">0.00</span></div>
                        </div>
                        <button type="submit" name="process-online" onclick="window.location.href='register.jsp'; return false;">Process</button>
                    </div>
                </div>
                
            </form>
        </div>
    </div>

    <script>
        document.getElementById('online-payment').addEventListener('change', function() {
            document.getElementById('online-payment-fields').style.display = 'block';
        });

        document.getElementById('cash-on-delivery').addEventListener('change', function() {
            document.getElementById('online-payment-fields').style.display = 'none';
        });
    </script>
    <script>
        function showPaymentDetails() {
            var paymentMethod = document.querySelector('input[name="paymentMethod"]:checked').value;
            if (paymentMethod === 'online') {
                document.getElementById('payment-details').style.display = 'block';
                document.getElementById('thank-you-message').classList.add('hidden');
            } else {
                document.getElementById('payment-details').style.display = 'none';
                document.getElementById('thank-you-message').classList.remove('hidden');
            }
        }
    </script>
    <script>
        document.getElementById('payment-form').addEventListener('change', function() {
            var paymentMethod = document.querySelector('input[name="payment-method"]:checked').value;
            if (paymentMethod === 'online') {
                document.getElementById('online-payment-fields').style.display = 'block';
            } else {
                document.getElementById('online-payment-fields').style.display = 'none';
            }
        });

        function submitForm(paymentType) {
            var form = document.getElementById('payment-form');
            if (paymentType === 'online') {
                document.getElementById('thank-you').style.display = 'block';
                setTimeout(function() {
                    window.location.href = 'register.jsp'; // Redirect after thank you message
                }, 2000); // 2 seconds delay
            } else if (paymentType === 'cash') {
                window.location.href = 'register.jsp'; // Redirect immediately for cash payment
            }
        }
    </script>
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
