package com.abcres.dao;

import com.abcres.model.Contact;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

public class ContactDAOTest {

    private Connection connection;
    private ContactDAO contactDAO;

    @BeforeEach
    public void setUp() throws SQLException {
        // Initialize connection and DAO
        connection = DBConn.getInstance().getConnection(); // Ensure DBConn provides a valid connection
        contactDAO = new ContactDAO(connection);

        // Optionally, insert known test data or ensure known state
        // e.g., contactDAO.insertTestData();
    }

    @Test
    public void testGetAllContacts() throws SQLException {
        List<Contact> contacts = contactDAO.getAllContacts();
        assertNotNull(contacts, "Contact list should not be null");
        assertTrue(contacts.size() > 0, "Contact list should contain at least one contact");
    }

    @Test
    public void testGetContactById() throws SQLException {
        // Ensure the database has a contact with ID 1 for testing
        Contact contact = contactDAO.getContactById(21); // Replace with a valid ID for your test data
        assertNotNull(contact, "Contact should not be null");
        assertEquals(15, contact.getId(), "Contact ID should match");
        // Additional assertions to validate other fields if necessary
        // e.g., assertEquals("Expected Name", contact.getName());
    }

    @Test
    public void testDeleteContactById() throws SQLException {
        int contactId = 20; // Replace with the ID of the contact you want to delete

        // Retrieve the contact before deletion
        Contact contact = contactDAO.getContactById(contactId);
        assertNotNull(contact, "Contact should not be null before deletion");

        // Delete the contact
        contactDAO.deleteContact(contactId);

        // Verify that the contact has been deleted
        contact = contactDAO.getContactById(contactId);
        assertNull(contact, "Contact should be null after deletion");
    }
}
