package com.abcres.controller;

import com.abcres.model.Payment;
import com.abcres.service.PaymentService;

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

    @Override
    public void init() {
        paymentService = new PaymentService();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            
            String paymentMethod = request.getParameter("payment-method");
            String cardNumber = request.getParameter("card-number");
            String cardExpiry = request.getParameter("card-expiry");
            String phoneNumber = request.getParameter("phoneNumber");
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

            
            response.sendRedirect("register.jsp");
        } catch (NumberFormatException e) {
            
            request.setAttribute("error", "Invalid input format. Please check your input data.");
            request.getRequestDispatcher("/WEB-INF/view/payment-error.jsp").forward(request, response);
        } catch (Exception e) {
            
            e.printStackTrace();
            request.setAttribute("error", "An error occurred while processing your payment. Please try again.");
            request.getRequestDispatcher("/WEB-INF/view/payment-error.jsp").forward(request, response);
        }
    }
}
