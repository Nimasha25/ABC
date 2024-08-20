<!DOCTYPE html>
<html>
<head>
    <title>Add Reservation</title>
</head>
<body>
    <h1>Add Reservation</h1>
    <form action="reservation" method="post">
        <input type="hidden" name="action" value="add" />
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required /><br />
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required /><br />
        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone" required /><br />
        <label for="serviceType">Service Type:</label>
        <input type="text" id="serviceType" name="serviceType" required /><br />
        <label for="date">Date:</label>
        <input type="date" id="date" name="date" required /><br />
        <label for="time">Time:</label>
        <input type="time" id="time" name="time" required /><br />
        <label for="guests">Guests:</label>
        <input type="number" id="guests" name="guests" required /><br />
        <input type="submit" value="Submit" />
    </form>
</body>
</html>
