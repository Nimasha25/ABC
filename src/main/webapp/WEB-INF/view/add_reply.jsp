<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Reply</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .container {
            margin-top: 50px;
            max-width: 600px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .btn-primary {
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center">Add Reply</h1>
        <form action="contact-admin?action=reply" method="post">
            <div class="form-group">
                <label for="contactId">Contact ID:</label>
                <input type="text" class="form-control" id="contactId" name="contactId" required>
            </div>
            <div class="form-group">
                <label for="reply">Reply:</label>
                <textarea class="form-control" id="reply" name="reply" rows="5" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Add Reply</button>
        </form>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
