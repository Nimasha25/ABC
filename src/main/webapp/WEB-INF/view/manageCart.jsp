<%@ page import="java.util.List" %>
<%@ page import="com.abcres.model.CartItem" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Cart</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f4;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #f4f4f4;
            color: #333;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        a {
            text-decoration: none;
            color: #007bff;
            padding: 6px 12px;
            border: 1px solid #007bff;
            border-radius: 4px;
            display: inline-block;
            margin: 2px;
        }

        a:hover {
            background-color: #007bff;
            color: white;
        }
    </style>
</head>
<body>
    <h1>Manage Cart Items</h1>
    
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Item Name</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Total</th>
                <th>Status</th>
                <th>Created At</th>
                <th>Delivered At</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <% List<CartItem> cartItems = (List<CartItem>) request.getAttribute("cartItems"); %>
            <% for (CartItem item : cartItems) { %>
                <tr>
                    <td><%= item.getId() %></td>
                    <td><%= item.getItemName() %></td>
                    <td><%= item.getQuantity() %></td>
                    <td>LKR <%= item.getPrice() %></td>
                    <td>LKR <%= item.getTotal() %></td>
                    <td><%= item.getStatus() %></td>
                    <td><%= item.getCreatedAt() %></td>
                    <td><%= item.getDeliveredAt() %></td>
                    <td>
                        <a href="cart?action=update&id=<%= item.getId() %>&status=Completed">Mark as Completed</a>
                        <a href="cart?action=deliver&id=<%= item.getId() %>">Mark as Delivered</a>
                    </td>
                </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>
