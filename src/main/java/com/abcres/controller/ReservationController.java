package com.abcres.controller;

import com.abcres.model.Reservation;
import com.abcres.service.ReservationService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.sql.Date;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

@WebServlet("/reservation")
public class ReservationController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ReservationService reservationService;

    @Override
    public void init() throws ServletException {
        reservationService = ReservationService.getInstance();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String serviceType = request.getParameter("serviceType");

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm");
        Date date = null;
        Time time = null;

        try {
            java.util.Date utilDate = dateFormat.parse(request.getParameter("date"));
            date = new Date(utilDate.getTime());

            java.util.Date utilTime = timeFormat.parse(request.getParameter("time"));
            time = new Time(utilTime.getTime());
        } catch (ParseException e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            response.getWriter().write("Invalid date or time format.");
            return;
        }

        int guests = Integer.parseInt(request.getParameter("guests"));
        String status = "pending"; 

        Reservation reservation = new Reservation(name, email, phone, serviceType, date, time, guests, status);

        try {
            reservationService.addReservation(reservation);
            response.setContentType("text/plain");
            response.getWriter().write("Reservation successful!");
        } catch (SQLException e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().write("Database error: " + e.getMessage());
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<Reservation> reservations = reservationService.getAllReservations();
            request.setAttribute("reservations", reservations);
            request.getRequestDispatcher("/WEB-INF/view/reservations.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Unable to retrieve reservations.");
        }
    }
}
