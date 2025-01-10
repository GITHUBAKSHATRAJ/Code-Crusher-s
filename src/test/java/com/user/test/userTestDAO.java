package com.user.test;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import com.user.dao.UserDAO;

class UserDAOTest {

    private UserDAO userDAO;

    @Mock
    private Connection mockConnection;

    @Mock
    private PreparedStatement mockPreparedStatement;

    @Mock
    private ResultSet mockResultSet;

    @BeforeEach
    void setUp() throws Exception {
        MockitoAnnotations.openMocks(this);
        userDAO = new UserDAO(mockConnection);
    }

    @Test
    void validateUser_ValidCredentials_ReturnsTrue() throws Exception {
        // Arrange
        String email = "akshatraj879@gmail.com";
        String password = "123";
        String query = "SELECT * FROM users WHERE email = ? AND password = ?";

        when(mockConnection.prepareStatement(query)).thenReturn(mockPreparedStatement);
        when(mockPreparedStatement.executeQuery()).thenReturn(mockResultSet);
        when(mockResultSet.next()).thenReturn(true);

        // Act
        boolean result = userDAO.validateUser(email, password);

        // Assert
        assertTrue(result);
        verify(mockPreparedStatement).setString(1, email);
        verify(mockPreparedStatement).setString(2, password);
        verify(mockPreparedStatement).executeQuery();
    }

    @Test
    void validateUser_InvalidCredentials_ReturnsFalse() throws Exception {
        // Arrange
        String email = "wrongemail@example.com";
        String password = "wrongpassword";
        String query = "SELECT * FROM users WHERE email = ? AND password = ?";

        when(mockConnection.prepareStatement(query)).thenReturn(mockPreparedStatement);
        when(mockPreparedStatement.executeQuery()).thenReturn(mockResultSet);
        when(mockResultSet.next()).thenReturn(false);

        // Act
        boolean result = userDAO.validateUser(email, password);

        // Assert
        assertFalse(result);
        verify(mockPreparedStatement).setString(1, email);
        verify(mockPreparedStatement).setString(2, password);
        verify(mockPreparedStatement).executeQuery();
    }

    @Test
    void validateUser_SQLException_HandlesGracefully() throws Exception {
        // Arrange
        String email = "test@example.com";
        String password = "testpassword";
        String query = "SELECT * FROM users WHERE email = ? AND password = ?";

        when(mockConnection.prepareStatement(query)).thenThrow(new RuntimeException("Database error"));

        // Act & Assert
        assertDoesNotThrow(() -> userDAO.validateUser(email, password));
    }
}
