<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Reply to Contact</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <h1>Reply to Contact</h1>
    <form action="${pageContext.request.contextPath}/staff/contact" method="post">
        <input type="hidden" name="action" value="reply">
        <input type="hidden" name="id" value="${contact.id}">
        <p>
            <label for="name">Name:</label>
            ${contact.name}
        </p>
        <p>
            <label for="email">Email:</label>
            ${contact.email}
        </p>
        <p>
            <label for="subject">Subject:</label>
            ${contact.subject}
        </p>
        <p>
            <label for="message">Message:</label>
            <textarea readonly>${contact.message}</textarea>
        </p>
        <p>
            <label for="reply">Reply:</label>
            <textarea name="reply" required></textarea>
        </p>
        <button type="submit">Send Reply</button>
        <a href="${pageContext.request.contextPath}/staff/contact?action=list">Back to List</a>
    </form>
</body>
</html>
