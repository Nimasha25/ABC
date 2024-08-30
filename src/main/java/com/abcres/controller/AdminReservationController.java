package com.abcres.controller;

import com.abcres.dao.ReservationDAO;
import com.abcres.model.Reservation;

import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.Time;
import java.util.List;

@WebServlet("/admin/reservations")
public class AdminReservationController extends HttpServlet {

	
    private ReservationDAO reservationDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        reservationDAO = new ReservationDAO(); // Initialize DAO
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null || "list".equals(action)) {
            // Default action: list all reservations
            try {
                List<Reservation> reservations = reservationDAO.getAllReservations();
                request.setAttribute("reservations", reservations);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/manageReservation.jsp");
                dispatcher.forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
                request.setAttribute("errorMessage", "An error occurred while fetching reservations.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/error.jsp");
                dispatcher.forward(request, response);
            }
        } else if ("edit".equals(action)) {
            // Handle the edit action
            try {
                int id = Integer.parseInt(request.getParameter("id"));
                Reservation reservation = reservationDAO.getReservationById(id);
                request.setAttribute("reservation", reservation);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/edit_reservation.jsp");
                dispatcher.forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
                request.setAttribute("errorMessage", "An error occurred while fetching reservation details.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/error.jsp");
                dispatcher.forward(request, response);
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/WEB-INF/view/error.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        try {
            if ("update".equals(action)) {
                // Handle reservation update
                int id = Integer.parseInt(request.getParameter("id"));
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String phone = request.getParameter("phone");
                String serviceType = request.getParameter("serviceType");
                Date reservationDate = Date.valueOf(request.getParameter("date"));
                Time reservationTime = Time.valueOf(request.getParameter("time"));
                int guests = Integer.parseInt(request.getParameter("guests"));
                String status = request.getParameter("status");

                Reservation reservation = new Reservation();
                reservation.setId(id);
                reservation.setName(name);
                reservation.setEmail(email);
                reservation.setPhone(phone);
                reservation.setServiceType(serviceType);
                reservation.setReservationDate(reservationDate);
                reservation.setReservationTime(reservationTime);
                reservation.setGuests(guests);
                reservation.setStatus(status);

                reservationDAO.updateReservation(reservation);

                response.sendRedirect(request.getContextPath() + "/admin/reservations");
            } else if ("delete".equals(action)) {
                // Handle reservation deletion
                int id = Integer.parseInt(request.getParameter("id"));
                reservationDAO.deleteReservation(id);
                response.sendRedirect(request.getContextPath() + "/admin/reservations");
            } else if ("confirm".equals(action)) {
                // Handle reservation confirmation
                int id = Integer.parseInt(request.getParameter("id"));
                Reservation reservation = reservationDAO.getReservationById(id);
                if (reservation != null) {
                    reservation.setStatus("Confirmed");
                    reservationDAO.updateReservation(reservation);
                }
                response.sendRedirect(request.getContextPath() + "/admin/reservations");
            } else {
                response.sendRedirect(request.getContextPath() + "/WEB-INF/view/error.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred while processing your request.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/error.jsp");
            dispatcher.forward(request, response);
        }
    }
}
