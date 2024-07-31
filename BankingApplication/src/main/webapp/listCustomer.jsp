<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Customers</title>
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
            max-width: 90%;
            overflow-x: auto;
        }

        h2 {
            text-align: center;
            color: #ff5722; /* Vibrant orange */
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #ff5722; /* Vibrant orange */
            color: white;
        }

        tr:nth-child(even) {
            background-color: #ffe0b2; /* Light orange */
        }

        .icon-button {
            display: inline-block;
            padding: 10px 20px;
            color: #fff;
            background-color: #ff5722; /* Vibrant orange */
            border-radius: 4px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .icon-button:hover {
            background-color: #e64a19; /* Darker orange */
        }

        .icon-button i {
            margin-right: 8px;
        }

        @media (max-width: 600px) {
            .container {
                padding: 15px;
            }

            table, th, td {
                font-size: 14px;
            }

            .icon-button {
                padding: 8px 16px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2><i class="fas fa-users"></i> Customer List</h2>
        <table>
            <tr>
                <th>Customer ID</th>
                <th>Full Name</th>
                <th>Address</th>
                <th>Mobile No</th>
                <th>Email ID</th>
                <th>Account Type</th>
                <th>Initial Balance</th>
                <th>Date of Birth</th>
                <th>Account No</th>
            </tr>
            <%
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingSystem", "root", "ragavan24");
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM customer");
                    
                    while (rs.next()) {
            %>
                <tr>
                    <td><%= rs.getInt("customer_id") %></td>
                    <td><%= rs.getString("full_name") %></td>
                    <td><%= rs.getString("address") %></td>
                    <td><%= rs.getString("mobile_no") %></td>
                    <td><%= rs.getString("email_id") %></td>
                    <td><%= rs.getString("account_type") %></td>
                    <td><%= rs.getDouble("initial_balance") %></td>
                    <td><%= rs.getDate("dob") %></td>
                    <td><%= rs.getString("account_no") %></td>
                </tr>
            <%
                    }
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </table>
        <a href="adminDashboard.jsp" class="icon-button"><i class="fas fa-arrow-left"></i> Back to Dashboard</a>
    </div>
</body>
</html>
