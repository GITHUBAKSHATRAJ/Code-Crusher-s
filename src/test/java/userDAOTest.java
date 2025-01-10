import static org.mockito.Mockito.*;
import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import com.user.dao.UserDAO;
import com.user.model.UserLogin;

public class userDAOTest {

    private UserDAO userDAO;

    @Mock
    private Connection mockConnection;

    @Mock
    private PreparedStatement mockPreparedStatement;

    @Mock
    private ResultSet mockResultSet;

    @Before
    public void setUp() throws Exception {
        MockitoAnnotations.initMocks(this);
        userDAO = new UserDAO(mockConnection);
    }

    @Test
    public void selectAllUsers_test() throws Exception {
        // Arrange
        String query = "SELECT * FROM users";
        when(mockConnection.prepareStatement(query)).thenReturn(mockPreparedStatement);
        when(mockPreparedStatement.executeQuery()).thenReturn(mockResultSet);

        // Simulate result set
        when(mockResultSet.next()).thenReturn(true, true, false); // 2 rows
        when(mockResultSet.getString("name")).thenReturn("User1", "User2");
        when(mockResultSet.getString("email")).thenReturn("user1@example.com", "user2@example.com");
        when(mockResultSet.getString("password")).thenReturn("pass1", "pass2");

        // Act
        List<User> users = userDAO.selectAllUsers();

        // Assert
        assertNotNull(users);
        assertEquals(2, users.size());
        assertEquals("User1", users.get(0).getName());
        assertEquals("User2", users.get(1).getName());
        verify(mockPreparedStatement).executeQuery();
    }

    @Test
    public void checkUser_test() throws Exception {
        // Arrange
        String email = "Aprem@gmail.com";
        String query = "SELECT * FROM users WHERE email = ?";
        when(mockConnection.prepareStatement(query)).thenReturn(mockPreparedStatement);
        when(mockPreparedStatement.executeQuery()).thenReturn(mockResultSet);
        when(mockResultSet.next()).thenReturn(false);

        // Act
        boolean status = userDAO.checkUser(email);

        // Assert
        assertFalse(status);
        verify(mockPreparedStatement).setString(1, email);
        verify(mockPreparedStatement).executeQuery();
    }

    @Test
    public void validateUser_test() throws Exception {
        // Arrange
        String email = "Aprem@gmail.com";
        String password = "A123";
        String query = "SELECT * FROM users WHERE email = ? AND password = ?";
        when(mockConnection.prepareStatement(query)).thenReturn(mockPreparedStatement);
        when(mockPreparedStatement.executeQuery()).thenReturn(mockResultSet);
        when(mockResultSet.next()).thenReturn(true);

        // Act
        boolean status = userDAO.validateUser(email, password);

        // Assert
        assertTrue(status);
        verify(mockPreparedStatement).setString(1, email);
        verify(mockPreparedStatement).setString(2, password);
        verify(mockPreparedStatement).executeQuery();
    }
}
