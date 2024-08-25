<%@ page import="com.abcres.model.Contact" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Contacts</title>
    <link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css' />">
    <link rel="stylesheet" href="<c:url value='/css/styles.css' />">
</head>
<body>
    <div class="container mt-4">
        <h2>Contact List</h2>
        <a href="<%= request.getContextPath() %>/admin/contacts?action=add" class="btn btn-success mb-2">Add New Contact</a>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Subject</th>
                    <th>Message</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="contact" items="${contacts}">
                    <tr>
                        <td>${contact.id}</td>
                        <td>${contact.name}</td>
                        <td>${contact.email}</td>
                        <td>${contact.subject}</td>
                        <td>${contact.message}</td>
                        <td>
                            <a href="<c:url value='/admin/contacts?action=edit&id=${contact.id}' />" class="btn btn-primary btn-sm">Edit</a>
                            <form action="<c:url value='/admin/contacts' />" method="post" style="display:inline;">
                                <input type="hidden" name="action" value="delete">
                                <input type="hidden" name="id" value="${contact.id}">
                                <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <script src="<c:url value='/js/bootstrap.bundle.min.js' />"></script>
</body>
</html>
