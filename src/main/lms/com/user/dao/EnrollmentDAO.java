package com.user.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.user.model.Enrollment;

public class EnrollmentDAO {
    
	private static final String DB_URL = "jdbc:mysql://localhost:3306/Lms";
    private static final String USER = "root";
    private static final String PASS = "root";

    // Establish a connection to the database
    private Connection connect() throws SQLException {
        return DriverManager.getConnection(DB_URL, USER, PASS);
    }

    // Add a new enrollment to the database
    public void addEnrollment(Enrollment enrollment) {
        String sql = "INSERT INTO enrollments (student_id, course_id) VALUES (?, ?)";
        try (Connection conn = connect(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, enrollment.getStudentId());
            pstmt.setInt(2, enrollment.getCourseId());
            pstmt.executeUpdate();
            System.out.println("Enrollment added successfully.");
        } catch (SQLException e) {
            System.out.println("Error adding enrollment: " + e.getMessage());
        }
    }

    // Retrieve all enrollments for a specific student
    public List<Enrollment> getEnrollmentsByStudentId(int studentId) {
        List<Enrollment> enrollments = new ArrayList<>();
        String sql = "SELECT * FROM enrollments WHERE student_id = ?";
        try (Connection conn = connect(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, studentId);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                enrollments.add(new Enrollment(
                    rs.getInt("enrollment_id"),
                    rs.getInt("student_id"),
                    rs.getInt("course_id"),
                    rs.getString("enrolled_at")
                ));
            }
        } catch (SQLException e) {
            System.out.println("Error retrieving enrollments: " + e.getMessage());
        }
        return enrollments;
    }

    // Retrieve all enrollments for a specific course
    public List<Enrollment> getEnrollmentsByCourseId(int courseId) {
        List<Enrollment> enrollments = new ArrayList<>();
        String sql = "SELECT * FROM enrollments WHERE course_id = ?";
        try (Connection conn = connect(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, courseId);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                enrollments.add(new Enrollment(
                    rs.getInt("enrollment_id"),
                    rs.getInt("student_id"),
                    rs.getInt("course_id"),
                    rs.getString("enrolled_at")
                ));
            }
        } catch (SQLException e) {
            System.out.println("Error retrieving enrollments: " + e.getMessage());
        }
        return enrollments;
    }

    // Retrieve all enrollments
    public List<Enrollment> getAllEnrollments() {
        List<Enrollment> enrollments = new ArrayList<>();
        String sql = "SELECT * FROM enrollments";
        try (Connection conn = connect(); Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                enrollments.add(new Enrollment(
                    rs.getInt("enrollment_id"),
                    rs.getInt("student_id"),
                    rs.getInt("course_id"),
                    rs.getString("enrolled_at")
                ));
            }
        } catch (SQLException e) {
            System.out.println("Error retrieving enrollments: " + e.getMessage());
        }
        return enrollments;
    }

    // Delete an enrollment by ID
    public void deleteEnrollment(int enrollmentId) {
        String sql = "DELETE FROM enrollments WHERE enrollment_id = ?";
        try (Connection conn = connect(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, enrollmentId);
            int rowsDeleted = pstmt.executeUpdate();
            if (rowsDeleted > 0) {
                System.out.println("Enrollment deleted successfully.");
            }
        } catch (SQLException e) {
            System.out.println("Error deleting enrollment: " + e.getMessage());
        }
    }
}

