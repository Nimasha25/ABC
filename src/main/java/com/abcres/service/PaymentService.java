package com.abcres.service;

import com.abcres.dao.PaymentDAO;
import com.abcres.model.Payment;

import java.sql.SQLException;
import java.util.List;
import com.abcres.service.SmsService;

public class PaymentService {
    private PaymentDAO paymentDAO;
    private SmsService smsService;

    public PaymentService() {
        this.paymentDAO = new PaymentDAO();
        this.smsService = new SmsService();
    }

    public void savePayment(Payment payment) throws Exception {
        // Save the payment to the database
        paymentDAO.save(payment);

        // Send an SMS notification
        String message = "Your order has been placed successfully! Amount: " + payment.getAmount() + ". Call us for more details.";
        smsService.sendSms(payment.getPhoneNumber(), message);
    }
    public List<Payment> getAllPayments() throws SQLException {
        return paymentDAO.getAllPayments();
    }
    
   
}
