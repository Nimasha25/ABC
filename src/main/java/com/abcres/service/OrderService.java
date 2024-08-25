package com.abcres.service;

import com.abcres.dao.OrderDAO;
import com.abcres.model.Order;

import java.sql.SQLException;
import java.util.List;

public class OrderService {
    private OrderDAO orderDAO = new OrderDAO();

    // Method to place an order
    public void placeOrder(Order order) throws SQLException {
        orderDAO.placeOrder(order);
    }

    // Method to delete an order
    public void deleteOrder(int id) throws SQLException {
        orderDAO.deleteOrder(id);
    }

    // Method to update an order
    public void updateOrder(Order order) throws SQLException {
        orderDAO.updateOrder(order);
    }

    // Method to get an order by its ID
    public Order getOrderById(int id) throws SQLException {
        return orderDAO.getOrderById(id);
    }

    // Method to get all orders
    public List<Order> getAllOrders() throws SQLException {
        return orderDAO.getAllOrders();
    }
}
