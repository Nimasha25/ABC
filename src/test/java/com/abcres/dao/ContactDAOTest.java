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
        
        connection = DBConn.getInstance().getConnection(); 
        contactDAO = new ContactDAO(connection);

       
    }

    @Test
    public void testGetAllContacts() throws SQLException {
        List<Contact> contacts = contactDAO.getAllContacts();
        assertNotNull(contacts, "Contact list should not be null");
        assertTrue(contacts.size() > 0, "Contact list should contain at least one contact");
    }

    @Test
    public void testGetContactById() throws SQLException {
    
        Contact contact = contactDAO.getContactById(21); 
        assertNotNull(contact, "Contact should not be null");
        assertEquals(15, contact.getId(), "Contact ID should match");
        
    }

    @Test
    public void testDeleteContactById() throws SQLException {
        int contactId = 20;

     
        Contact contact = contactDAO.getContactById(contactId);
        assertNotNull(contact, "Contact should not be null before deletion");

      
        contactDAO.deleteContact(contactId);

    
        contact = contactDAO.getContactById(contactId);
        assertNull(contact, "Contact should be null after deletion");
    }
}
