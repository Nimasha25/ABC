package com.abcres.service;

import com.abcres.dao.UserDAO;
import com.abcres.model.User;
import java.sql.SQLException;
import java.util.List;

public class UserService {
    private static UserService instance;
    private UserDAO userDAO;

    private UserService(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    public static synchronized UserService getInstance(UserDAO userDAO) {
        if (instance == null) {
            instance = new UserService(userDAO);
        }
        return instance;
    }

    public void registerUser(User user) throws SQLException {
        userDAO.saveUser(user);
    }

    public User loginUser(String username, String password) throws SQLException {
        User user = userDAO.getUserByUsername(username);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        }
        return null;
    }

    public List<User> getAllUsers() throws SQLException {
        return userDAO.getAllUsers();
    }

    public boolean deleteUser(String username) throws SQLException {
        return userDAO.deleteUser(username);
    }
    
    

}
