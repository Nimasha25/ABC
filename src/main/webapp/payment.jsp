<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Payment</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }
        h2 {
            color: #333;
        }
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: auto;
        }
        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }
        input[type="text"], select {
            width: calc(100% - 22px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 15px;
        }
        button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #0056b3;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group:last-child {
            margin-bottom: 0;
        }
    </style>
</head>
<body>
    <h2>Payment Page</h2>

    <form action="process-payment" method="post">
        <div class="form-group">
            <label for="payment-method">Payment Method:</label>
            <select id="payment-method" name="payment-method">
                <option value="cash-on-delivery">Cash on Delivery</option>
                <option value="online-payment">Online Payment</option>
            </select>
        </div>

        <div id="payment-details" style="display: none;">
            <div class="form-group">
                <label for="card-number">Card Number:</label>
                <input type="text" id="card-number" name="card-number" />
            </div>
            <div class="form-group">
                <label for="card-expiry">Card Expiry Date:</label>
                <input type="text" id="card-expiry" name="card-expiry" />
            </div>
        </div>

        <div class="form-group">
            <label for="amount">Amount:</label>
            <input type="text" id="amount" name="amount" />
        </div>
        <div class="form-group">
            <label for="phone-number">Phone Number:</label>
            <input type="text" id="phone-number" name="phone-number" />
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="text" id="email" name="email" />
        </div>

        <div class="form-group">
            <button type="submit" name="action" value="submit">Submit</button>
            <button type="submit" name="action" value="complete">Complete</button>
        </div>
    </form>

    <script>
        document.getElementById('payment-method').addEventListener('change', function() {
            var paymentMethod = this.value;
            var paymentDetails = document.getElementById('payment-details');
            if (paymentMethod === 'online-payment') {
                paymentDetails.style.display = 'block';
            } else {
                paymentDetails.style.display = 'none';
            }
        });
    </script>
</body>
</html>
