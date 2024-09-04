//package com.abcres.controller;
//
//import com.abcres.dao.ContactDAO;
//import com.abcres.model.Contact;
//import com.abcres.service.ContactService;
//import org.junit.jupiter.api.BeforeEach;
//import org.junit.jupiter.api.Test;
//import org.mockito.InjectMocks;
//import org.mockito.Mock;
//import org.mockito.MockitoAnnotations;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.PrintWriter;
//import java.util.ArrayList;
//import java.util.List;
//
//import static org.mockito.ArgumentMatchers.any;
//import static org.mockito.Mockito.*;
//import static org.junit.jupiter.api.Assertions.*;
//
//public class MessageContactControllerTest {
//
//    @Mock
//    private ContactService contactService;
//
//    @Mock
//    private HttpServletRequest request;
//
//    @Mock
//    private HttpServletResponse response;
//
//    @Mock
//    private RequestDispatcher dispatcher;
//
//    @Mock
//    private PrintWriter printWriter;
//
//    @InjectMocks
//    private MessageContactController messageContactController;
//
//    @BeforeEach
//    public void setUp() throws Exception {
//        MockitoAnnotations.openMocks(this);
//    }
//
//    @Test
//    public void testHandleUserPostRequest_SubmitSuccess() throws Exception {
//        when(request.getRequestURI()).thenReturn("/contact");
//        when(request.getParameter("action")).thenReturn("submit");
//        when(request.getParameter("name")).thenReturn("John Doe");
//        when(request.getParameter("email")).thenReturn("john@example.com");
//        when(request.getParameter("subject")).thenReturn("Subject 1");
//        when(request.getParameter("message")).thenReturn("Message 1");
//        when(response.getWriter()).thenReturn(printWriter);
//
//        messageContactController.doPost(request, response);
//
//        verify(contactService, times(1)).submitContact(any(Contact.class));
//        verify(response, times(1)).sendRedirect(request.getContextPath() + "/contact?successMessage=Your message has been sent successfully!");
//    }
//
//    @Test
//    public void testHandleAdminGetRequest_ListContacts() throws Exception {
//        when(request.getRequestURI()).thenReturn("/admin/contacts");
//        when(request.getParameter("action")).thenReturn("list");
//        when(request.getRequestDispatcher("/WEB-INF/view/manageContacts.jsp")).thenReturn(dispatcher);
//
//        List<Contact> contacts = new ArrayList<>();
//        contacts.add(new Contact(1, "John Doe", "john@example.com", "Subject 1", "Message 1", "Reply 1"));
//        when(contactService.getAllContacts()).thenReturn(contacts);
//
//        messageContactController.doGet(request, response);
//
//        verify(request, times(1)).setAttribute("contacts", contacts);
//        verify(dispatcher, times(1)).forward(request, response);
//    }
//
//    @Test
//    public void testHandleAdminPostRequest_DeleteContact() throws Exception {
//        when(request.getRequestURI()).thenReturn("/admin/contacts");
//        when(request.getParameter("action")).thenReturn("delete");
//        when(request.getParameter("id")).thenReturn("1");
//
//        messageContactController.doPost(request, response);
//
//        verify(contactService, times(1)).deleteContact(1);
//        verify(response, times(1)).sendRedirect(request.getContextPath() + "/admin/contacts?action=list");
//    }
//
//    @Test
//    public void testHandleAdminPostRequest_UpdateContact() throws Exception {
//        when(request.getRequestURI()).thenReturn("/admin/contacts");
//        when(request.getParameter("action")).thenReturn("update");
//        when(request.getParameter("id")).thenReturn("1");
//        when(request.getParameter("name")).thenReturn("John Doe");
//        when(request.getParameter("email")).thenReturn("john@example.com");
//        when(request.getParameter("subject")).thenReturn("Subject 1");
//        when(request.getParameter("message")).thenReturn("Message 1");
//        when(request.getParameter("reply")).thenReturn("Reply 1");
//
//        messageContactController.doPost(request, response);
//
//        verify(contactService, times(1)).updateContact(any(Contact.class));
//        verify(response, times(1)).sendRedirect(request.getContextPath() + "/admin/contacts?action=list");
//    }
//
//    @Test
//    public void testHandleUserGetRequest() throws Exception {
//        when(request.getRequestURI()).thenReturn("/contact");
//        when(request.getRequestDispatcher("/WEB-INF/view/contact.jsp")).thenReturn(dispatcher);
//
//        messageContactController.doGet(request, response);
//
//        verify(dispatcher, times(1)).forward(request, response);
//    }
//
//    @Test
//    public void testHandleAdminGetRequest_EditContact() throws Exception {
//        when(request.getRequestURI()).thenReturn("/admin/contacts");
//        when(request.getParameter("action")).thenReturn("edit");
//        when(request.getParameter("id")).thenReturn("1");
//        when(contactService.getContactById(1)).thenReturn(new Contact(1, "John Doe", "john@example.com", "Subject 1", "Message 1", "Reply 1"));
//        when(request.getRequestDispatcher("/WEB-INF/view/edit_contact.jsp")).thenReturn(dispatcher);
//
//        messageContactController.doGet(request, response);
//
//        verify(request, times(1)).setAttribute(eq("contact"), any(Contact.class));
//        verify(dispatcher, times(1)).forward(request, response);
//    }
//
//    @Test
//    public void testHandleAdminPostRequest_AddContact() throws Exception {
//        when(request.getRequestURI()).thenReturn("/admin/contacts");
//        when(request.getParameter("action")).thenReturn("add");
//        when(request.getParameter("name")).thenReturn("John Doe");
//        when(request.getParameter("email")).thenReturn("john@example.com");
//        when(request.getParameter("subject")).thenReturn("Subject 1");
//        when(request.getParameter("message")).thenReturn("Message 1");
//
//        messageContactController.doPost(request, response);
//
//        verify(contactService, times(1)).submitContact(any(Contact.class));
//        verify(response, times(1)).sendRedirect(request.getContextPath() + "/admin/contacts?action=list");
//    }
//}
