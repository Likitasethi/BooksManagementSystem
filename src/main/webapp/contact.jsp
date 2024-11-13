<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Information</title>
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
            max-width: 600px;
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

        .contact-info {
            margin-top: 30px;
        }

        .contact-info h2 {
            color: #333;
            margin-bottom: 10px;
        }

        .contact-info p {
            margin-bottom: 5px;
        }

        .contact-info .email {
            color: #007bff;
        }

        .contact-info .phone {
            color: #28a745;
        }

        .contact-info .address {
            color: #dc3545;
        }

        .back-button {
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Contact Information</h1>
    
    <div class="contact-info">
        <h2>Email</h2>
        <p class="email">saurabh@developers.com</p>
    </div>

    <div class="contact-info">
        <h2>Linkedin</h2>
        <ul>
          <li><a href="https://www.linkedin.com/in/rahul-hiragond/">Rahul Hiragond</a></li>
		  <li><a href="https://www.linkedin.com/in/saurabh-pawar-5a2963238">Saurabh Pawar</a></li>
		</ul>

    </div>

    <div class="contact-info">
        <h2>Address</h2>
        <p class="address">123 Main St, Sangli, Maharastra, India</p>
    </div>

    <div class="back-button">
        <a href="index.jsp">Back to Home</a>
    </div>
</div>

</body>
</html>
