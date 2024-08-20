package com.abcres.controller;

import com.abcres.dao.ReservationDAO;
import com.abcres.model.Reservation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Time;
import java.util.List;

@WebServlet("/admin/reservations")
public class AdminReservationController extends HttpServlet {

    private ReservationDAO reservationDao;

    @Override
    public void init() throws ServletException {
        reservationDao = new ReservationDAO(); // Initialize your DAO
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        try {
            if ("edit".equals(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                Reservation reservation = reservationDao.getReservationById(id);
                request.setAttribute("reservation", reservation);
                request.getRequestDispatcher("/WEB-INF/views/admin/edit_reservation.jsp").forward(request, response);
            } else {
                List<Reservation> reservations = reservationDao.getAllReservations();
                request.setAttribute("reservations", reservations);
                request.getRequestDispatcher("/WEB-INF/views/admin/reservations.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            throw new ServletException("Error retrieving reservations", e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        try {
            if ("update".equals(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String phone = request.getParameter("phone");
                String serviceType = request.getParameter("serviceType");
                String date = request.getParameter("date");
                String time = request.getParameter("time");
                int guests = Integer.parseInt(request.getParameter("guests"));
                String status = request.getParameter("status");

                // Create a new Reservation object with updated information
                Reservation reservation = new Reservation();
                reservation.setId(id);
                reservation.setName(name);
                reservation.setEmail(email);
                reservation.setPhone(phone);
                reservation.setServiceType(serviceType);
                reservation.setReservationDate(Date.valueOf(date));
                reservation.setReservationTime(Time.valueOf(time));
                reservation.setGuests(guests);
                reservation.setStatus(status);

                // Update reservation in the database
                reservationDao.updateReservation(reservation);

                response.sendRedirect("reservations");
            } else if ("delete".equals(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                reservationDao.deleteReservation(id);
                response.sendRedirect("reservations");
            } else {
                response.sendRedirect("reservations");
            }
        } catch (SQLException e) {
            throw new ServletException("Error processing reservation", e);
        }
    }
}
