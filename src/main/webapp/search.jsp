<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search</title>
    <style>
    .back-button {
            position: absolute;
            top: 20px;
            left: 20px;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            background-color: #6c757d;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .back-button:hover {
            background-color: #5a6268;
        }
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            background-image: url('images/back3.png');
        }

        .search-container {
            max-width: 600px;
            margin: 40px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .search-container h1 {
            margin: 0 0 20px;
            font-size: 24px;
            color: #333;
            text-align: center;
        }

        .search-container input[type="text"] {
            width: calc(100% - 100px);
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
            box-sizing: border-box;
        }

        .search-container button {
            width: 80px;
            padding: 10px;
            border: none;
            border-radius: 4px;
            background-color: #007bff;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .search-container button:hover {
            background-color: #0056b3;
        }

        .search-results {
            margin-top: 20px;
            padding: 10px;
            background-color: #f9f9f9;
            border-radius: 4px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .search-results p {
            margin: 0 0 10px;
            font-size: 18px;
            color: #333;
        }

        .search-results ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        .search-results li {
            margin-bottom: 10px;
        }

        .search-results a {
            text-decoration: none;
            color: #007bff;
            font-size: 16px;
        }

        .search-results a:hover {
            text-decoration: underline;
        }

        .search-results .no-results {
            color: #777;
            font-size: 16px;
        }

        .search-results .empty-search {
            color: #ff0000;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <div class="search-container">
        <button class="back-button" onclick="window.location.href='index.jsp';">Back</button>
        <h1>Search</h1>
        <input type="text" id="search-bar" placeholder="Enter search term...">
        <button id="search-button">Search</button>
        <div class="search-results" id="search-results"></div>
    </div>

    <script>
        document.getElementById('search-button').addEventListener('click', function() {
            const query = document.getElementById('search-bar').value.trim().toLowerCase();
            const resultsContainer = document.getElementById('search-results');

           
            const pages = {
                "reservation": "reservation.jsp",
                "menu": "menu.jsp",
                "order": "order.jsp",
                "payment": "payment.jsp",
                "contact": "Contact.jsp",
                "about": "About.jsp",
                "offers": "order.jsp",
                "facilities": "Services.jsp",
                "gallery": "Gallery.jsp",
                "services": "Services.jsp",
                "rates": "order.jsp",
                "availability": "availability.jsp",
                "registration": "register.jsp",
            };

            let resultsHtml = `<p>Results for "${query}":</p><ul>`;

            if (query) {
                let resultsFound = false;
                for (const [key, value] of Object.entries(pages)) {
                    if (key.includes(query)) {
                        resultsHtml += `<li><a href="${value}">${key.charAt(0).toUpperCase() + key.slice(1)}</a></li>`;
                        resultsFound = true;
                    }
                }
                if (!resultsFound) {
                    resultsHtml += `<li class="no-results">No results found</li>`;
                }
            } else {
                resultsHtml += `<li class="empty-search">Please enter a search term.</li>`;
            }

            resultsHtml += `</ul>`;
            resultsContainer.innerHTML = resultsHtml;
            resultsContainer.style.display = 'block';
        });
    </script>
</body>
</html>
