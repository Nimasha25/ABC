//package com.abcres.service;
//
//import static org.junit.jupiter.api.Assertions.*;
//
//import org.junit.jupiter.api.Test;
//
//import com.abcres.dao.ContactDAO;
//import com.abcres.model.Contact;
//import com.abcres.service.ContactServiceV1;
//import com.abcres.service.ContactService;
//import org.junit.jupiter.api.BeforeEach;
//import org.junit.jupiter.api.Test;
//import org.mockito.Mockito;
//
//import java.sql.SQLException;
//import java.util.Arrays;
//import java.util.List;
//
//import static org.junit.jupiter.api.Assertions.*;
//import static org.mockito.Mockito.*;
//
//public class ContactServiceTest {
//
//    private ContactDAO mockContactDAO;
//    private ContactService contactService;
//
//    @BeforeEach
//    public void setUp() {
//        mockContactDAO = mock(ContactDAO.class);
//        contactService = new ContactService(mockContactDAO);
//    }
//
//    @Test
//    public void testSubmitContact() throws SQLException {
//        Contact contact = new Contact();
//        doNothing().when(mockContactDAO).saveContact(contact);
//
//        contactService.submitContact(contact);
//
//        verify(mockContactDAO, times(1)).saveContact(contact);
//    }
//
//    @Test
//    public void testGetAllContacts() throws SQLException {
//        List<Contact> contacts = Arrays.asList(
//                new Contact(),
//                new Contact()
//        );
//        when(mockContactDAO.getAllContacts()).thenReturn(contacts);
//
//        List<Contact> result = contactService.getAllContacts();
//
//        assertEquals(2, result.size());
//        verify(mockContactDAO, times(1)).getAllContacts();
//    }
//
//    @Test
//    public void testUpdateContact() throws SQLException {
//        Contact contact = new Contact();
//        doNothing().when(mockContactDAO).updateContact(contact);
//
//        contactService.updateContact(contact);
//
//        verify(mockContactDAO, times(1)).updateContact(contact);
//    }
//
//    @Test
//    public void testGetContactById() throws SQLException {
//        int id = 1;
//        Contact contact = new Contact();
//        when(mockContactDAO.getContactById(id)).thenReturn(contact);
//
//        Contact result = contactService.getContactById(id);
//
//        assertNotNull(result);
//        verify(mockContactDAO, times(1)).getContactById(id);
//    }
//
//    @Test
//    public void testDeleteContact() throws SQLException {
//        int id = 1;
//        doNothing().when(mockContactDAO).deleteContact(id);
//
//        contactService.deleteContact(id);
//
//        verify(mockContactDAO, times(1)).deleteContact(id);
//    }
//
//    @Test
//    public void testAddReply() throws SQLException {
//        int id = 1;
//        String reply = "Thank you for your feedback!";
//        Contact contact = new Contact();
//        when(mockContactDAO.getContactById(id)).thenReturn(contact);
//        doNothing().when(mockContactDAO).updateContact(contact);
//
//        contactService.addReply(id, reply);
//
//        verify(mockContactDAO, times(1)).getContactById(id);
//        assertEquals(reply, contact.getReply());
//        verify(mockContactDAO, times(1)).updateContact(contact);
//    }
//
//    @Test
//    public void testGetAllContactsWithReplies() throws SQLException {
//        List<Contact> contacts = Arrays.asList(
//                new Contact(),
//                new Contact()
//        );
//        when(mockContactDAO.getAllContactsWithReplies()).thenReturn(contacts);
//
//        List<Contact> result = contactService.getAllContactsWithReplies();
//
//        assertEquals(2, result.size());
//        verify(mockContactDAO, times(1)).getAllContactsWithReplies();
//    }
//}
