<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Display Milk Prices, Market Trends, and Dairy News</title>
    <style>
        body {
            font-size: 16px; /* Adjust the font size as needed */
            margin-top: 20px
        }
        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px; /* Add some space between the header and table */
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 12px; /* Increase the padding for better readability */
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<h2>Milk Prices</h2>
<table>
    <tr>
        <th>ID</th>
        <th>Price</th>
        <th>Timestamp</th>
    </tr>
    <% 
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/GroceryStore", "root", "P@ritosh_2004");
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM milk_prices");

        while(rs.next()) {
    %>
    <tr>
        <td><%= rs.getInt("price_id") %></td>
        <td><%= rs.getDouble("price") %></td>
        <td><%= rs.getTimestamp("timestamp") %></td>
    </tr>
    <%
        }
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    %>
</table>

<h2>Market Trends</h2>
<table>
    <tr>
        <th>ID</th>
        <th>Description</th>
        <th>Timestamp</th>
    </tr>
    <% 
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/GroceryStore", "root", "P@ritosh_2004");
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM market_trends");

        while(rs.next()) {
    %>
    <tr>
        <td><%= rs.getInt("trend_id") %></td>
        <td><%= rs.getString("trend_description") %></td>
        <td><%= rs.getTimestamp("timestamp") %></td>
    </tr>
    <%
        }
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    %>
</table>

<h2>Dairy News</h2>
<table>
    <tr>
        <th>ID</th>
        <th>Headline</th>
        <th>Source</th>
        <th>Timestamp</th>
    </tr>
    <% 
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/GroceryStore", "root", "P@ritosh_2004");
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM dairy_news");

        while(rs.next()) {
    %>
    <tr>
        <td><%= rs.getInt("news_id") %></td>
        <td><%= rs.getString("headline") %></td>
        <td><%= rs.getString("source") %></td>
        <td><%= rs.getTimestamp("timestamp") %></td>
    </tr>
    <%
        }
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    %>
</table>

</body>
</html>
