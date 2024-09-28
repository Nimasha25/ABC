<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/profile.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
   

.profile-pic {
    margin-top: 10px;
    max-width: 150px;
    height: auto;
    border-radius: 4px;
}

.btn-primary {
    background-color: #4CAF50;
    border: none;
}

.btn-primary:hover {
    background-color: #45a049;
}
   
.sidebar {
    width: 250px;
    background-color: #343a40;
    color: white;
    height: 100vh;
    position: fixed;
    top: 0;
    left: 0;
    padding: 15px;
}

.sidebar h2 {
    color: #fff;
    margin-bottom: 20px;
}

.sidebar a {
    display: block;
    color: #adb5bd;
    padding: 10px;
    text-decoration: none;
    margin-bottom: 10px;
    border-radius: 4px;
}

.sidebar a:hover {
    background-color: #495057;
    color: #fff;
}

.sidebar i {
    margin-right: 10px;
}
    
    </style>
    <script>
        function updateFileName() {
            var fileInput = document.getElementById('profilePic');
            var fileName = fileInput.value.split('\\').pop();
            document.getElementById('fileName').textContent = fileName || 'No file chosen';
        }
    </script>
</head>
<body>
    <div class="container mt-4">
        <h1>User Profile</h1>
        <form action="${pageContext.request.contextPath}/customer/profile" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" class="form-control" value="${user.username}" disabled>
            </div>
            <div class="form-group">
                <label for="fullName">Full Name:</label>
                <input type="text" id="fullName" name="fullName" class="form-control" value="${user.fullName}" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" class="form-control" value="${user.email}" required>
            </div>
            <div class="form-group">
                <label for="phone">Phone:</label>
                <input type="text" id="phone" name="phone" class="form-control" value="${user.phone}" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" class="form-control">
            </div>
            <div class="form-group">
                <label for="profilePic">Profile Picture:</label>
                <input type="file" id="profilePic" name="profilePic" class="form-control-file" onchange="updateFileName()">
                <p id="fileName">No file chosen</p>
                <c:if test="${not empty user.profilePic}">
                    <img src="${pageContext.request.contextPath}/images/profiles/${user.profilePic}" alt="Profile Picture" class="profile-pic img-fluid">
                </c:if>
            </div>
            <button type="submit" class="btn btn-primary">Update Profile</button>
        </form>
    </div>
</body>
</html>
