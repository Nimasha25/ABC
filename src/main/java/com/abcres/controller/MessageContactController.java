package com.abcres.controller;

import com.abcres.model.Contact;
import com.abcres.service.ContactService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet({"/contact", "/admin/contacts"})
public class MessageContactController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ContactService contactService;

    @Override
    public void init() throws ServletException {
        contactService = new ContactService(); 
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (request.getRequestURI().contains("/admin/contacts")) {
            handleAdminGetRequest(request, response, action);
        } else {
            handleUserGetRequest(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (request.getRequestURI().contains("/admin/contacts")) {
            handleAdminPostRequest(request, response, action);
        } else {
            handleUserPostRequest(request, response, action);
        }
    }

    private void handleUserGetRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        request.getRequestDispatcher("/Contact.jsp").forward(request, response);
    }

    private void handleUserPostRequest(HttpServletRequest request, HttpServletResponse response, String action) throws ServletException, IOException {
        if ("submit".equals(action)) {
            try {
               
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String subject = request.getParameter("subject");
                String message = request.getParameter("message");
                
                
                Contact contact = new Contact(name, email, subject, message);

                
                contactService.submitContact(contact);

                
                response.sendRedirect(request.getContextPath() + "/contact?successMessage=Your message has been sent successfully!");
            } catch (SQLException e) {
                e.printStackTrace();
                request.setAttribute("errorMessage", "An error occurred while processing your request.");
                request.getRequestDispatcher("/WEB-INF/view/error.jsp").forward(request, response);
            }
        } else {
            
            response.sendRedirect(request.getContextPath() + "/WEB-INF/view/error.jsp");
        }
    }

    private void handleAdminGetRequest(HttpServletRequest request, HttpServletResponse response, String action) throws ServletException, IOException {
        try {
            if ("list".equals(action) || action == null) {
                
                List<Contact> contacts = contactService.getAllContacts();
                request.setAttribute("contacts", contacts);
                request.getRequestDispatcher("/WEB-INF/view/manageContacts.jsp").forward(request, response);
            } else if ("edit".equals(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                Contact contact = contactService.getContactById(id);
                request.setAttribute("contact", contact);
                request.getRequestDispatcher("/WEB-INF/view/edit_contact.jsp").forward(request, response);
            } else if ("add".equals(action)) {
                request.getRequestDispatcher("/WEB-INF/view/add_contact.jsp").forward(request, response);
            } else {
                response.sendRedirect(request.getContextPath() + "/WEB-INF/view/error.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred while fetching contact details.");
            request.getRequestDispatcher("/WEB-INF/view/error.jsp").forward(request, response);
        }
    }

    private void handleAdminPostRequest(HttpServletRequest request, HttpServletResponse response, String action) throws ServletException, IOException {
        try {
            if ("delete".equals(action)) {
               
                int id = Integer.parseInt(request.getParameter("id"));
                contactService.deleteContact(id);
                response.sendRedirect(request.getContextPath() + "/admin/contacts?action=list");
            } else if ("update".equals(action)) {
                
                int id = Integer.parseInt(request.getParameter("id"));
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String subject = request.getParameter("subject");
                String message = request.getParameter("message");
                String reply = request.getParameter("reply");
                Contact contact = new Contact(id, name, email, subject, message, reply);
                contactService.updateContact(contact);
                response.sendRedirect(request.getContextPath() + "/admin/contacts?action=list");
            } else if ("add".equals(action)) {
               
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String subject = request.getParameter("subject");
                String message = request.getParameter("message");
                Contact contact = new Contact(name, email, subject, message);
                contactService.submitContact(contact);
                response.sendRedirect(request.getContextPath() + "/admin/contacts?action=list");
            } else {
                response.sendRedirect(request.getContextPath() + "/WEB-INF/view/error.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred while processing your request.");
            request.getRequestDispatcher("/WEB-INF/view/error.jsp").forward(request, response);
        }
    }
}
