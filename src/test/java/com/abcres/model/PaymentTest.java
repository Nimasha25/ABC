package com.abcres.model;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.math.BigDecimal;
import java.sql.Timestamp;

import static org.junit.jupiter.api.Assertions.*;

public class PaymentTest {

    private Payment payment;

    @BeforeEach
    public void setUp() {
        payment = new Payment();
    }

    @Test
    public void testPaymentGettersAndSetters() {
        int id = 1;
        int orderId = 101;
        String paymentMethod = "Credit Card";
        String cardNumber = "1234567812345678";
        String cardExpiry = "12/25";
        String phoneNumber = "555-5555";
        BigDecimal amount = new BigDecimal("2500.00");
        String email = "customer@example.com";
        Timestamp paymentDate = new Timestamp(System.currentTimeMillis());
        String status = "Completed";

        payment.setId(id);
        payment.setOrderId(orderId);
        payment.setPaymentMethod(paymentMethod);
        payment.setCardNumber(cardNumber);
        payment.setCardExpiry(cardExpiry);
        payment.setPhoneNumber(phoneNumber);
        payment.setAmount(amount);
        payment.setEmail(email);
        payment.setPaymentDate(paymentDate);
        payment.setStatus(status);

        assertEquals(id, payment.getId());
        assertEquals(orderId, payment.getOrderId());
        assertEquals(paymentMethod, payment.getPaymentMethod());
        assertEquals(cardNumber, payment.getCardNumber());
        assertEquals(cardExpiry, payment.getCardExpiry());
        assertEquals(phoneNumber, payment.getPhoneNumber());
        assertEquals(amount, payment.getAmount());
        assertEquals(email, payment.getEmail());
        assertEquals(paymentDate, payment.getPaymentDate());
        assertEquals(status, payment.getStatus());
    }
}
