<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>ABC Restaurant Reservation</title>
    <link rel="stylesheet" href="styles.css">
    <link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.css' rel='stylesheet' />
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.js'></script>
    
    <style>
    body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            background-image: url('images/back1.png');
            background-size: cover; /* Makes sure the image covers the entire body */
    background-repeat: no-repeat; /* Prevents the image from repeating */
    background-position: center; /* Centers the image on the page */
    background-attachment: fixed;
        }
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
        /* Styling for the form container */
.form-container {
    width: 80%;
    max-width: 600px;
    margin: 0 auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 8px;
    background-color: #f9f9f9;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.form-container h2 {
    color: #0033cc; /* Blue color for the header */
    font-size: 24px;
    margin-bottom: 20px;
    text-align: center;
}

.form-container label {
    display: block;
    font-size: 16px;
    margin: 10px 0 5px;
}


.form-container input[type="text"],
.form-container input[type="email"],
.form-container input[type="tel"],
.form-container input[type="date"],
.form-container input[type="time"],
.form-container input[type="number"],
.form-container select {
    width: 100%;
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ddd;
    border-radius: 4px;
    box-sizing: border-box; /* Ensures padding does not affect width */
    margin-bottom: 15px;
}

.form-container input[type="submit"] {
    background-color: #0033cc; /* Blue color for the submit button */
    color: #fff;
    padding: 15px 20px;
    border: none;
    border-radius: 4px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.form-container input[type="submit"]:hover {
    background-color: #002a80; /* Darker blue on hover */
}
   #calendar {
            background-color: #333;
            color: white;
            max-width: 900px;
            margin-right: 20px;
            padding: 20px;
        }
        .calendar-images {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }
        .calendar-image {
            width: 100%;
            max-width: 300px;
            height: auto;
            border: 2px solid #ddd;
            border-radius: 8px;
            overflow: hidden;
        }
        .calendar-image img {
            width: 100%;
            height: auto;
        }
        .tag {
            display: none; /* Hide tags as we won't be using them */
        }
        .fc-daygrid-day {
            border: 1px solid #ddd;
        }
        .fc-daygrid-day-frame {
            position: relative;
        }
        .fc-daygrid-day-frame::after {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 1;
        }
       .available {
            background-color: #28a745; /* Green for available */
        }
        .bookable {
            background-color: #007bff; /* Blue for bookable */
        }
        .reserved {
            background-color: #ff4c4c; /* Red for reserved */
        }
        .pending {
            background-color: #ff9900; /* Orange for reserved */
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
<script>
        document.addEventListener('DOMContentLoaded', function() {
            var calendarEl = document.getElementById('calendar');
            var calendar = new FullCalendar.Calendar(calendarEl, {
                initialView: 'dayGridMonth',
                events: [
                    // August bookings
                    {
                        title: 'Booked ',
                        start: '2024-08-10',
                        backgroundColor: '#ff4c4c',
                        borderColor: '#ff4c4c',
                        extendedProps: {
                            status: 'booked'
                        }
                    },
                    {
                        title: 'Reserved ',
                        start: '2024-08-15',
                        backgroundColor: '#ff9900',
                        borderColor: '#ff9900',
                        extendedProps: {
                            status: 'reserved'
                        }
                    },
                    // September bookings
                    {
                        title: 'Available ',
                        start: '2024-09-01',
                        backgroundColor: '#28a745',
                        borderColor: '#28a745',
                        extendedProps: {
                            status: 'available'
                        }
                    },
                    {
                        title: 'Pending ',
                        start: '2024-09-05',
                        backgroundColor: '#ff9900',
                        borderColor: '#28a745',
                        extendedProps: {
                            status: 'Pending'
                        }
                    },
                    {
                        title: 'Booked ',
                        start: '2024-09-10',
                        backgroundColor: '#ff4c4c',
                        borderColor: '#ff4c4c',
                        extendedProps: {
                            status: 'booked'
                        }
                    }
                ],
                eventDidMount: function(info) {
                    var status = info.event.extendedProps.status;
                    if (status) {
                        var tag = document.createElement('div');
                        tag.classList.add('tag', status);
                        tag.innerText = status.charAt(0).toUpperCase() + status.slice(1);
                        info.el.querySelector('.fc-event-title').appendChild(tag);
                    }
                }
            });
            calendar.render();
        });
    </script>
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
<img src="images/Yellow Emblem Restaurant Logo.jpg" alt="ABC Restaurant Logo" class="logo">
                     
         
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
 <div id="calendar"></div>
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
<img src="images/Yellow Emblem Restaurant Logo.jpg" alt="ABC Restaurant Logo" class="logo">
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
