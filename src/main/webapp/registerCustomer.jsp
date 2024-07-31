<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register Customer</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
        }

        h2 {
            text-align: center;
            color: #007bff;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        .input-container {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }

        .input-container i {
            margin-right: 10px;
            color: #007bff;
        }

        label {
            flex: 1;
            font-weight: bold;
        }

        input[type="text"],
        textarea,
        select,
        input[type="date"] {
            flex: 2;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #e9f5ff;
        }

        textarea {
            resize: vertical;
        }

        input[type="submit"] {
            padding: 10px;
            border: none;
            border-radius: 4px;
            background-color: #007bff;
            color: white;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-top: 20px;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        @media (max-width: 600px) {
            .container {
                padding: 15px;
            }

            input[type="text"],
            textarea,
            select,
            input[type="date"] {
                padding: 8px;
            }

            input[type="submit"] {
                padding: 8px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2><i class="fas fa-user-plus"></i> Register Customer</h2>
        <form action="RegisterCustomerServlet" method="post">
            <div class="input-container">
                <i class="fas fa-user"></i>
                <label for="full_name">Full Name:</label>
                <input type="text" id="full_name" name="full_name">
            </div>
            <div class="input-container">
                <i class="fas fa-map-marker-alt"></i>
                <label for="address">Address:</label>
                <textarea id="address" name="address"></textarea>
            </div>
            <div class="input-container">
                <i class="fas fa-phone"></i>
                <label for="mobile_no">Mobile No:</label>
                <input type="text" id="mobile_no" name="mobile_no">
            </div>
            <div class="input-container">
                <i class="fas fa-envelope"></i>
                <label for="email_id">Email ID:</label>
                <input type="text" id="email_id" name="email_id">
            </div>
            <div class="input-container">
                <i class="fas fa-piggy-bank"></i>
                <label for="account_type">Account Type:</label>
                <select id="account_type" name="account_type">
                    <option value="Saving">Saving</option>
                    <option value="Current">Current</option>
                </select>
            </div>
            <div class="input-container">
                <i class="fas fa-money-bill-wave"></i>
                <label for="initial_balance">Initial Balance:</label>
                <input type="text" id="initial_balance" name="initial_balance">
            </div>
            <div class="input-container">
                <i class="fas fa-calendar-alt"></i>
                <label for="dob">Date of Birth:</label>
                <input type="date" id="dob" name="date_of_birth">
            </div>
            <div class="input-container">
                <i class="fas fa-id-card"></i>
                <label for="id_proof">ID Proof:</label>
                <input type="text" id="id_proof" name="id_proof">
            </div>
            <input type="submit" value="Register">
        </form>
    </div>
</body>
</html>
