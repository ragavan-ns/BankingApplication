<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Dashboard</title>
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
        }

        h2 {
            text-align: center;
            color: #007bff;
            margin-bottom: 20px;
        }

        .dashboard-info {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
            margin-bottom: 20px;
        }

        .dashboard-info p {
            font-size: 1.2em;
            margin: 10px 0;
        }

        .nav-links {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 15px;
            max-width: 600px;
            width: 100%;
        }

        .nav-links a {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border-radius: 4px;
            text-decoration: none;
            display: flex;
            align-items: center;
            transition: background-color 0.3s;
        }

        .nav-links a i {
            margin-right: 8px;
        }

        .nav-links a:hover {
            background-color: #0056b3;
        }

        @media (max-width: 600px) {
            .dashboard-info, .nav-links a {
                padding: 15px;
            }

            .nav-links a {
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <h2><i class="fa fa-user"></i> Welcome, Customer</h2>
    <div class="dashboard-info">
        <%
            String accountNo = (String) session.getAttribute("account_no");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingSystem", "root", "ragavan24");
            PreparedStatement ps = con.prepareStatement("SELECT * FROM customer WHERE account_no=?");
            ps.setString(1, accountNo);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                out.print("<p>Account No: " + rs.getString("account_no") + "</p>");
                out.print("<p>Balance: $" + rs.getDouble("initial_balance") + "</p>");
            }
        %>
    </div>
    <div class="nav-links">
        <a href="viewTransactions.jsp"><i class="fa fa-history"></i> View Transactions</a>
        <a href="deposit.jsp"><i class="fa fa-plus-circle"></i> Deposit</a>
        <a href="withdraw.jsp"><i class="fa fa-minus-circle"></i> Withdraw</a>
        <a href="closeAccount.jsp"><i class="fa fa-ban"></i> Close Account</a>
        <a href="welcomePage.jsp"><i class="fa fa-sign-out-alt"></i> Logout</a>
    </div>
</body>
</html>
