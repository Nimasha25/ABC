package com.abcres.dao;

import com.abcres.model.Customer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerDAO {

    
    public void addCustomer(Customer customer) {
        String sql = "INSERT INTO Customers (first_name, last_name, email, phone_number, profile_pic) VALUES (?, ?, ?, ?, ?)";

        try (Connection conn = DBConn.getInstance().getConnection();
             PreparedStatement statement = conn.prepareStatement(sql)) {
             
            statement.setString(1, customer.getFirstName());
            statement.setString(2, customer.getLastName());
            statement.setString(3, customer.getEmail());
            statement.setString(4, customer.getPhoneNumber());
            statement.setString(5, customer.getProfilePic());
            
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(); // Handle exception and consider logging the error
        }
    }

   
    public Customer getCustomerById(int customerId) {
        String sql = "SELECT * FROM Customers WHERE customer_id = ?";
        Customer customer = null;

        try (Connection conn = DBConn.getInstance().getConnection();
             PreparedStatement statement = conn.prepareStatement(sql)) {

            statement.setInt(1, customerId);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    customer = new Customer();
                    customer.setCustomerId(resultSet.getInt("customer_id"));
                    customer.setFirstName(resultSet.getString("first_name"));
                    customer.setLastName(resultSet.getString("last_name"));
                    customer.setEmail(resultSet.getString("email"));
                    customer.setPhoneNumber(resultSet.getString("phone_number"));
                    customer.setProfilePic(resultSet.getString("profile_pic"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace(); 
        }
        return customer;
    }

    
    public List<Customer> getAllCustomers() {
        String sql = "SELECT * FROM Customers";
        List<Customer> customers = new ArrayList<>();

        try (Connection conn = DBConn.getInstance().getConnection();
             PreparedStatement statement = conn.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                Customer customer = new Customer();
                customer.setCustomerId(resultSet.getInt("customer_id"));
                customer.setFirstName(resultSet.getString("first_name"));
                customer.setLastName(resultSet.getString("last_name"));
                customer.setEmail(resultSet.getString("email"));
                customer.setPhoneNumber(resultSet.getString("phone_number"));
                customer.setProfilePic(resultSet.getString("profile_pic"));
                customers.add(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace(); 
        }
        return customers;
    }


    public void updateCustomer(Customer customer) throws SQLException {
        String sql = "UPDATE Customers SET first_name = ?, last_name = ?, email = ?, phone_number = ?, password = ?, profile_pic = ? WHERE customer_id = ?";

        try (Connection conn = DBConn.getInstance().getConnection();
             PreparedStatement statement = conn.prepareStatement(sql)) {

            statement.setString(1, customer.getFirstName());
            statement.setString(2, customer.getLastName());
            statement.setString(3, customer.getEmail());
            statement.setString(4, customer.getPhoneNumber());
            statement.setString(5, customer.getPassword()); 
            statement.setString(6, customer.getProfilePic()); 
            statement.setInt(7, customer.getCustomerId());

            statement.executeUpdate();
        }
    }

    
    public void deleteCustomer(int customerId) {
        String sql = "DELETE FROM Customers WHERE customer_id = ?";

        try (Connection conn = DBConn.getInstance().getConnection();
             PreparedStatement statement = conn.prepareStatement(sql)) {
            
            statement.setInt(1, customerId);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(); 
        }
    }
}
