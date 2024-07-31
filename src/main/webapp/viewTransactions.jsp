<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Transactions</title>
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

        .transaction {
            background-color: #fff;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
            margin-bottom: 15px;
        }

        .transaction p {
            font-size: 1em;
            margin: 5px 0;
        }

        .back-link, .download-link {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border-radius: 4px;
            text-decoration: none;
            display: flex;
            align-items: center;
            margin: 10px 5px;
            transition: background-color 0.3s;
        }

        .back-link i, .download-link i {
            margin-right: 8px;
        }

        .back-link:hover, .download-link:hover {
            background-color: #0056b3;
        }

        @media (max-width: 600px) {
            .transaction, .back-link, .download-link {
                padding: 15px;
            }

            .back-link, .download-link {
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <h2><i class="fa fa-history"></i> Last 10 Transactions</h2>
    <%
        String accountNo = (String) session.getAttribute("account_no");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingSystem", "root", "ragavan24");
        PreparedStatement ps = con.prepareStatement("SELECT * FROM transactions WHERE customer_id=(SELECT customer_id FROM customer WHERE account_no=?) ORDER BY transaction_date DESC LIMIT 10");
        ps.setString(1, accountNo);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
    %>
        <div class="transaction">
            <p><strong>Date:</strong> <%= rs.getTimestamp("transaction_date") %></p>
            <p><strong>Amount:</strong> <%= rs.getDouble("amount") %></p>
            <p><strong>Type:</strong> <%= rs.getString("transaction_type") %></p>
        </div>
    <%
        }
    %>
    <div class="nav-links">
        <a href="viewCustomers.jsp" class="back-link"><i class="fa fa-arrow-left"></i> Back to Dashboard</a>
        <a href="DownloadPDFServlet" class="download-link"><i class="fa fa-file-pdf"></i> Download Transactions as PDF</a>
    </div>
</body>
</html>
