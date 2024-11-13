<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="CSS/index.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Index</title>
    <style>
        /* Additional CSS styles */
        .navbar-custom {
            background-color: #4CAF50; /* Change the navbar background color */
        }
  
        
        .navbar-custom .nav-link {
            color: #fff; /* Change the navbar link color */
            margin-right: 10px; /* Adjust margin between navbar links */
        }
        
        .navbar-custom .nav-link:hover {
            color: #fff; /* Change the navbar link hover color */
        }
        
        .footer {
            background-color: #333; /* Footer background color */
            color: #fff; /* Footer text color */
            text-align: center;
            padding: 10px 0; /* Padding for top and bottom */
            bottom: 0;
            width: 100%;
        }
         /* Container for the form */
        .containers {
            width: 50%;
            margin: auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        /* Form input fields */
        .form-control {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        /* Form submit button */
        .btn-primary {
            padding: 10px 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        /* Form submit button on hover */
        .btn-primary:hover {
            background-color: #0056b3;
        }

        /* Form label */
        .form-label {
            font-weight: bold;
        }

        /* Select dropdown */
        .form-select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            appearance: none; /* Remove default appearance */
        }
        
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark navbar-custom"> 
    <div class="container-fluid justify-content-center">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-4 mb-lg-0 mx-4">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Book_data.jsp">Books data</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.jsp">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.jsp">Contact</a>
                </li>
            </ul>
            <form action='logout' class="d-flex">
                <button class="btn btn-outline-success" type="submit">Logout</button>
            </form>
        </div>
    </div>
</nav>
<br></br>

<div class="container special">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <h2 class="text-center mb-4">Register Books</h2>
                    <form method="post" action="addBooks">
                        <div class="mb-3">
                            <label for="title" class="form-label">Title</label>
                            <input name="title" type="text" class="form-control" id="title" placeholder="Enter title">
                        </div>
                        <div class="mb-3">
                            <label for="author" class="form-label">Author</label>
                            <input name="author" type="text" class="form-control" id="author" placeholder="Enter author">
                        </div>
                        <div class="mb-3">
                            <label for="category" class="form-label">Category</label>
                            <input name="category" type="text" class="form-control" id="category" placeholder="Enter category">
                        </div>
                        <div class="mb-3">
                            <label for="total_page" class="form-label">Total Pages</label>
                            <input name="total_page" type="number" class="form-control" id="total_page" placeholder="Enter total_page">
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>



 
<br></br>
<footer class="footer">
    <div class="container">
        <p>&copy; 2024 Library Management System. All rights reserved.</p>
    </div>
</footer>

</body>
</html>




