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
//        userService = UserService.getInstance(mockUserDAO); // Ensure using the mock UserDAO
//    }
//
//    @Test
//    void testLoginUser_Failure() throws SQLException {
//        // Arrange
//        when(mockUserDAO.getUserByUsername("ash")).thenReturn(null);
//
//        // Act
//        User loggedInUser = userService.loginUser("ash", "1111");
//
//        // Assert
//        assertNull(loggedInUser);
//    }
//
//    @Test
//    void testGetAllUsers() throws SQLException {
//        // Arrange
//        List<User> users = Arrays.asList(
//            new User("ash", "Ash", "ash@gmail.com", "08654224567", "1111", "admin"),
//            new User("suu", "Suu", "suu@gmail.com", "07427", "0000", "admin")
//        );
//        when(mockUserDAO.getAllUsers()).thenReturn(users);
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
//    void testDeleteUser() throws SQLException {
//        // Arrange
//        when(mockUserDAO.deleteUser("ash")).thenReturn(true);
//
//        // Act
//        boolean deleted = userService.deleteUser("ash");
//
//        // Assert
//        assertTrue(deleted);
//        verify(mockUserDAO, times(1)).deleteUser("ash");
//    }
//}
