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
        } else if ("add".equals(action)) {
            showAddOrderForm(request, response);
        } else if ("update".equals(action)) {
            updateOrderStatus(request, response);
        } else if ("deliver".equals(action)) {
            markAsDelivered(request, response);
        } else {
            response.sendRedirect("/WEB-INF/view/error.jsp");
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("save".equals(action)) {
            saveOrder(request, response);
        }
    }

    private void saveOrder(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String itemName = request.getParameter("itemName");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double price = Double.parseDouble(request.getParameter("price"));
        double total = quantity * price;

        CartItem cartItem = new CartItem();
        cartItem.setItemName(itemName);
        cartItem.setQuantity(quantity);
        cartItem.setPrice(price);
        cartItem.setTotal(total);
        cartItem.setStatus("Pending");

        boolean isSaved = cartService.saveCart(List.of(cartItem));

        if (isSaved) {
            response.sendRedirect("cart?action=view");
        } else {
            response.sendRedirect("/WEB-INF/view/error.jsp");
        }
    }

    private void showAddOrderForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/view/add-order.jsp").forward(request, response);
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
            response.sendRedirect("/WEB-INF/view/error.jsp");
        }
    }

    private void markAsDelivered(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        boolean success = cartService.markAsDelivered(id);

        if (success) {
            response.sendRedirect("cart?action=view");
        } else {
            response.sendRedirect("/WEB-INF/view/error.jsp");
        }
    }
}
