package com.abcres.dao;

import com.abcres.model.Order;
import com.abcres.model.OrderItemClass;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OrderDAO {
    private Connection getConnection() throws SQLException {
        
        String url = "jdbc:mysql://localhost:3306/abc_res_db";
        String user = "root";
        String password = "MySQL@25";
        return DriverManager.getConnection(url, user, password);
    }

    public void placeOrder(Order order) throws SQLException {
        String sql = "INSERT INTO orders (name, price, quantity, total, order_date, status) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, order.getName());
            stmt.setDouble(2, order.getPrice());
            stmt.setInt(3, order.getQuantity());
            stmt.setDouble(4, order.getTotal());
            stmt.setDate(5, new java.sql.Date(order.getOrderDate().getTime()));
            stmt.setString(6, order.getStatus()); // Add status
            stmt.executeUpdate();
        }
    }

    public void deleteOrder(int id) throws SQLException {
        String sql = "DELETE FROM orders WHERE id = ?";
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
        }
    }

    public void updateOrder(Order order) throws SQLException {
        String sql = "UPDATE orders SET name = ?, price = ?, quantity = ?, total = ?, order_date = ?, status = ? WHERE id = ?";
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, order.getName());
            stmt.setDouble(2, order.getPrice());
            stmt.setInt(3, order.getQuantity());
            stmt.setDouble(4, order.getTotal());
            stmt.setDate(5, new java.sql.Date(order.getOrderDate().getTime()));
            stmt.setString(6, order.getStatus());
            stmt.setInt(7, order.getId());
            stmt.executeUpdate();
        }
    }

    public Order getOrderById(int id) throws SQLException {
        Order order = null;
        String sql = "SELECT * FROM orders WHERE id = ?";
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    order = new Order();
                    order.setId(rs.getInt("id"));
                    order.setName(rs.getString("name"));
                    order.setPrice(rs.getDouble("price"));
                    order.setQuantity(rs.getInt("quantity"));
                    order.setTotal(rs.getDouble("total"));
                    order.setOrderDate(rs.getDate("order_date"));
                    order.setStatus(rs.getString("status")); 

                    
                    List<OrderItemClass> items = getOrderItems(id);
                    order.setItems(items);
                }
            }
        }
        return order;
    }

    public List<Order> getAllOrders() throws SQLException {
        List<Order> orders = new ArrayList<>();
        String sql = "SELECT * FROM orders";
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                Order order = new Order();
                order.setId(rs.getInt("id"));
                order.setName(rs.getString("name"));
                order.setPrice(rs.getDouble("price"));
                order.setQuantity(rs.getInt("quantity"));
                order.setTotal(rs.getDouble("total"));
                order.setOrderDate(rs.getDate("order_date"));
                order.setStatus(rs.getString("status")); 
                orders.add(order);
            }
        }
        return orders;
    }


    private List<OrderItemClass> getOrderItems(int orderId) throws SQLException {
        String sql = "SELECT item_name, quantity, price FROM order_items WHERE order_id = ?";
        List<OrderItemClass> items = new ArrayList<>();
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, orderId);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                	OrderItemClass item = new OrderItemClass();
                    item.setItemName(rs.getString("item_name"));
                    item.setQuantity(rs.getInt("quantity"));
                    item.setPrice(rs.getDouble("price"));
                    items.add(item);
                }
            }
        }
        return items;
    }
}
