package com.abcres.service;

import com.abcres.dao.UserDAO;
import com.abcres.model.User;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;


import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;


import static org.mockito.Mockito.*;

class UserServiceTest {

    private UserDAO mockUserDAO;
    private UserService userService;

    @BeforeEach
    void setUp() {
        mockUserDAO = mock(UserDAO.class);
        userService = UserService.getInstance(mockUserDAO);
    }

   

    @Test
    void testLoginUser_Failure_InvalidPassword() throws SQLException {
        // Arrange
        String username = "ash";
        String correctPassword = "1111";
        String wrongPassword = "wrong";
        User mockUser = new User(username, "Ash", "ash@gmail.com", "08654224567", correctPassword, "admin");

        when(mockUserDAO.getUserByUsername(username)).thenReturn(mockUser);

        // Act
        User loggedInUser = userService.loginUser(username, wrongPassword);

        // Assert
        assertNull(loggedInUser);
    }

    @Test
    void testLoginUser_Failure_UserNotFound() throws SQLException {
        // Arrange
        String username = "nonexistent";

        when(mockUserDAO.getUserByUsername(username)).thenReturn(null);

        // Act
        User loggedInUser = userService.loginUser(username, "password");

        // Assert
        assertNull(loggedInUser);
    }

   

   
   

    @Test
    void testDeleteUser_Success() throws SQLException {
        // Arrange
        String username = "ash";

        when(mockUserDAO.deleteUser(username)).thenReturn(true);

        // Act
        boolean result = userService.deleteUser(username);

        // Assert
        assertTrue(result);
        verify(mockUserDAO, times(1)).deleteUser(username);
    }

   
}

