//package com.abcres.service;
//
//import com.abcres.dao.UserDAO;
//import com.abcres.model.User;
//import org.junit.jupiter.api.BeforeEach;
//import org.junit.jupiter.api.Test;
//
//import java.sql.SQLException;
//import java.util.Arrays;
//import java.util.List;
//
//import static org.junit.jupiter.api.Assertions.*;
//import static org.mockito.Mockito.*;
//
//class UserServiceTest {
//
//    private UserDAO mockUserDAO;
//    private UserService userService;
//
//    @BeforeEach
//    void setUp() {
//        mockUserDAO = mock(UserDAO.class);
//        userService = UserService.getInstance(mockUserDAO);
//    }
//
//    @Test
//    void testLoginUser_Success() throws SQLException {
//        // Arrange
//        String username = "ash";
//        String password = "1111";
//        User mockUser = new User(username, "Ash", "ash@gmail.com", "08654224567", password, "admin");
//
//        when(mockUserDAO.getUserByUsername(username)).thenReturn(mockUser);
//
//        // Act
//        User loggedInUser = userService.loginUser(username, password);
//
//        // Assert
//        assertNotNull(loggedInUser);
//        assertEquals(username, loggedInUser.getUsername());
//        assertEquals(password, loggedInUser.getPassword());
//    }
//
//    @Test
//    void testLoginUser_Failure_InvalidPassword() throws SQLException {
//        // Arrange
//        String username = "ash";
//        String correctPassword = "1111";
//        String wrongPassword = "wrong";
//        User mockUser = new User(username, "Ash", "ash@gmail.com", "08654224567", correctPassword, "admin");
//
//        when(mockUserDAO.getUserByUsername(username)).thenReturn(mockUser);
//
//        // Act
//        User loggedInUser = userService.loginUser(username, wrongPassword);
//
//        // Assert
//        assertNull(loggedInUser);
//    }
//
//    @Test
//    void testLoginUser_Failure_UserNotFound() throws SQLException {
//        // Arrange
//        String username = "nonexistent";
//
//        when(mockUserDAO.getUserByUsername(username)).thenReturn(null);
//
//        // Act
//        User loggedInUser = userService.loginUser(username, "password");
//
//        // Assert
//        assertNull(loggedInUser);
//    }
//
//    @Test
//    void testGetAllUsers() throws SQLException {
//        // Arrange
//        List<User> mockUsers = Arrays.asList(
//            new User("ash", "Ash", "ash@gmail.com", "08654224567", "1111", "admin"),
//            new User("suu", "Suu", "suu@gmail.com", "07427", "0000", "admin")
//        );
//
//        when(mockUserDAO.getAllUsers()).thenReturn(mockUsers);
//
//        // Act
//        List<User> result = userService.getAllUsers();
//
//        // Assert
//        assertEquals(2, result.size());
//        assertEquals("ash", result.get(0).getUsername());
//        assertEquals("suu", result.get(1).getUsername());
//    }
//
//    @Test
//    void testSaveUser_Success() throws SQLException {
//        // Arrange
//        User newUser = new User("newuser", "New User", "newuser@gmail.com", "1234567890", "password", "user");
//
//        doNothing().when(mockUserDAO).saveUser(newUser);
//
//        // Act
//        boolean result = userService.saveUser(newUser);
//
//        // Assert
//        assertTrue(result);
//        verify(mockUserDAO, times(1)).saveUser(newUser);
//    }
//
//    @Test
//    void testSaveUser_Failure_SQLException() throws SQLException {
//        // Arrange
//        User newUser = new User("newuser", "New User", "newuser@gmail.com", "1234567890", "password", "user");
//
//        doThrow(new SQLException()).when(mockUserDAO).saveUser(newUser);
//
//        // Act
//        boolean result = userService.saveUser(newUser);
//
//        // Assert
//        assertFalse(result);
//        verify(mockUserDAO, times(1)).saveUser(newUser);
//    }
//
//    @Test
//    void testUpdateUser_Success() throws SQLException {
//        // Arrange
//        User existingUser = new User("ash", "Ash Updated", "ash_updated@gmail.com", "0987654321", "newpassword", "admin");
//
//        when(mockUserDAO.updateUser(existingUser)).thenReturn(true);
//
//        // Act
//        boolean result = userService.updateUser(existingUser);
//
//        // Assert
//        assertTrue(result);
//        verify(mockUserDAO, times(1)).updateUser(existingUser);
//    }
//
//    @Test
//    void testUpdateUser_Failure_UserNotFound() throws SQLException {
//        // Arrange
//        User nonExistentUser = new User("nonexistent", "Nonexistent User", "nonexistent@gmail.com", "0000000000", "password", "user");
//
//        when(mockUserDAO.updateUser(nonExistentUser)).thenReturn(false);
//
//        // Act
//        boolean result = userService.updateUser(nonExistentUser);
//
//        // Assert
//        assertFalse(result);
//        verify(mockUserDAO, times(1)).updateUser(nonExistentUser);
//    }
//
//    @Test
//    void testDeleteUser_Success() throws SQLException {
//        // Arrange
//        String username = "ash";
//
//        when(mockUserDAO.deleteUser(username)).thenReturn(true);
//
//        // Act
//        boolean result = userService.deleteUser(username);
//
//        // Assert
//        assertTrue(result);
//        verify(mockUserDAO, times(1)).deleteUser(username);
//    }
//
//    @Test
//    void testDeleteUser_Failure_UserNotFound() throws SQLException {
//        // Arrange
//        String username = "nonexistent";
//
//        when(mockUserDAO.deleteUser(username)).thenReturn(false);
//
//        // Act
//        boolean result = userService.deleteUser(username);
//
//        // Assert
//        assertFalse(result);
//        verify(mockUserDAO, times(1)).deleteUser(username);
//    }
//}
