<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.abcres.model.Reservation" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manage Reservations</title>
    <link rel="stylesheet" href="styles.css">
    <style>
       
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            font-size: 18px;
            text-align: left;
        }
        th, td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
        .action-buttons a, .action-buttons form input {
            margin-right: 10px;
            padding: 5px 10px;
            text-decoration: none;
            color: #fff;
            border-radius: 5px;
        }
        .update-btn {
            background-color: #007bff;
        }
        .delete-btn {
            background-color: #dc3545;
        }
        .confirm-btn {
            background-color: #28a745;
        }
    </style>
</head>
<body>
    <h1>Manage Reservations</h1>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Service Type</th>
                <th>Date</th>
                <th>Time</th>
                <th>Guests</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<Reservation> reservations = (List<Reservation>) request.getAttribute("reservations");
                for (Reservation reservation : reservations) {
            %>
            <tr>
                <td><%= reservation.getId() %></td>
                <td><%= reservation.getName() %></td>
                <td><%= reservation.getEmail() %></td>
                <td><%= reservation.getPhone() %></td>
                <td><%= reservation.getServiceType() %></td>
                <td><%= reservation.getReservationDate() %></td>
                <td><%= reservation.getReservationTime() %></td>
                <td><%= reservation.getGuests() %></td>
                <td><%= reservation.getStatus() %></td>
                <td class="action-buttons">
                    <a class="update-btn" href="admin/reservations?action=edit&id=<%= reservation.getId() %>">Edit</a>
                    <form action="admin/reservations" method="post" style="display:inline;">
                        <input type="hidden" name="id" value="<%= reservation.getId() %>">
                        <input type="submit" name="action" value="delete" class="delete-btn">
                    </form>
                    <form action="admin/reservations" method="post" style="display:inline;">
                        <input type="hidden" name="id" value="<%= reservation.getId() %>">
                        <input type="submit" name="action" value="confirm" class="confirm-btn">
                    </form>
                    
                    
                    
                </td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
</body>
</html>
