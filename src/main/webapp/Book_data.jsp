<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Data</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            padding: 20px;
        }

        .container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 1000px;
            margin: auto;
        }

        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        p {
            color: #666;
            line-height: 1.6;
        }

        .back-button {
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>
<body>

<style>
    /* Custom CSS for the table */
    .table-wrapper {
        overflow-x: auto;
    }
    
    .table {
        width: 100%;
        border-collapse: collapse;
        border-radius: 8px;
        overflow: hidden;
    }
    
    .table th,
    .table td {
        padding: 12px 15px;
        border-bottom: 1px solid #dee2e6;
    }
    
    .table th {
        background-color: #007bff;
        color: #fff;
        font-weight: bold;
        text-align: left;
    }
    
    .table td {
        background-color: #f8f9fa;
        vertical-align: middle;
    }
    
    .table tbody tr:hover {
        background-color: rgba(0, 123, 255, 0.1);
    }
</style>

<div class="container">
    <h3 class="mb-3">Books Registered</h3>
    <div class="table-wrapper">
        <table class="table table-striped">
            <thead>
                <tr>
                	<th>ID</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Category</th>
                    <th>Total pages</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <% 
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/book?useSSL=false", "root", "");
                    String query = "select * from books";
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery(query);
                    while (rs.next()) {
                    	String id=rs.getString("id");
                %>
                <tr>
                	<td><%=rs.getString("id") %></td>
                    <td><%=rs.getString("title")%></td>
                    <td><%=rs.getString("author")%></td>
                    <td><%=rs.getString("category")%></td>
                    <td><%=rs.getString("total_page")%></td>
                    <td>
                        <a href="update.jsp?id=<%=id%>" class="btn btn-primary btn-sm me-2">Update</a>
                        <a href="delete.jsp?id=<%=id%>" class="btn btn-danger btn-sm">Delete</a>
                    </td>
                </tr>
                <% 
                    }
                    con.close();
                } catch (Exception e) {
                    out.println("Exception: " + e.getMessage());
                    e.printStackTrace();
                }
                %>
            </tbody>
        </table>
    </div>
    <div class="back-button">
        <a href="index.jsp">Back to Home</a>
    </div>
</div>


</body>
</html>
