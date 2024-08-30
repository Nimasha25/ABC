package com.abcres.service;

import com.abcres.model.Payment;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.math.BigDecimal;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

public class PaymentServiceTest {

    private PaymentService paymentService;

    @BeforeEach
    public void setUp() {
        paymentService = new PaymentService();
    }

   

    @Test
    public void testRetrieveAndVerifyPaymentRecords() {
        // Retrieve all payment records
        List<Payment> payments = null;
        try {
            payments = paymentService.getAllPayments();
        } catch (SQLException e) {
            fail("SQL Exception occurred: " + e.getMessage());
        }

        assertNotNull(payments, "The payment list should not be null.");
        assertEquals(9, payments.size(), "There should be 9 payment records in the database.");

        // Verify the details of each payment record

        // Record 1
        Payment payment1 = payments.get(0);
        assertEquals(1, payment1.getId());
        assertEquals(700, payment1.getAmount().intValue());
        assertEquals("online", payment1.getPaymentMethod());
        assertEquals("15478787", payment1.getCardNumber());
        assertEquals("08/24", payment1.getCardExpiry());
        assertEquals("01114575658", payment1.getPhoneNumber());
        assertEquals("hashinim@gmail.com", payment1.getEmail());
        assertEquals(Timestamp.valueOf("2024-08-23 19:41:26"), payment1.getPaymentDate());

        // Record 2
        Payment payment2 = payments.get(1);
        assertEquals(2, payment2.getId());
        assertEquals(300, payment2.getAmount().intValue());
        assertEquals("online", payment2.getPaymentMethod());
        assertEquals("112234570", payment2.getCardNumber());
        assertEquals("08/24", payment2.getCardExpiry());
        assertEquals("0741252436", payment2.getPhoneNumber());
        assertEquals("hashi@gmail.com", payment2.getEmail());
        assertEquals(Timestamp.valueOf("2024-08-24 18:45:58"), payment2.getPaymentDate());

        // Record 3
        Payment payment3 = payments.get(2);
        assertEquals(3, payment3.getId());
        assertEquals(1135, payment3.getAmount().intValue());
        assertEquals("online", payment3.getPaymentMethod());
        assertEquals("112203485", payment3.getCardNumber());
        assertEquals("08/28", payment3.getCardExpiry());
        assertEquals("0112638950", payment3.getPhoneNumber());
        assertEquals("ashi@gmail.com", payment3.getEmail());
        assertEquals(Timestamp.valueOf("2024-08-24 18:49:12"), payment3.getPaymentDate());

        // Record 4
        Payment payment4 = payments.get(3);
        assertEquals(4, payment4.getId());
        assertEquals(800, payment4.getAmount().intValue());
        assertEquals("online", payment4.getPaymentMethod());
        assertEquals("112345678", payment4.getCardNumber());
        assertEquals("08/32", payment4.getCardExpiry());
        assertEquals("0124579300", payment4.getPhoneNumber());
        assertEquals("ashini@gmail.com", payment4.getEmail());
        assertEquals(Timestamp.valueOf("2024-08-24 18:50:08"), payment4.getPaymentDate());

        
    }
    @Test
    public void testOnlinePaymentRecords() {
        // Retrieve all payment records
        List<Payment> payments = null;
        try {
            payments = paymentService.getAllPayments();
        } catch (SQLException e) {
            fail("SQL Exception occurred: " + e.getMessage());
        }

        assertNotNull(payments, "The payment list should not be null.");

        // Check if at least one payment is online
        boolean hasOnlinePayment = payments.stream()
                .anyMatch(payment -> "online".equals(payment.getPaymentMethod()));

        assertTrue(hasOnlinePayment, "There should be at least one 'online' payment record.");
    }
    @Test
    public void testNonOnlinePaymentRecords() {
        // Retrieve all payment records
        List<Payment> payments = null;
        try {
            payments = paymentService.getAllPayments();
        } catch (SQLException e) {
            fail("SQL Exception occurred: " + e.getMessage());
        }

        assertNotNull(payments, "The payment list should not be null.");

        // Check if there are payments with methods other than 'online'
        boolean hasNonOnlinePayment = payments.stream()
                .anyMatch(payment -> !"online".equals(payment.getPaymentMethod()));

        assertTrue(hasNonOnlinePayment, "There should be at least one non-'online' payment record.");
    }

}
