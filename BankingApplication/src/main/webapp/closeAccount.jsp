<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Close Account</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        @keyframes backgroundAnimation {
            0% { background-color: #f0f8ff; }
            50% { background-color: #e0f7fa; }
            100% { background-color: #f0f8ff; }
        }

        @keyframes buttonHoverAnimation {
            0% {
                background: linear-gradient(145deg, #dc3545, #c82333);
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                transform: scale(1);
            }
            50% {
                background: linear-gradient(145deg, #c82333, #b21f2d);
                box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);
                transform: scale(1.05);
            }
            100% {
                background: linear-gradient(145deg, #dc3545, #c82333);
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                transform: scale(1);
            }
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            animation: backgroundAnimation 10s infinite alternate;
            text-align: center;
            padding: 50px;
            margin: 0;
            background: linear-gradient(135deg, #f0f8ff, #e0f7fa);
        }

        h2 {
            color: #333;
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        form {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            display: inline-block;
            padding: 20px;
            margin-top: 30px;
            text-align: left;
            position: relative;
            overflow: hidden;
        }

        label {
            display: block;
            margin-bottom: 15px;
            font-weight: bold;
            font-size: 1.2em;
        }

        input[type="submit"] {
            color: white;
            background: linear-gradient(145deg, #dc3545, #c82333);
            padding: 12px 25px;
            border-radius: 5px;
            border: none;
            font-size: 1.1em;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
            position: relative;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        input[type="submit"]:hover {
            background: linear-gradient(145deg, #c82333, #b21f2d);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);
            transform: scale(1.05);
            animation: buttonHoverAnimation 0.6s ease;
        }

        a {
            display: inline-block;
            text-decoration: none;
            color: #fff;
            background-color: #28a745;
            padding: 12px 25px;
            border-radius: 5px;
            margin-top: 10px;
            margin-left: 10px;
            transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
            font-size: 1.1em;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        a:hover {
            background-color: #1e7e34;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);
            transform: scale(1.05);
        }

        .fa {
            margin-right: 8px;
        }
    </style>
</head>
<body>
    <h2><i class="fa fa-exclamation-triangle"></i> Close Account</h2>
    <form action="CloseAccountServlet" method="post">
        <label for="confirm">Are you sure you want to close your account?</label><br><br>
        <input type="submit" value="Yes">
        <a href="viewCustomers.jsp">No</a>
    </form>
</body>
</html>
