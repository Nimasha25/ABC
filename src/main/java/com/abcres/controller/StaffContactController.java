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

@WebServlet("/staff/contact")
public class StaffContactController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ContactService contactService;

    @Override
    public void init() throws ServletException {
        contactService = new ContactService(); 
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        try {
            if ("list".equals(action) || action == null) {
                
                List<Contact> contacts = contactService.getAllContacts();
                request.setAttribute("contacts", contacts);
                request.getRequestDispatcher("/WEB-INF/view/staff_contact_list.jsp").forward(request, response);
            } else if ("view".equals(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                Contact contact = contactService.getContactById(id);
                request.setAttribute("contact", contact);
                request.getRequestDispatcher("/WEB-INF/view/reply_contact.jsp").forward(request, response);
            } else {
                response.sendRedirect(request.getContextPath() + "/WEB-INF/view/error.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred while fetching contact details.");
            request.getRequestDispatcher("/WEB-INF/view/error.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        try {
            if ("reply".equals(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                String reply = request.getParameter("reply");
                contactService.addReply(id, reply);
                response.sendRedirect(request.getContextPath() + "/staff/contact?action=view&id=" + id);
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
