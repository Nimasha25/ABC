package com.abcres.service;

import com.abcres.dao.ReservationDAO;
import com.abcres.model.Reservation;

import java.sql.SQLException;
import java.util.List;

public class ReservationService {

    private static ReservationService instance;
    private ReservationDAO reservationDAO;

    private ReservationService() {
        reservationDAO = new ReservationDAO();
    }

    public static synchronized ReservationService getInstance() {
        if (instance == null) {
            instance = new ReservationService();
        }
        return instance;
    }

    public void addReservation(Reservation reservation) throws SQLException {
        reservationDAO.saveReservation(reservation);
    }

    public List<Reservation> getAllReservations() throws SQLException {
        return reservationDAO.getAllReservations();
    }
}
