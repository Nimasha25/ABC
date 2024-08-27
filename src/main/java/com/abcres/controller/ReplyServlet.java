package com.abcres.controller;

import com.abcres.service.ContactService;
import com.abcres.model.Contact;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;

@WebServlet("/staff/reply-form")
public class ReplyServlet extends HttpServlet {

    private ContactService contactService = new ContactService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int contactId = Integer.parseInt(request.getParameter("id"));
        try {
            Contact contact = contactService.getContactById(contactId);
            request.setAttribute("contact", contact);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/reply-form.jsp");
            dispatcher.forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }
}
