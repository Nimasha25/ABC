package com.abcres.service;

import com.abcres.dao.ContactDAO;
import com.abcres.model.Contact;

import java.sql.SQLException;
import java.util.List;

public class ContactServiceV1 {
    private static ContactServiceV1 instance;
    private ContactDAO contactDAO;

    private ContactServiceV1() {
        this.contactDAO = new ContactDAO();
    }

    public static ContactServiceV1 getInstance() {
        if (instance == null) {
            synchronized (ContactServiceV1.class) {
                if (instance == null) {
                    instance = new ContactServiceV1();
                }
            }
        }
        return instance;
    }

    public void submitContact(Contact contact) throws SQLException {
        contactDAO.saveContact(contact);
    }

    public List<Contact> getAllContacts() throws SQLException {
        return contactDAO.getAllContacts();
    }

    public Contact getContactById(int id) throws SQLException {
        return contactDAO.getContactById(id);
    }

    public void updateContact(Contact contact) throws SQLException {
        contactDAO.updateContact(contact);
    }

    public void deleteContact(int id) throws SQLException {
        contactDAO.deleteContact(id);
    }

    public List<Contact> getAllContactsWithReplies() throws SQLException {
        return contactDAO.getAllContactsWithReplies();
    }

    public void addReply(int id, String reply) throws SQLException {
        Contact contact = contactDAO.getContactById(id);
        if (contact != null) {
            contact.setReply(reply);
            contactDAO.updateContact(contact);
        }
    }
}
