<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update</title>
    <link href="CSS/index.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .card {
            margin-top: 50px;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        
        .back-button {
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                    	<h2>Update Course</h2>
                        <form method="post" action="updateBook">
                            <%
                            try {
                                Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/book?useSSL=false", "root", "");
                                String id=request.getParameter("id");
                                String title = request.getParameter("title");
                                String author = request.getParameter("author");
                                String category = request.getParameter("category");
                                String total_page = request.getParameter("total_page");
                                String query = "select * from books where id=?";
                                PreparedStatement ps = con.prepareStatement(query);
                                ps.setString(1, id);
                                ResultSet rs = ps.executeQuery();
                                while (rs.next()) {
                            %>
                            <input type="hidden" name="id" value="<%= rs.getString("id") %>">
                            <div class="mb-3">
                                <label for="title" class="form-label">title</label>
                                <input name="title" type="text" class="form-control" placeholder="Enter title" value="<%=rs.getString("title")%>">
                            </div>
                            <div class="mb-3">
                                <label for="author" class="form-label">author</label>
                                <input name="author" type="text" class="form-control" placeholder="Enter author" value="<%=rs.getString("author")%>">
                            </div>
                            <div class="mb-3">
                                <label for="category" class="form-label">category</label>
                                <input name="category" type="text" class="form-control" placeholder="Enter category" value="<%=rs.getString("category")%>">
                                
                            </div>
                            <div class="mb-3">
                                <label for="total_page" class="form-label">total_page</label>
                                <input name="total_page" type="number" class="form-control" placeholder="Enter total_page" value="<%=rs.getString("total_page")%>">
                            </div>
                            <%
                                }
                            } catch (Exception e) {
                                out.println("Exception: " + e.getMessage());
                                e.printStackTrace();
                            }
                            %>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                        <div class="back-button">
						        <a href="Book_data.jsp">Back to Course Data</a>
						    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
