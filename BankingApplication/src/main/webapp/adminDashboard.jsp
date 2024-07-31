<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <!-- Custom CSS for animations -->
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #eaeaea;
            color: #333;
        }

        .button-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            padding: 20px;
        }

        .button-container h2 {
            font-size: 28px;
            margin-bottom: 30px;
            color: #2c3e50;
        }

        .btn-wrapper {
            margin: 15px 0;
        }

        .button-container a {
            display: inline-block;
            padding: 15px 25px;
            font-size: 18px;
            color: #fff;
            text-decoration: none;
            border-radius: 8px;
            font-weight: bold;
            transition: background-color 0.3s, transform 0.3s, box-shadow 0.3s;
        }

        .button-container a i {
            margin-right: 10px;
        }

        .button-container .register-btn {
            background-color: #1abc9c; /* Teal */
        }

        .button-container .register-btn:hover {
            background-color: #16a085;
            transform: scale(1.05);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .button-container .list-btn {
            background-color: #3498db; /* Blue */
        }

        .button-container .list-btn:hover {
            background-color: #2980b9;
            transform: scale(1.05);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .button-container .view-btn {
            background-color: #9b59b6; /* Purple */
        }

        .button-container .view-btn:hover {
            background-color: #8e44ad;
            transform: scale(1.05);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .button-container .logout-btn {
            background-color: #e74c3c; /* Red */
        }

        .button-container .logout-btn:hover {
            background-color: #c0392b;
            transform: scale(1.05);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <div class="button-container">
        <h2><i class="fas fa-tachometer-alt"></i> Welcome, <%= session.getAttribute("username") %></h2>
        <div class="btn-wrapper">
            <a href="registerCustomer.jsp" class="register-btn"><i class="fas fa-user-plus"></i> Register Customer</a>
        </div>
        <div class="btn-wrapper">
            <a href="listCustomer.jsp" class="list-btn"><i class="fas fa-list"></i> List Customer</a>
        </div>
        <!--<div class="btn-wrapper">
            <a href="viewCustomers.jsp" class="view-btn"><i class="fas fa-eye"></i> View Customers</a>
        </div>-->
        <div class="btn-wrapper">
            <a href="login.jsp" class="logout-btn"><i class="fas fa-sign-out-alt"></i> Logout</a>
        </div>
    </div>
</body>
</html>
