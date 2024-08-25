package com.abcres.controller;

import com.abcres.model.Order;
import com.abcres.service.OrderService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

@WebServlet("/order")
public class OrderController extends HttpServlet {
    private OrderService orderService = new OrderService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("place".equals(action)) {
            placeOrder(request, response);
        } else if ("delete".equals(action)) {
            deleteOrder(request, response);
        } else if ("confirm".equals(action)) {
            confirmOrder(request, response);
        }
    }

    private void placeOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double total = price * quantity;
        Date orderDate = new Date();

        Order order = new Order();
        order.setName(name);
        order.setPrice(price);
        order.setQuantity(quantity);
        order.setTotal(total);
        order.setOrderDate(orderDate);

        try {
            orderService.placeOrder(order);
            response.sendRedirect("orderConfirmation.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Failed to place the order.");
            request.getRequestDispatcher("order.jsp").forward(request, response);
        }
    }

    private void deleteOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        try {
            orderService.deleteOrder(id);
            response.sendRedirect("adminOrderView.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Failed to delete the order.");
            request.getRequestDispatcher("adminOrderView.jsp").forward(request, response);
        }
    }

    private void confirmOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        try {
            Order order = orderService.getOrderById(id);
            if (order != null) {
                order.setOrderDate(new Date());
                orderService.updateOrder(order);
                response.sendRedirect("adminOrderView.jsp");
            } else {
                request.setAttribute("errorMessage", "Order not found.");
                request.getRequestDispatcher("adminOrderView.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Failed to confirm the order.");
            request.getRequestDispatcher("adminOrderView.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<Order> orders = orderService.getAllOrders();
            request.setAttribute("orders", orders);
            request.getRequestDispatcher("adminOrderView.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Failed to retrieve orders.");
            request.getRequestDispatcher("adminOrderView.jsp").forward(request, response);
        }
    }
}
