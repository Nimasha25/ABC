<!DOCTYPE html>
<html>
<head>
    <title>System Configuration</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <meta charset="UTF-8">
</head>
<body>
    <div class="container mt-5">
        <h2 class="mb-4">System Configuration</h2>
        <!-- Form for viewing and updating settings -->
        <form action="settings" method="post">
            <input type="hidden" name="key" value="${config.configKey}" />
            <div class="form-group">
                <label for="value">Configuration Value:</label>
                <input type="text" id="value" name="value" class="form-control" value="${config.configValue}" />
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
        <% if ("true".equals(request.getParameter("success"))) { %>
            <div class="alert alert-success mt-3">
                Configuration updated successfully.
            </div>
        <% } else if ("false".equals(request.getParameter("success"))) { %>
            <div class="alert alert-danger mt-3">
                Failed to update configuration. Please try again.
            </div>
        <% } %>
    </div>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
