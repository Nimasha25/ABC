<%@ page import="java.util.List" %>
<%@ page import="com.abcres.model.Contact" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact List</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <style>
    body {
        font-family: Arial, sans-serif;
        margin: 20px;
        background-color: #f4f4f4;
    }

    h1 {
        color: #333;
        text-align: center;
        margin-bottom: 20px;
    }

  
    .btn {
        display: inline-block;
        padding: 10px 15px;
        font-size: 14px;
        text-align: center;
        text-decoration: none;
        color: #fff;
        border-radius: 5px;
        border: none;
        cursor: pointer;
        margin: 5px;
    }

    .btn-primary {
        background-color: #007bff;
    }

    .btn-primary:hover {
        background-color: #0056b3;
    }

    .btn-secondary {
        background-color: #6c757d;
    }

    .btn-secondary:hover {
        background-color: #5a6268;
    }

    .btn-danger {
        background-color: #dc3545;
    }

    .btn-danger:hover {
        background-color: #c82333;
    }

   
    .table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        background-color: #fff;
        border-radius: 5px;
        overflow: hidden;
        box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    }

    .table thead {
        background-color: #007bff;
        color: #fff;
    }

    .table th, .table td {
        border: 1px solid #ddd;
        padding: 12px;
        text-align: left;
    }

    .table tbody tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    .table tbody tr:hover {
        background-color: #f1f1f1;
    }

    /* Form Styles */
    form {
        display: inline;
    }

    form button {
        background-color: #dc3545;
        border: none;
        color: #fff;
        padding: 5px 10px;
        border-radius: 5px;
        cursor: pointer;
        font-size: 14px;
        transition: background-color 0.3s ease;
    }

    form button:hover {
        background-color: #c82333;
    }

  
    a {
        color: #007bff;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }
    </style>
</head>
<body>
    <h1>Contact List</h1>
<a href="${pageContext.request.contextPath}/admin/contact-admin?action=add" class="btn btn-primary">Add New Contact</a>
    <a href="${pageContext.request.contextPath}/staff/reply-form?id" class="btn btn-secondary">Reply</a>
    
    <table class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Subject</th>
                <th>Message</th>
                <th>Reply</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <% 
                List<Contact> contacts = (List<Contact>) request.getAttribute("contacts");
                for (Contact contact : contacts) {
            %>
            <tr>
                <td><%= contact.getId() %></td>
                <td><%= contact.getName() %></td>
                <td><%= contact.getEmail() %></td>
                <td><%= contact.getSubject() %></td>
                <td><%= contact.getMessage() %></td>
                <td><%= contact.getReply() %></td> 
                <td>
                 <a href="${pageContext.request.contextPath}/staff/reply-form?id=<%= contact.getId() %>" class="btn btn-secondary">Reply</a>
                    <a href="${pageContext.request.contextPath}/admin/contact-admin?action=edit&id=<%= contact.getId() %>">Edit</a>
                    <form action="${pageContext.request.contextPath}/admin/contact-admin" method="post" style="display:inline;">
                        <input type="hidden" name="action" value="delete">
                        <input type="hidden" name="id" value="<%= contact.getId() %>">
                        <button type="submit" onclick="return confirm('Are you sure you want to delete this contact?');">Delete</button>
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
