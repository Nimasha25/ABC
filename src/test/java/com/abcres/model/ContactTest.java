package com.abcres.model;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class ContactTest {

    @Test
    public void testDefaultConstructor() {
        Contact contact = new Contact();
        assertNotNull(contact);
        assertEquals(0, contact.getId()); 
        assertNull(contact.getName());
        assertNull(contact.getEmail());
        assertNull(contact.getSubject());
        assertNull(contact.getMessage());
        assertNull(contact.getCreatedAt());
        assertNull(contact.getReply());
    }

    @Test
    public void testContactId() {
        
        Contact contact = new Contact(9, "John Doe", "john@example.com", "Inquiry", "Message text", "Reply text");
        
        
        assertEquals(9, contact.getId()); 
    }

    @Test
    public void testParameterizedConstructorWithoutId() {
       
        Contact contact = new Contact("Jane Doe", "jane@example.com", "Feedback", "Another message");

        
        assertEquals("Jane Doe", contact.getName());
        assertEquals("jane@example.com", contact.getEmail());
        assertEquals("Feedback", contact.getSubject());
        assertEquals("Another message", contact.getMessage());
        assertNull(contact.getReply()); 
    }

    @Test
    public void testGettersAndSetters() {
       
        Contact contact = new Contact();
        contact.setId(2);
        contact.setName("Alice");
        contact.setEmail("alice@example.com");
        contact.setSubject("Support");
        contact.setMessage("Help needed");
        contact.setCreatedAt("2024-08-29");
        contact.setReply("Reply to Alice");

      
        assertEquals(2, contact.getId()); 
        assertEquals("Alice", contact.getName());
        assertEquals("alice@example.com", contact.getEmail());
        assertEquals("Support", contact.getSubject());
        assertEquals("Help needed", contact.getMessage());
        assertEquals("2024-08-29", contact.getCreatedAt());
        assertEquals("Reply to Alice", contact.getReply());
    }

    @Test
    public void testContactWithSampleData() {
        
        Contact contact1 = new Contact(2, "nim", "nim@gmail.com", "food", "food", "go through our page");
        Contact contact2 = new Contact(3, "saduni", "saduni@gmail.com", "complain", "drinks not good", "lets improve it");

       
        assertEquals(2, contact1.getId()); 
        assertEquals("nim", contact1.getName());
        assertEquals("nim@gmail.com", contact1.getEmail());
        assertEquals("food", contact1.getSubject());
        assertEquals("food", contact1.getMessage());
        assertEquals("go through our page", contact1.getReply());

        assertEquals(3, contact2.getId()); 
        assertEquals("saduni", contact2.getName());
        assertEquals("saduni@gmail.com", contact2.getEmail());
        assertEquals("complain", contact2.getSubject());
        assertEquals("drinks not good", contact2.getMessage());
        assertEquals("lets improve it", contact2.getReply());
    }
}
