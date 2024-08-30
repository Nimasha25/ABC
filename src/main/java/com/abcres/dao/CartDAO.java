package com.abcres.dao;

import com.abcres.model.CartItem;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.ResultSet;
import java.sql.Statement;

public class CartDAO {
    public boolean saveCartItem(CartItem item) {
        String query = "INSERT INTO cart (item_name, quantity, price, total, status, created_at) VALUES (?, ?, ?, ?, ?, NOW())";
        try (Connection conn = DBConn.getInstance().getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, item.getItemName());
            stmt.setInt(2, item.getQuantity());
            stmt.setDouble(3, item.getPrice());
            stmt.setDouble(4, item.getTotal());
            stmt.setString(5, item.getStatus());

            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean updateOrderStatus(int id, String status) {
        String query = "UPDATE cart SET status = ?, delivered_at = NOW() WHERE id = ?";
        try (Connection conn = DBConn.getInstance().getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, status);
            stmt.setInt(2, id);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean markAsDelivered(int id) {
        String query = "UPDATE cart SET status = 'Delivered', delivered_at = CURRENT_TIMESTAMP WHERE id = ?";
        try (Connection conn = DBConn.getInstance().getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setInt(1, id);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<CartItem> getAllOrders() {
        List<CartItem> cartItems = new ArrayList<>();
        String query = "SELECT * FROM cart";
        
        try (Connection conn = DBConn.getInstance().getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {

            while (rs.next()) {
                CartItem item = new CartItem();
                item.setId(rs.getInt("id"));
                item.setItemName(rs.getString("item_name"));
                item.setQuantity(rs.getInt("quantity"));
                item.setPrice(rs.getDouble("price"));
                item.setTotal(rs.getDouble("total"));
                item.setStatus(rs.getString("status"));
                item.setCreatedAt(rs.getTimestamp("created_at"));
                item.setDeliveredAt(rs.getTimestamp("delivered_at"));
                cartItems.add(item);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return cartItems;
        
    }
    public boolean deleteCartItem(int id) {
        String query = "DELETE FROM cart WHERE id = ?";
        try (Connection conn = DBConn.getInstance().getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setInt(1, id);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    public CartItem getCartItemById(int id) {
        String query = "SELECT * FROM cart WHERE id = ?";
        try (Connection conn = DBConn.getInstance().getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    CartItem item = new CartItem();
                    item.setId(rs.getInt("id"));
                    item.setItemName(rs.getString("item_name"));
                    item.setQuantity(rs.getInt("quantity"));
                    item.setPrice(rs.getDouble("price"));
                    item.setTotal(rs.getDouble("total"));
                    item.setStatus(rs.getString("status"));
                    item.setCreatedAt(rs.getTimestamp("created_at"));
                    item.setDeliveredAt(rs.getTimestamp("delivered_at"));
                    return item;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null; // Return null if no item is found with the given ID
    }
    
}
