package com.abcres.service;

import com.abcres.dao.ContactDAO;
import com.abcres.model.Contact;
import java.sql.SQLException;
import java.util.List;

public class ContactService {

    private ContactDAO contactDAO = new ContactDAO();

    public void submitContact(Contact contact) throws SQLException {
        contactDAO.saveContact(contact);
    }
    public List<Contact> getAllContacts() throws SQLException {
        return contactDAO.getAllContacts();
    }
    public void updateContact(Contact contact) throws SQLException {
        contactDAO.updateContact(contact); // Ensure this method exists in ContactDAO
    }

    public Contact getContactById(int id) throws SQLException {
        return contactDAO.getContactById(id);
    }

    public void deleteContact(int id) throws SQLException {
        contactDAO.deleteContact(id);
    }
    
 

    public List<Contact> getAllContactsWithReplies() throws SQLException {
        return contactDAO.getAllContactsWithReplies();
    }
    public void addReply(int id, String reply) throws SQLException {
        Contact contact = contactDAO.getContactById(id);
        contact.setReply(reply); // Update the reply in the model
        contactDAO.updateContact(contact); // Save the updated contact
    }
    
}
