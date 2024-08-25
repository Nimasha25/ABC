package com.abcres.controller;

import com.abcres.model.Payment;
import com.abcres.service.PaymentService;

import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/admin/payments")
public class PaymentAdminController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private PaymentService paymentService;

    @Override
    public void init() throws ServletException {
        paymentService = new PaymentService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<Payment> payments = paymentService.getAllPayments();
            request.setAttribute("payments", payments);
        } catch (SQLException e) {
            e.printStackTrace(); // Log the exception
            request.setAttribute("errorMessage", "Unable to retrieve payment data.");
        }

        // Forward to the JSP page for displaying payments
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/payment_dashboard.jsp");
        dispatcher.forward(request, response);
    }
}
