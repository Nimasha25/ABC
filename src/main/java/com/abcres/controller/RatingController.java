package com.abcres.controller;

import com.abcres.dao.RatingDAO;
import com.abcres.model.Rating;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/submitRating")
public class RatingController extends HttpServlet {

    private RatingDAO ratingDAO;

    @Override
    public void init() throws ServletException {
        ratingDAO = new RatingDAO(); 
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
           
            int ratingValue = Integer.parseInt(request.getParameter("rating"));
            String customerName = request.getParameter("customerName");
            int itemId = Integer.parseInt(request.getParameter("itemId")); 

            
            Rating rating = new Rating();
            rating.setRating(ratingValue);
            rating.setCustomerName(customerName);
            rating.setItemId(itemId);

           
            ratingDAO.saveRating(rating);

            
            response.sendRedirect("rating_success.jsp");

        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid input");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while processing your rating");
        }
    }
}
