<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Learning Management System</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .hero-section {
            background: linear-gradient(to right, #007bff, #0056b3);
            color: white;
            padding: 100px 0;
            text-align: center;
        }
        .hero-section h1 {
            font-size: 3.5rem;
            margin-bottom: 20px;
        }
        .hero-section p {
            font-size: 1.25rem;
            margin-bottom: 30px;
        }
        .btn-custom {
            font-size: 1.1rem;
            margin: 5px;
        }
        .footer {
            background-color: #343a40;
            color: white;
            padding: 20px 0;
            text-align: center;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">LMS</a>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="registration.jsp">Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="courses.jsp">Courses</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="management.jsp">Management</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="dashboard.jsp">Dashboard</a>
                </li>
            </ul>
        </div>
    </nav>

    <section class="hero-section">
        <div class="container">
            <h1>Welcome to the Learning Management System</h1>
            <p>Your gateway to online courses and training programs</p>
            <a href="courses.jsp" class="btn btn-light btn-lg btn-custom">Explore Courses</a>
            <a href="registration.jsp" class="btn btn-warning btn-lg btn-custom">Register Now</a>
            <a href="management.jsp" class="btn btn-primary btn-lg btn-custom">Management Area</a>
            <a href="dashboard.jsp" class="btn btn-success btn-lg btn-custom">Go to Dashboard</a>
        </div>
    </section>

    <footer class="footer">
        <p>&copy; 2024 Learning Management System | All Rights Reserved</p>
        <p>Contact us at: akshatraj873@lms.com</p>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
