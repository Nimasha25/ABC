package com.abcres.service;

import com.abcres.dao.OrderDAO;
import com.abcres.model.Order;

import java.sql.SQLException;
import java.util.List;

public class OrderService {
    private OrderDAO orderDAO = new OrderDAO();

   
    public void placeOrder(Order order) throws SQLException {
        orderDAO.placeOrder(order);
    }

   
    public void deleteOrder(int id) throws SQLException {
        orderDAO.deleteOrder(id);
    }

    
    public void updateOrder(Order order) throws SQLException {
        orderDAO.updateOrder(order);
    }

   
    public Order getOrderById(int id) throws SQLException {
        return orderDAO.getOrderById(id);
    }

    
    public List<Order> getAllOrders() throws SQLException {
        return orderDAO.getAllOrders();
    }
}
