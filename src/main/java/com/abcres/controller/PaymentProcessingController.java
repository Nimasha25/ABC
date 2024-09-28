package com.abcres.controller;

import com.abcres.model.Payment;
import com.abcres.service.PaymentService;
import com.abcres.service.SmsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;

@WebServlet("/process-payment")
public class PaymentProcessingController extends HttpServlet {

    private PaymentService paymentService;
    private SmsService smsService;

    @Override
    public void init() {
        paymentService = new PaymentService();
        smsService = new SmsService();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("submit".equals(action)) {
            
            response.sendRedirect("register.jsp");
        } else if ("complete".equals(action)) {
            try {
                
                String paymentMethod = request.getParameter("payment-method");
                String cardNumber = request.getParameter("card-number");
                String cardExpiry = request.getParameter("card-expiry");
                String phoneNumber = request.getParameter("phone-number");
                String amountStr = request.getParameter("amount");
                BigDecimal amount = new BigDecimal(amountStr);
                String email = request.getParameter("email");

               
                Payment payment = new Payment();
                payment.setPaymentMethod(paymentMethod);
                payment.setCardNumber(cardNumber);
                payment.setCardExpiry(cardExpiry);
                payment.setPhoneNumber(phoneNumber);
                payment.setAmount(amount);
                payment.setEmail(email);

                
                paymentService.savePayment(payment);

                
                String yourPhoneNumber = "0094766023304"; 
                String orderDetails = "Payment of " + amount + " using " + paymentMethod + " has been successfully processed. Thank you for your order.";
                smsService.sendSms(yourPhoneNumber, orderDetails);

                
                response.sendRedirect("thank-you.jsp?message=Payment successful! Thank you for your order.");
            } catch (NumberFormatException e) {
                request.setAttribute("error", "Invalid input format. Please check your input data.");
                request.getRequestDispatcher("/WEB-INF/view/payment-error.jsp").forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
                request.setAttribute("error", "An error occurred while processing your payment. Please try again.");
                request.getRequestDispatcher("/WEB-INF/view/payment-error.jsp").forward(request, response);
            }
        } else {
            
            response.sendRedirect("thank-you.jsp");
        }
    }
}
