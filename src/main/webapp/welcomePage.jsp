<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome to BankingSystem</title>
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
            flex-direction: column;
            min-height: 100vh;
            text-align: center;
        }

        h2 {
            color: #007bff;
            margin-bottom: 30px;
        }

        div {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        a {
            text-decoration: none;
            color: white;
            padding: 15px 25px;
            border-radius: 8px;
            font-size: 1.1em;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: background-color 0.3s, transform 0.2s;
        }

        a i {
            margin-right: 10px;
        }

        .admin-link {
            background-color: #28a745;
        }

        .customer-link {
            background-color: #dc3545;
        }

        .admin-link:hover, .customer-link:hover {
            background-color: #218838; /* Darker shade of green */
            transform: scale(1.05);
        }

        .customer-link:hover {
            background-color: #c82333; /* Darker shade of red */
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <h2>Welcome to BankingSystem</h2>
    <div>
        <a href="login.jsp" target="_blank" class="admin-link">
            <i class="fas fa-user-shield"></i> Admin Page
        </a>
        <a href="customerLogin.jsp" target="_blank" class="customer-link">
            <i class="fas fa-user"></i> Customer Page
        </a>
    </div>
</body>
</html>
