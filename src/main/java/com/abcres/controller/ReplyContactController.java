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

@WebServlet("/admin/reply-contact")
public class ReplyContactController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ContactService contactService;

    @Override
    public void init() throws ServletException {
        contactService = new ContactService(); 
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            Contact contact = contactService.getContactById(id);
            request.setAttribute("contact", contact);
            request.getRequestDispatcher("/WEB-INF/view/reply_contact.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred while fetching contact details.");
            request.getRequestDispatcher("/WEB-INF/view/error.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String reply = request.getParameter("reply");
            contactService.addReply(id, reply);
            response.sendRedirect(request.getContextPath() + "/admin/contact-admin?action=list");
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred while processing your request.");
            request.getRequestDispatcher("/WEB-INF/view/error.jsp").forward(request, response);
        }
    }
}
