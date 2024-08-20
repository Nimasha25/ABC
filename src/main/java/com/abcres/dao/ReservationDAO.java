package com.abcres.dao;

import com.abcres.model.Reservation;
import com.abcres.dao.DBConn;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ReservationDAO {

    // Method to save a reservation to the database
    public void saveReservation(Reservation reservation) throws SQLException {
        String sql = "INSERT INTO reservations (name, email, phone, serviceType, reservationDate, reservationTime, guests, status) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        // Use try-with-resources to ensure that resources are closed properly
        try (Connection conn = DBConn.getInstance().getConnection();
             PreparedStatement pst = conn.prepareStatement(sql)) {

            pst.setString(1, reservation.getName());
            pst.setString(2, reservation.getEmail());
            pst.setString(3, reservation.getPhone());
            pst.setString(4, reservation.getServiceType());
            pst.setDate(5, reservation.getReservationDate());
            pst.setTime(6, reservation.getReservationTime());
            pst.setInt(7, reservation.getGuests());
            pst.setString(8, reservation.getStatus());

            pst.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Error saving reservation: " + e.getMessage());
            throw e;
        }
    }

    // Method to retrieve all reservations from the database
    public List<Reservation> getAllReservations() throws SQLException {
        String sql = "SELECT * FROM reservations";
        List<Reservation> reservations = new ArrayList<>();

        // Use try-with-resources to ensure that resources are closed properly
        try (Connection conn = DBConn.getInstance().getConnection();
             PreparedStatement pst = conn.prepareStatement(sql);
             ResultSet rs = pst.executeQuery()) {

            while (rs.next()) {
                Reservation reservation = new Reservation();
                reservation.setId(rs.getInt("id"));
                reservation.setName(rs.getString("name"));
                reservation.setEmail(rs.getString("email"));
                reservation.setPhone(rs.getString("phone"));
                reservation.setServiceType(rs.getString("serviceType"));
                reservation.setReservationDate(rs.getDate("reservationDate"));
                reservation.setReservationTime(rs.getTime("reservationTime"));
                reservation.setGuests(rs.getInt("guests"));
                reservation.setStatus(rs.getString("status"));
                reservations.add(reservation);
            }
        } catch (SQLException e) {
            System.err.println("Error retrieving reservations: " + e.getMessage());
            throw e;
        }

        return reservations;
    }

    // Method to update a reservation in the database
    public void updateReservation(Reservation reservation) throws SQLException {
        String sql = "UPDATE reservations SET name = ?, email = ?, phone = ?, serviceType = ?, reservationDate = ?, reservationTime = ?, guests = ?, status = ? WHERE id = ?";

        // Use try-with-resources to ensure that resources are closed properly
        try (Connection conn = DBConn.getInstance().getConnection();
             PreparedStatement pst = conn.prepareStatement(sql)) {

            pst.setString(1, reservation.getName());
            pst.setString(2, reservation.getEmail());
            pst.setString(3, reservation.getPhone());
            pst.setString(4, reservation.getServiceType());
            pst.setDate(5, reservation.getReservationDate());
            pst.setTime(6, reservation.getReservationTime());
            pst.setInt(7, reservation.getGuests());
            pst.setString(8, reservation.getStatus());
            pst.setInt(9, reservation.getId());

            pst.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Error updating reservation: " + e.getMessage());
            throw e;
        }
    }

    // Method to delete a reservation from the database
    public void deleteReservation(int id) throws SQLException {
        String sql = "DELETE FROM reservations WHERE id = ?";

        // Use try-with-resources to ensure that resources are closed properly
        try (Connection conn = DBConn.getInstance().getConnection();
             PreparedStatement pst = conn.prepareStatement(sql)) {

            pst.setInt(1, id);

            pst.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Error deleting reservation: " + e.getMessage());
            throw e;
        }
    }

    // Method to retrieve a reservation by ID
    public Reservation getReservationById(int id) throws SQLException {
        String sql = "SELECT * FROM reservations WHERE id = ?";
        Reservation reservation = null;

        // Use try-with-resources to ensure that resources are closed properly
        try (Connection conn = DBConn.getInstance().getConnection();
             PreparedStatement pst = conn.prepareStatement(sql)) {

            pst.setInt(1, id);
            try (ResultSet rs = pst.executeQuery()) {
                if (rs.next()) {
                    reservation = new Reservation();
                    reservation.setId(rs.getInt("id"));
                    reservation.setName(rs.getString("name"));
                    reservation.setEmail(rs.getString("email"));
                    reservation.setPhone(rs.getString("phone"));
                    reservation.setServiceType(rs.getString("serviceType"));
                    reservation.setReservationDate(rs.getDate("reservationDate"));
                    reservation.setReservationTime(rs.getTime("reservationTime"));
                    reservation.setGuests(rs.getInt("guests"));
                    reservation.setStatus(rs.getString("status"));
                }
            }
        } catch (SQLException e) {
            System.err.println("Error retrieving reservation: " + e.getMessage());
            throw e;
        }

        return reservation;
    }
}
