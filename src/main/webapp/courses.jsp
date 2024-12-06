<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Courses</title>

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="CSS/courses.css"> <!-- External CSS -->
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="index.jsp">LMS</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="courses.jsp">Courses</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="dashboard.jsp">Dashboard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.jsp">Contact</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero">
        <div class="container text-center">
            <h1>Available Courses</h1>
            <p>Choose a course and start learning today!</p>
        </div>
    </section>

    <!-- Courses Section -->
    <div class="container mt-5">
        <div class="row">
            <!-- Course 1 -->
            <div class="col-md-4">
                <div class="card">
                    <img src="../images/course1.jpg" class="card-img-top" alt="Course 1">
                    <div class="card-body">
                        <h5 class="card-title">Course 1</h5>
                        <p class="card-text">Learn the basics of programming with this comprehensive course.</p>
                        <a href="course1-details.jsp" class="btn btn-primary">View Details</a>
                        <a href="enroll.jsp?courseId=1" class="btn btn-success">Enroll Now</a>
                    </div>
                </div>
            </div>
            <!-- Course 2 -->
            <div class="col-md-4">
                <div class="card">
                    <img src="../images/course2.jpg" class="card-img-top" alt="Course 2">
                    <div class="card-body">
                        <h5 class="card-title">Course 2</h5>
                        <p class="card-text">Master web development with HTML, CSS, and JavaScript.</p>
                        <a href="course2-details.jsp" class="btn btn-primary">View Details</a>
                        <a href="enroll.jsp?courseId=2" class="btn btn-success">Enroll Now</a>
                    </div>
                </div>
            </div>
            <!-- Course 3 -->
            <div class="col-md-4">
                <div class="card">
                    <img src="../images/course3.jpg" class="card-img-top" alt="Course 3">
                    <div class="card-body">
                        <h5 class="card-title">Course 3</h5>
                        <p class="card-text">Get started with data science and analytics.</p>
                        <a href="course3-details.jsp" class="btn btn-primary">View Details</a>
                        <a href="enroll.jsp?courseId=3" class="btn btn-success">Enroll Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer mt-5">
        <p>&copy; 2024 Learning Management System | All Rights Reserved</p>
        <p>Contact us at: info@lms.com</p>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.8/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
