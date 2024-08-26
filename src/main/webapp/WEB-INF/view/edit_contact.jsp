<%@ page import="com.abcres.model.Contact" %>
<%@ page import="java.util.Optional" %>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Contact</title>
</head>
<body>
    <h1>${empty contact ? 'Add New Contact' : 'Edit Contact'}</h1>

    <form action="${pageContext.request.contextPath}/admin/contacts" method="post">
        <input type="hidden" name="action" value="${empty contact ? 'add' : 'update'}"/>
        <input type="hidden" name="id" value="${empty contact ? '' : contact.id}"/>

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${empty contact ? '' : contact.name}" required/><br/>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${empty contact ? '' : contact.email}" required/><br/>

        <label for="subject">Subject:</label>
        <input type="text" id="subject" name="subject" value="${empty contact ? '' : contact.subject}" required/><br/>

        <label for="message">Message:</label>
        <textarea id="message" name="message" required>${empty contact ? '' : contact.message}</textarea><br/>
        <div class="form-group">
        <label for="reply">Reply</label>
        <textarea id="reply" name="reply" class="form-control" rows="5">${contact.reply}</textarea>
    </div>

        <input type="submit" value="${empty contact ? 'Add Contact' : 'Update Contact'}"/>
    </form>

    <a href="${pageContext.request.contextPath}/admin/contacts?action=list">Back to List</a>
</body>
</html>
