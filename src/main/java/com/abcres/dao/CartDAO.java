package com.abcres.dao;


import com.abcres.model.CartItem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.Statement;
  
public class CartDAO {
    public boolean saveCart(List<CartItem> cartItems) {
        String query = "INSERT INTO cart (item_name, quantity, price, total) VALUES (?, ?, ?, ?)";

        try (Connection conn = DBConn.getInstance().getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            
            // Disable auto-commit
            conn.setAutoCommit(false);

            try {
                // Iterate over the list of cart items
                for (CartItem item : cartItems) {
                    stmt.setString(1, item.getItemName());
                    stmt.setInt(2, item.getQuantity());
                    stmt.setDouble(3, item.getPrice());
                    stmt.setDouble(4, item.getTotal()); // Use total from CartItem
                    stmt.addBatch();
                }

                // Execute the batch of insertions
                stmt.executeBatch();

                // Commit the transaction
                conn.commit();
                return true; // Return true if successful
            } catch (SQLException e) {
                // Rollback in case of error
                conn.rollback();
                e.printStackTrace();
                return false; // Return false if there was an error
            }
        } catch (SQLException e) {
            // Print the stack trace if an exception occurs
            e.printStackTrace();
            return false; // Return false if there was an error
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

 // Method to retrieve all cart items
    public List<CartItem> getAllOrders() {
        List<CartItem> cartItems = new ArrayList<>();
        String query = "SELECT * FROM cart";
        
        // Use try-with-resources to ensure that resources are closed
        try (Connection conn = DBConn.getInstance().getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {

            // Iterate through the result set and create CartItem objects
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
            e.printStackTrace(); // Log or handle the exception appropriately
        }
        
        return cartItems;
    }
}