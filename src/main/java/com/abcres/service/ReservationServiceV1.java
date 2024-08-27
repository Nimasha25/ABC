package com.abcres.service;

import com.abcres.dao.ReservationDAO;
import com.abcres.model.Reservation;

import java.sql.SQLException;
import java.util.List;

public class ReservationServiceV1 {
    private static ReservationServiceV1 instance;
    private ReservationDAO reservationDAO;

    private ReservationServiceV1() {
        this.reservationDAO = new ReservationDAO();
    }

    public static ReservationServiceV1 getInstance() {
        if (instance == null) {
            synchronized (ReservationServiceV1.class) {
                if (instance == null) {
                    instance = new ReservationServiceV1();
                }
            }
        }
        return instance;
    }

    public void addReservation(Reservation reservation) throws SQLException {
        reservationDAO.saveReservation(reservation);
    }

    public List<Reservation> getAllReservations() throws SQLException {
        return reservationDAO.getAllReservations();
    }

    public Reservation getReservationById(int id) throws SQLException {
        return reservationDAO.getReservationById(id);
    }

    public void updateReservation(Reservation reservation) throws SQLException {
        reservationDAO.updateReservation(reservation);
    }

    public void deleteReservation(int id) throws SQLException {
        reservationDAO.deleteReservation(id);
    }

    public void confirmReservation(int id) throws SQLException {
        Reservation reservation = reservationDAO.getReservationById(id);
        if (reservation != null) {
            reservation.setStatus("Confirmed");
            reservationDAO.updateReservation(reservation);
        }
    }

    public void markAsAlreadyBooked(int id) throws SQLException {
        reservationDAO.updateReservationStatus(id, "Already Booked");
    }
}
