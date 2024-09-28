<%@ page import="com.abcres.model.Contact" %>
<%
    Contact contact = (Contact) request.getAttribute("contact");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Reply to Contact</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
<head>
    <meta charset="UTF-8">
    <title>Reply to Contact</title>
    <link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css' />">
</head>
<body>
    <div class="container mt-4">
        <h2>Reply to Contact</h2>
        <p><strong>Name:</strong> <%= contact.getName() %></p>
        <p><strong>Email:</strong> <%= contact.getEmail() %></p>
        <p><strong>Subject:</strong> <%= contact.getSubject() %></p>
        <p><strong>Message:</strong> <%= contact.getMessage() %></p>

        <form action="<%= request.getContextPath() %>/staff/contact" method="post">
            <div class="form-group">
                <label for="reply">Reply:</label>
                <textarea id="reply" name="reply" class="form-control" rows="5" required></textarea>
            </div>
            <input type="hidden" name="id" value="<%= contact.getId() %>">
            <input type="hidden" name="action" value="reply">
            <button type="submit" class="btn btn-primary">Submit Reply</button>
        </form>
    </div>
</body>
</html>
