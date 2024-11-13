<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f8f9fa;
        }

        .vh-100 {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-outline {
            margin-bottom: 1.5rem;
        }
    </style>
</head>
<body>

    <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
    <input type="hidden" id="uname" value="<%=session.getAttribute("uname")%>">

    <section class="vh-100">
        <div class="container py-5 h-100">
            <div class="row d-flex align-items-center justify-content-center h-100">
                <div class="col-md-8 col-lg-7 col-xl-6">
					<img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
          				class="img-fluid" alt="Phone image">                
				</div>
                <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
					<h1 class="text-center mb-4">Sign in</h1>
                    <form action="login" method="post">
                        <!-- Email input -->
                        <div class="form-outline mb-4">
                            <input type="text" name="email" class="form-control my-4 py-2" placeholder="Enter email" required>
                        </div>
                        <!-- Password input -->
                        <div class="form-outline mb-4">
                            <input type="password" name="password" class="form-control my-4 py-2" placeholder="Enter password" required>
                        </div>
                        <div class="text-center mb-3">
                            <button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>
                        </div>
                        <div class="text-center mb-3">
                            <a href="registration.jsp" class="signup-image-link">Create account</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- SweetAlert library -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript">
        var status = document.getElementById("status").value;
        var uname = document.getElementById("uname").value;

        if (status === "failed") {
            swal("Sorry", "Incorrect credentials", "error");
        } else if (status === "success") {
            swal(uname, "You are successfully logged in", "success");
        }
    </script>
</body>
</html>
