<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - ABC Restaurant</title>
    <link rel="stylesheet" href="styles.css"> 
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
             background-image: url('images/back1.png');
            background-size: cover; 
    background-repeat: no-repeat;
    background-position: center; 
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
            width: 80%;
            margin: auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .container h1 {
            text-align: center;
            color: #333;
        }
        .contact-form {
            display: flex;
            flex-direction: column;
            max-width: 600px;
            margin: auto;
        }
        .contact-form input, .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .contact-form button {
            background-color: #0056b3;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        .contact-form button:hover {
            background-color: #004494;
        }
        .map {
            text-align: center;
            margin: 20px 0;
        }
.footer {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 40px 20px;
    position: relative; 
    overflow: hidden; 
}

.footer-images {
    display: flex;
    position: relative; 
    z-index: 1; 
    margin-bottom: 40px; 
}

.footer-image {
    position: relative;
    width: 100%;
    flex: 1;
}

.footer-image img {
    width: 100%;
    height: 400px; 
    object-fit: cover;
    display: block;
}

.footer-content {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 90%; 
    display: flex;
    justify-content: space-between;
    gap: 20px;
    z-index: 2; 
}

.footer-logo,
.opening-hours,
.sign-up {
    background: rgba(0, 0, 0, 0.7);
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



        .background-images {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin: 20px 0;
        }
        .background-images img {
            width: 200px;
            height: 100px;
            object-fit: cover;
            border-radius: 8px;
        }
        .faq-section {
    margin: 40px auto;
    background-color: #f9f9f9;
    border-radius: 10px;
    padding: 30px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
}

.faq-section h2 {
    text-align: center;
    color: #333;
    font-size: 28px;
    margin-bottom: 30px;
    font-weight: bold;
    text-transform: uppercase;
    letter-spacing: 1.5px;
}

.faq-item {
    margin-bottom: 25px;
    border-bottom: 1px solid #ddd;
    padding-bottom: 15px;
}

.faq-item h3 {
    font-size: 20px;
    color: #0056b3;
    margin-bottom: 10px;
    font-weight: bold;
    cursor: pointer;
    transition: color 0.3s ease;
}

.faq-item p {
    font-size: 16px;
    color: #555;
    margin: 0;
    line-height: 1.6;
    display: none;
    transition: all 0.3s ease;
}

.faq-item h3:hover {
    color: #003d80;
}

.faq-item a {
    color: #007bff;
    text-decoration: none;
    font-weight: bold;
    transition: color 0.3s ease;
}

.faq-item a:hover {
    color: #0056b3;
}


.faq-item.open p {
    display: block;
}

/* Responsive design */
@media (max-width: 768px) {
    .faq-section {
        padding: 20px;
    }

    .faq-section h2 {
        font-size: 24px;
    }

    .faq-item h3 {
        font-size: 18px;
    }

    .faq-item p {
        font-size: 15px;
    }
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
         
        <h1>Contact Us</h1>
    </div>
    <div class="container">
        <h2>Get in Touch</h2>
        <div class="contact-info">
            <p><strong>ABC Restaurant</strong></p>
            <p>1234 Restaurant Avenue, Colombo, Sri Lanka</p>
            <p>Phone: +94 123 456 789</p>
            <p>Email: info@abcrestaurant.lk</p>
        </div>
        <div class="map">
            <!-- Embed Google Map -->
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3971.510832339426!2d79.98170691475457!3d6.927079995004338!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae25995d9d4cbd7%3A0x6e0a70e9f510fc7d!2sABC%20Restaurant!5e0!3m2!1sen!2slk!4v1692195049820!5m2!1sen!2slk" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </div>
       <form action="contact" method="post" class="contact-form">
    <input type="hidden" name="action" value="submit">
    <input type="text" name="name" placeholder="Your Name" required>
    <input type="email" name="email" placeholder="Your Email" required>
    <input type="text" name="subject" placeholder="Subject" required>
    <textarea name="message" rows="5" placeholder="Your Message" required></textarea>
    <button type="submit">Send Message</button>
</form>



        <div class="faq-section">
    <h2>Frequently Asked Questions</h2>
    <div class="faq-item">
        <h3>What are your opening hours?</h3>
        <p>We are open from Monday to Friday: 10:00 AM - 10:00 PM, and on Saturday and Sunday: 9:00 AM - 11:00 PM.</p>
    </div>
    <div class="faq-item">
        <h3>Do you offer delivery services?</h3>
        <p>Yes, we offer delivery services within a 10 km radius of our restaurant. You can order online through our website.</p>
    </div>
    <div class="faq-item">
        <h3>How can I make a reservation?</h3>
        <p>You can make a reservation online through our <a href="reservation.jsp">Reservation Page</a> or by calling us at +94 123 456 789.</p>
    </div>
    <div class="faq-item">
        <h3>Do you have vegetarian or vegan options?</h3>
        <p>Yes, we have a variety of vegetarian and vegan dishes on our menu. Please check the <a href="menu.jsp">Menu Page</a> for more details.</p>
    </div>
</div>

<script >
document.querySelectorAll('.faq-item h3').forEach((item) => {
    item.addEventListener('click', () => {
        const parent = item.parentNode;
        parent.classList.toggle('open');
    });
});

</script>

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


</body>
</html>
