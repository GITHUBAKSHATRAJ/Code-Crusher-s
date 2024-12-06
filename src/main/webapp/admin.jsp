<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel - User Management</title>

    <!-- Link to external CSS file -->
    <link rel="stylesheet" href="CSS/admin.css">
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
                    <a class="nav-link" href="admin.jsp">Admin</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Content -->
    <div class="container mt-5">
        <div class="page-header text-center">
            <h1 class="text-primary">Admin Panel</h1>
            <p>Manage users and their roles efficiently.</p>
        </div>

        <div class="card">
            <div class="card-header bg-primary text-white">
                <h4 class="card-title mb-0">User Management</h4>
            </div>
            <div class="card-body">
                <!-- User Table -->
                <div class="table-wrapper">
                    <table class="table table-bordered table-hover">
                        <thead class="thead-dark">
                            <tr>
                                <th>#</th>
                                <th>Username</th>
                                <th>Email</th>
                                <th>Role</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Example Rows - These can be dynamically populated with data from the server -->
                            <%-- Here, you would use JSP to dynamically render user data, for example --%>
                            <%
                                // Example: Fetch user data from a session or database
                                List<User> users = (List<User>) request.getAttribute("users");
                                if (users != null) {
                                    for (User user : users) {
                            %>
                            <tr>
                                <td><%= user.getId() %></td>
                                <td><%= user.getUsername() %></td>
                                <td><%= user.getEmail() %></td>
                                <td><%= user.getRole() %></td>
                                <td>
                                    <a href="editUser.jsp?id=<%= user.getId() %>" class="btn btn-sm btn-warning">Edit</a>
                                    <a href="deleteUser.jsp?id=<%= user.getId() %>" class="btn btn-sm btn-danger">Delete</a>
                                </td>
                            </tr>
                            <%
                                    }
                                }
                            %>
                            <!-- End of dynamic user rows -->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="text-center mt-4">
            <a href="index.jsp" class="btn btn-secondary">Back to Home</a>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer bg-dark text-white text-center py-3 mt-5">
        <p>&copy; 2024 Learning Management System | All Rights Reserved</p>
    </footer>

    <!-- Link to external JS file -->
    <script src="JS/admin.js"></script>
</body>
</html>
