package com.abcres.controller;

import com.abcres.model.Availability;
import com.abcres.service.AvailabilityService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

/**
 * Servlet implementation class AvailabilityController
 */
@WebServlet("/availability")
public class AvailabilityController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String DB_URL = "jdbc:mysql://localhost:3306/abc_res_db";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "MySQL@25";
    
    private AvailabilityService availabilityService;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AvailabilityController() {
        super();
    }

    @Override
    public void init() throws ServletException {
        try {
            Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            availabilityService = new AvailabilityService(connection);
        } catch (SQLException e) {
            throw new ServletException("Database connection problem", e);
        }
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int month;
        int year;

        try {
            month = Integer.parseInt(request.getParameter("month"));
            year = Integer.parseInt(request.getParameter("year"));
        } catch (NumberFormatException e) {
            // Handle the case where parameters are missing or invalid
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid month or year");
            return;
        }

        try {
            List<Availability> availabilityList = availabilityService.getAvailabilityForMonth(month, year);
            request.setAttribute("availabilityList", availabilityList);
            request.getRequestDispatcher("/reservation.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException("Error fetching availability", e);
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
