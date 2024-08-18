<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Results - ABC Restaurant</title>
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
        .section {
            padding: 40px 20px;
            background-color: #fff;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            margin: 20px 0;
        }
        .section h2 {
            font-size: 32px;
            font-weight: bold;
            color: #007bff;
            border-bottom: 2px solid #007bff;
            padding-bottom: 10px;
            margin-bottom: 30px;
        }
        .search-results {
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            margin: 20px 0;
        }
        .search-results p {
            font-size: 18px;
            color: #555;
        }
        .search-results .result-item {
            border-bottom: 1px solid #ddd;
            padding: 10px 0;
        }
        .search-results .result-item a {
            color: #007bff;
            text-decoration: none;
        }
        .search-results .result-item a:hover {
            text-decoration: underline;
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
        <a href="Reservation.jsp">Reservation</a>
        <a href="Order-online.jsp" style="float: right;">Order Online</a>
    </div>

    <div class="header">
        <h1>Search Results</h1>
    </div>

    <div class="section search-results">
        <h2>Results for: <%= request.getParameter("query") %></h2>
        <%
            String query = request.getParameter("query");
            // Simulate a search across the website.
            // In a real application, you'd query the database or search index.
            // Here, we'll just use some static examples for demonstration.

            // Example results
            String[] results = {
                "Dish 1 - Description of Dish 1. <a href='Menu.jsp'>View Menu</a>",
                "Dish 2 - Description of Dish 2. <a href='Menu.jsp'>View Menu</a>",
                "Blog Post - ABC Restaurant offers the best dining experience. <a href='Blog.jsp'>Read More</a>",
                "Special Offer - Happy Hour Special. <a href='index.jsp'>Check Offers</a>"
            };

            if (query != null && !query.trim().isEmpty()) {
                for (String result : results) {
                    out.println("<div class='result-item'>" + result + "</div>");
                }
            } else {
                out.println("<p>No results found.</p>");
            }
        %>
    </div>
</body>
</html>
