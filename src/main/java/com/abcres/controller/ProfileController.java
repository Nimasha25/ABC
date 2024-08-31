package com.abcres.controller;

import com.abcres.model.Customer;
import com.abcres.service.CustomerServiceV1;
import com.abcres.dao.CustomerDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.sql.SQLException;

@WebServlet("/customer/profile")
public class ProfileController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private CustomerServiceV1 customerService;

    @Override
    public void init() throws ServletException {
        super.init();
        CustomerDAO customerDAO = new CustomerDAO();
        customerService = CustomerServiceV1.getInstance(customerDAO);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("loggedInCustomer");
        request.setAttribute("customer", customer);
        request.getRequestDispatcher("/WEB-INF/view/profile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("loggedInCustomer");

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phoneNumber");
        String password = request.getParameter("password");

        Part profilePicPart = request.getPart("profilePic");
        String profilePicFilename = Paths.get(profilePicPart.getSubmittedFileName()).getFileName().toString();

        try {
            customer.setFirstName(firstName);
            customer.setLastName(lastName);
            customer.setEmail(email);
            customer.setPhoneNumber(phoneNumber);

            if (!password.isEmpty()) {
                customer.setPassword(password);
            }

            if (profilePicPart != null && !profilePicFilename.isEmpty()) {
                String uploadPath = getServletContext().getRealPath("") + File.separator + "images" + File.separator + "profiles";
                File uploadDir = new File(uploadPath);
                if (!uploadDir.exists()) uploadDir.mkdir();

                profilePicPart.write(uploadPath + File.separator + profilePicFilename);
                customer.setProfilePic(profilePicFilename);
            }

            customerService.updateCustomer(customer);
            session.setAttribute("loggedInCustomer", customer);

            response.sendRedirect(request.getContextPath() + "/customer/profile");
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred while updating the profile. Please try again.");
            request.getRequestDispatcher("/WEB-INF/view/profile.jsp").forward(request, response);
        }
    }
}
