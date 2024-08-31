package com.abcres.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Invalidate the session if it exists
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate(); // Logs the user out
        }
        
        // Redirect to login page or home page after logout
        response.sendRedirect(request.getContextPath() + "/login.jsp");
    }
}
