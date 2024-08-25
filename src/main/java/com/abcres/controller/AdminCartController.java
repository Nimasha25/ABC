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

@WebServlet("/admin/cart")
public class AdminCartController extends HttpServlet {
    private CartService cartService;

    @Override
    public void init() throws ServletException {
        super.init();
        cartService = new CartService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("view".equals(action)) {
            viewCartItems(request, response);
        } else if ("update".equals(action)) {
            updateOrderStatus(request, response);
        } else if ("deliver".equals(action)) {
            markAsDelivered(request, response);
        } else {
            response.sendRedirect("error.jsp");
        }
    }

    private void viewCartItems(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CartItem> cartItems = cartService.getAllOrders();
        request.setAttribute("cartItems", cartItems);
        request.getRequestDispatcher("/WEB-INF/view/manageCart.jsp").forward(request, response);
    }

    private void updateOrderStatus(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String status = request.getParameter("status");
        boolean success = cartService.updateOrderStatus(id, status);

        if (success) {
            response.sendRedirect("cart?action=view");
        } else {
            response.sendRedirect("error.jsp");
        }
    }

    private void markAsDelivered(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        boolean success = cartService.markAsDelivered(id);

        if (success) {
            response.sendRedirect("cart?action=view");
        } else {
            response.sendRedirect("error.jsp");
        }
    }
}
