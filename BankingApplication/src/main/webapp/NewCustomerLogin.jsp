<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Password Reset</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 0;
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
            max-width: 400px;
            width: 100%;
            text-align: center;
        }

        h2 {
            color: #ff5722; /* Vibrant orange */
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        label {
            display: block;
            width: 100%;
            margin-bottom: 10px;
            font-weight: bold;
            text-align: left;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #e9f5ff;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            background-color: #ff5722; /* Vibrant orange */
            color: white;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #e64a19; /* Darker orange */
        }

        @media (max-width: 600px) {
            .container {
                padding: 15px;
            }

            input[type="text"] {
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
        <h2>Customer Password Reset</h2>
        <form action="newcustomerlogin" method="post">
            <label for="acc_no"><i class="fa fa-id-card"></i> Account No:</label>
            <input type="text" id="acc_no" name="acc_no">
            <label for="newPassword"><i class="fa fa-key"></i> Enter New Password:</label>
            <input type="text" id="newPassword" name="newPassword">
            <input type="submit" value="Reset Password">
        </form>
    </div>
</body>
</html>
