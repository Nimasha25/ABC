package com.abcres.dao;

import com.abcres.model.Contact;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ContactDAO {
    private Connection connection;

    // Constructor to initialize the connection
    public ContactDAO() {
        this.connection = DBConn.getInstance().getConnection();
    }

    // Retrieve all contacts
    public List<Contact> getAllContacts() throws SQLException {
        List<Contact> contacts = new ArrayList<>();
        String sql = "SELECT * FROM contacts";
        
        try (Statement stmt = connection.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            
            while (rs.next()) {
                Contact contact = new Contact();
                contact.setId(rs.getInt("id"));
                contact.setName(rs.getString("name"));
                contact.setEmail(rs.getString("email"));
                contact.setSubject(rs.getString("subject"));
                contact.setMessage(rs.getString("message"));
                contacts.add(contact);
            }
        }
        return contacts;
    }
    
    

    // Save a new contact
    public void saveContact(Contact contact) throws SQLException {
        String sql = "INSERT INTO contacts (name, email, subject, message) VALUES (?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, contact.getName());
            statement.setString(2, contact.getEmail());
            statement.setString(3, contact.getSubject());
            statement.setString(4, contact.getMessage());
            statement.executeUpdate();
        }
    }
    
    // Update an existing contact
    public void updateContact(Contact contact) throws SQLException {
        String sql = "UPDATE contacts SET name = ?, email = ?, subject = ?, message = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, contact.getName());
            statement.setString(2, contact.getEmail());
            statement.setString(3, contact.getSubject());
            statement.setString(4, contact.getMessage());
            statement.setInt(5, contact.getId());
            statement.executeUpdate();
        }
    }
    
    // Retrieve a contact by its ID
    public Contact getContactById(int id) throws SQLException {
        Contact contact = null;
        String sql = "SELECT * FROM contacts WHERE id = ?";
        
        try (PreparedStatement pstmt = connection.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    contact = new Contact();
                    contact.setId(rs.getInt("id"));
                    contact.setName(rs.getString("name"));
                    contact.setEmail(rs.getString("email"));
                    contact.setSubject(rs.getString("subject"));
                    contact.setMessage(rs.getString("message"));
                }
            }
        }
        return contact;
    }

    // Delete a contact by its ID
    public void deleteContact(int id) throws SQLException {
        String sql = "DELETE FROM contacts WHERE id = ?";
        
        try (PreparedStatement pstmt = connection.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            pstmt.executeUpdate();
        }
    }
}
