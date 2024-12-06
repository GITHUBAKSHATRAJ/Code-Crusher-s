<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="CSS/dashboard.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="index.jsp">LMS</a>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="dashboard.jsp">Dashboard</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <div class="dashboard-header">
            <h1>User Dashboard</h1>
            <p class="lead">Manage your courses, view progress, and access resources.</p>
        </div>

        <div class="card-container">
            <div class="dashboard-card">
                <h5>My Courses</h5>
                <p>View and manage the courses you're enrolled in.</p>
                <a href="courses.jsp" class="btn btn-primary btn-sm">Go to Courses</a>
            </div>
            <div class="dashboard-card">
                <h5>Progress</h5>
                <p>Track your learning progress and achievements.</p>
                <a href="#" class="btn btn-success btn-sm">View Progress</a>
            </div>
            <div class="dashboard-card">
                <h5>Resources</h5>
                <p>Access additional learning materials and tools.</p>
                <a href="#" class="btn btn-warning btn-sm">Explore Resources</a>
            </div>
        </div>
    </div>

    <footer class="footer">
        <p>&copy; 2024 Learning Management System | All Rights Reserved</p>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- Custom JS -->
    <script src="JS/dashboard.js"></script>
</body>
</html>
