<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.Base64" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <title>Ferrari Cars</title>
    <style>
        .container-left {
            float: left;
            width: 50%;
        }
        
        .container-right {
            float: right;
            width: 50%;
        }

        .car-container {
            display: flex;
            align-items: center;
            border: 1px solid rgb(5, 5, 5);
            padding: 10px;
            margin: 10px;
            background-color: ghostwhite;
            width: 97%; 
            box-sizing: border-box;
        }

        .car-image {
            width: 50%;
            padding: 10px;
        }

        .car-details {
            width: 50%;
            padding: 10px;
        }

        .clear {
            clear: both;
        }
    </style>
</head>
<body>
  <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <ul class="nav navbar-nav">
                <li><a href="index.html">HOME</a></li>
                <li><a href="services.html">SERVICES</a></li>
            </ul>
            <form class="navbar-form navbar-right" style="background-color: rgb(250, 250, 250); padding: 0; margin-top: 10px;">
                <div class="form-group">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" size="90">
                </div>
                <button class="btn btn-danger my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>
</div>
    <h1>Ferrari Cars</h1>
    <div class="container-left">
        <div id="carDetailsLeft">
            <%
                try {
                    // Database connection parameters
                    String dbURL = "jdbc:mysql://localhost:3306/Nandini";
                    String username = "root";
                    String password = "Nandini516";

                    // Load the MySQL JDBC driver
                    Class.forName("com.mysql.cj.jdbc.Driver");

                    // Establish a database connection
                    Connection connection = DriverManager.getConnection(dbURL, username, password);

                    // Query to fetch car data along with images
                    String query = "SELECT f.*, i.img AS image FROM ferrari f INNER JOIN images i ON f.id = i.id";
                    PreparedStatement preparedStatement = connection.prepareStatement(query);

                    // Execute the query
                    ResultSet resultSet = preparedStatement.executeQuery();

                    while (resultSet.next()) {
            %>
            <div class="car-container">
                <div class="car-image">
                    <img src="data:image/jpeg;base64, <%= new String(java.util.Base64.getEncoder().encode(resultSet.getBytes("image"))) %>" alt="<%= resultSet.getString("model") %>" style="max-width: 100%;">
                </div>
                <div class="car-details">
                    <h2><%= resultSet.getString("model") %></h2>
                    <p><strong>Engine:</strong> <%= resultSet.getString("engine") %></p>
                    <p><strong>Fuel:</strong> <%= resultSet.getString("fuel") %></p>
                    <p><strong>Power & Torque:</strong> <%= resultSet.getString("powerTorque") %></p>
                    <p><strong>Acceleration:</strong> <%= resultSet.getString("acceleration") %></p>
                    <p><strong>Price:</strong> <%= resultSet.getString("price") %></p>
                </div>
            </div>
            <div class="clear"></div>
            <%
                    }
                    // Close the database connection
                    connection.close();
                } catch (ClassNotFoundException | SQLException e) {
                    e.printStackTrace();
                }
            %>
        </div>
    </div>
    <div class="container-right">
        <div id="carDetailsRight">
<%
                try {
                    // Database connection parameters
                    String dbURL = "jdbc:mysql://localhost:3306/Nandini";
                    String username = "root";
                    String password = "Nandini516";

                    // Load the MySQL JDBC driver
                    Class.forName("com.mysql.cj.jdbc.Driver");

                    // Establish a database connection
                    Connection connection = DriverManager.getConnection(dbURL, username, password);

                    // Query to fetch car data along with images
                    String query = "SELECT f.*, i.img AS image FROM ferrari f INNER JOIN images i ON f.id = i.id";
                    PreparedStatement preparedStatement = connection.prepareStatement(query);

                    // Execute the query
                    ResultSet resultSet = preparedStatement.executeQuery();

                    while (resultSet.next()) {
            %>
            <div class="car-container">
                <div class="car-image">
                    <img src="data:image/jpeg;base64, <%= new String(java.util.Base64.getEncoder().encode(resultSet.getBytes("image"))) %>" alt="<%= resultSet.getString("model") %>" style="max-width: 100%;">
                </div>
                <div class="car-details">
                    <h2><%= resultSet.getString("model") %></h2>
                    <p><strong>Engine:</strong> <%= resultSet.getString("engine") %></p>
                    <p><strong>Fuel:</strong> <%= resultSet.getString("fuel") %></p>
                    <p><strong>Power & Torque:</strong> <%= resultSet.getString("powerTorque") %></p>
                    <p><strong>Acceleration:</strong> <%= resultSet.getString("acceleration") %></p>
                    <p><strong>Price:</strong> <%= resultSet.getString("price") %></p>
                </div>
            </div>
            <div class="clear"></div>
            <%
                    }
                    // Close the database connection
                    connection.close();
                } catch (ClassNotFoundException | SQLException e) {
                    e.printStackTrace();
                }
            %>

        </div>
    </div>
</body>
</html>
