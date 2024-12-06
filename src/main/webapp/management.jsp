<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Management</title>

    <!-- Link to external CSS file -->
    <link rel="stylesheet" href="CSS/management.css">
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="index.jsp">LMS</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="management.jsp">Management</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Page Content -->
    <div class="container">
        <div class="page-header">
            <h1>Welcome to the Management Area</h1>
            <p class="lead">Manage courses, users, and more efficiently.</p>
        </div>

        <div class="content-area">
            <h3>Administrative Tools</h3>
            <p>Here you can find tools to manage the LMS, including course management, user tracking, and performance analytics.</p>
            <form action="addCourse.jsp" method="get">
                <button type="submit" class="btn btn-primary btn-lg">Add New Course</button>
            </form>
            <form action="viewUserData.jsp" method="get">
                <button type="submit" class="btn btn-success btn-lg">View User Data</button>
            </form>
            <form action="generateReports.jsp" method="get">
                <button type="submit" class="btn btn-warning btn-lg">Generate Reports</button>
            </form>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2024 Learning Management System | All Rights Reserved</p>
    </footer>

    <!-- Link to external JS file -->
    <script src="JS/management.js"></script>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
