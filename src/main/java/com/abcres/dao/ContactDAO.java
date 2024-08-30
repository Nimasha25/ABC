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
    
    // Constructor to initialize the connection
    public ContactDAO(Connection connection) {
        this.connection = connection;
    }
    
    public void addReply(int id, String reply) throws SQLException {
        String sql = "UPDATE contacts SET reply = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, reply);
            statement.setInt(2, id);
            statement.executeUpdate();
        }
    }

    
 // Method to get all contacts with replies
    public List<Contact> getAllContactsWithReplies() throws SQLException {
        List<Contact> contacts = new ArrayList<>();
        String sql = "SELECT * FROM contacts WHERE reply IS NOT NULL AND reply != ''";

        try (Statement stmt = connection.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Contact contact = new Contact();
                contact.setId(rs.getInt("id"));
                contact.setName(rs.getString("name"));
                contact.setEmail(rs.getString("email"));
                contact.setSubject(rs.getString("subject"));
                contact.setMessage(rs.getString("message"));
                contact.setReply(rs.getString("reply")); // Include reply in the contact object
                contact.setCreatedAt(rs.getString("created_at"));
                contacts.add(contact);
            }
        }
        return contacts;
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
                contact.setReply(rs.getString("reply"));
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
        String sql = "UPDATE contacts SET name = ?, email = ?, subject = ?, message = ? , reply = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, contact.getName());
            statement.setString(2, contact.getEmail());
            statement.setString(3, contact.getSubject());
            statement.setString(4, contact.getMessage());
            statement.setString(5, contact.getReply());
            statement.setInt(5, contact.getId());
            
            statement.executeUpdate();
        }
    }
    
    // Retrieve a contact by its ID
    public Contact getContactById(int id) throws SQLException {
        String query = "SELECT * FROM contacts WHERE id = ?";
        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setInt(1, id);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    return new Contact(
                            rs.getInt("id"),
                            rs.getString("name"),
                            rs.getString("email"),
                            rs.getString("subject"),
                            rs.getString("message"),
                            rs.getString("reply") // Retrieve the reply
                    );
                }
            }
        }
        return null;
    }

    // Delete a contact by its ID
    public void deleteContact(int id) throws SQLException {
        String sql = "DELETE FROM contacts WHERE id = ?";
        
        try (PreparedStatement pstmt = connection.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            pstmt.executeUpdate();
        }
    }
    public void submitContact(Contact contact) throws SQLException {
        String query = "INSERT INTO contacts (name, email, subject, message, reply) VALUES (?, ?, ?, ?, ?)";
        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setString(1, contact.getName());
            pstmt.setString(2, contact.getEmail());
            pstmt.setString(3, contact.getSubject());
            pstmt.setString(4, contact.getMessage());
            pstmt.setString(5, contact.getReply()); // Insert the reply
            pstmt.executeUpdate();
        }
    }
}
