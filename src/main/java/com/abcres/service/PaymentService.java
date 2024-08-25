package com.abcres.service;

import com.abcres.dao.PaymentDAO;
import com.abcres.model.Payment;

import java.sql.SQLException;
import java.util.List;

public class PaymentService {
    private PaymentDAO paymentDAO;

    public PaymentService() {
        this.paymentDAO = new PaymentDAO();
    }

    public void savePayment(Payment payment) {
        paymentDAO.save(payment);
    }
    public List<Payment> getAllPayments() throws SQLException {
        return paymentDAO.getAllPayments();
    }
    
   
}
