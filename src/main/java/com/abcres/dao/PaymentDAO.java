package com.abcres.dao;

import com.abcres.model.Payment;
import com.abcres.dao.DBConn;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PaymentDAO {
    private Connection connection;

    public PaymentDAO() {
        connection = DBConn.getInstance().getConnection();
    }

    public void save(Payment payment) {
        String sql = "INSERT INTO payments (amount, payment_method, card_number, card_expiry, phone_number, email, created_at, status) VALUES (?, ?, ?, ?, ?, ?, NOW())";
        
        try (Connection conn = DBConn.getInstance().getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setBigDecimal(1, payment.getAmount());
            stmt.setString(2, payment.getPaymentMethod());
            stmt.setString(3, payment.getCardNumber());
            stmt.setString(4, payment.getCardExpiry());
            stmt.setString(5, payment.getPhoneNumber());
            stmt.setString(6, payment.getEmail());

            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error saving payment data");
        }
    }


    public List<Payment> getAllPayments() throws SQLException {
        List<Payment> payments = new ArrayList<>();
        String query = "SELECT * FROM payments"; // Ensure the table name is correct
        try (PreparedStatement stmt = connection.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                Payment payment = new Payment();
                payment.setId(rs.getInt("id"));
                payment.setAmount(rs.getBigDecimal("amount"));
                payment.setPaymentMethod(rs.getString("payment_method"));
                payment.setCardNumber(rs.getString("card_number"));
                payment.setCardExpiry(rs.getString("card_expiry"));
                payment.setPhoneNumber(rs.getString("phone_number"));
                payment.setEmail(rs.getString("email"));
                payment.setPaymentDate(rs.getTimestamp("created_at")); 
                payment.setStatus(rs.getString("status"));
             
                payments.add(payment);
            }
        }
        return payments;
    }


    public Payment getPaymentById(int id) throws SQLException {
        Payment payment = null;
        String query = "SELECT * FROM payments WHERE id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    payment = new Payment();
                    payment.setId(rs.getInt("id"));
                    payment.setOrderId(rs.getInt("order_id"));
                    payment.setPaymentMethod(rs.getString("payment_method"));
                    payment.setCardNumber(rs.getString("card_number"));
                    payment.setCardExpiry(rs.getString("card_expiry"));
                    payment.setPhoneNumber(rs.getString("phone_number"));
                    payment.setAmount(rs.getBigDecimal("amount"));
                    payment.setEmail(rs.getString("email"));
                    payment.setPaymentDate(rs.getTimestamp("payment_date"));
                    payment.setStatus(rs.getString("status"));
                }
            }
        }
        return payment;
    }
}
