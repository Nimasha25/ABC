package com.abcres.controller;

import com.abcres.model.User;
import com.abcres.service.UserService;
import com.abcres.dao.UserDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/admin/users")
public class AdminUserController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserService userService;

    @Override
    public void init() throws ServletException {
        UserDAO userDAO = new UserDAO(); 
        userService = UserService.getInstance(userDAO); 
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<User> users = userService.getAllUsers();
            request.setAttribute("users", users); 
            request.getRequestDispatcher("/WEB-INF/view/manageUsers.jsp").forward(request, response); 
        } catch (SQLException e) {
            e.printStackTrace(); 
            request.setAttribute("errorMessage", "Unable to retrieve users. Please try again later.");
            request.getRequestDispatcher("/WEB-INF/view/error.jsp").forward(request, response); 
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("delete".equals(action)) {
            try {
                String username = request.getParameter("username");
                boolean success = userService.deleteUser(username);
                if (success) {
                    response.sendRedirect(request.getContextPath() + "/admin/users");
                } else {
                    response.sendError(HttpServletResponse.SC_NOT_FOUND, "User not found.");
                }
            } catch (NumberFormatException e) {
                e.printStackTrace();
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid username format.");
            } catch (SQLException e) {
                e.printStackTrace();
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error: " + e.getMessage());
            } catch (Exception e) {
                e.printStackTrace();
                response.sendRedirect("/error.jsp");
            }
        }
    }
}
