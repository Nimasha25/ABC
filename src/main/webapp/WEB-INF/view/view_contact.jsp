<%@ page import="com.abcres.model.Contact" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Contact</title>
</head>
<body>
    <h2>Contact Details</h2>
    <p><strong>ID:</strong> ${contact.id}</p>
    <p><strong>Name:</strong> ${contact.name}</p>
    <p><strong>Email:</strong> ${contact.email}</p>
    <p><strong>Subject:</strong> ${contact.subject}</p>
    <p><strong>Message:</strong> ${contact.message}</p>
    <p><strong>Reply:</strong> ${contact.reply}</p>
    <a href="${pageContext.request.contextPath}/staff/contact?action=list">Back to List</a>
</body>
</html>
