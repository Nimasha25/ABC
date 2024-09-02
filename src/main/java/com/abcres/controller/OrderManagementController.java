package com.abcres.controller;

import com.abcres.model.CartItem;
import com.abcres.service.CartService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/manageOrders")
public class OrderManagementController extends HttpServlet {
    private CartService cartService = new CartService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CartItem> orders = cartService.getAllOrders();
        System.out.println("Orders retrieved: " + orders); 

        request.setAttribute("orders", orders);
        request.getRequestDispatcher("/WEB-INF/view/manageOrders.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        int id = Integer.parseInt(request.getParameter("id"));

        boolean success = false;

        if ("confirm".equals(action)) {
            success = cartService.markAsDelivered(id);
        } else if ("unavailable".equals(action)) {
            success = cartService.updateOrderStatus(id, "Unavailable");
        }

        
        String redirectUrl = "manageOrders?message=" + (success ? "Order updated successfully." : "Failed to update order.");
        response.sendRedirect(redirectUrl);
    }
}

