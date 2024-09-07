package com.abcres.controller;

import com.abcres.model.CartItem;
import com.abcres.service.CartService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/saveCart")
public class CartController extends HttpServlet {
    private CartService cartService = new CartService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CartItem> orders = cartService.getAllOrders();
        request.setAttribute("orders", orders);
        request.getRequestDispatcher("manageOrders.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CartItem> cartItems = new ArrayList<>();

        // Get cart item parameters from the form submission
        String[] itemNames = request.getParameterValues("cartItems[0].itemName");
        String[] quantities = request.getParameterValues("cartItems[0].quantity");
        String[] prices = request.getParameterValues("cartItems[0].price");

        // Ensure data exists for items before proceeding
        if (itemNames != null && quantities != null && prices != null) {
            for (int i = 0; i < itemNames.length; i++) {
                CartItem item = new CartItem();
                item.setItemName(itemNames[i]);
                item.setQuantity(Integer.parseInt(quantities[i]));
                item.setPrice(Double.parseDouble(prices[i]));
                item.setTotal(item.getQuantity() * item.getPrice()); // Set the total
                item.setStatus("Pending"); // Default status for newly added cart items
                cartItems.add(item);
            }
        }

        // Save the cart items
        boolean isSaved = cartService.saveCart(cartItems);

        // Add a success or failure message as a request attribute
        if (isSaved) {
            request.setAttribute("message", "Cart successfully saved!");
        } else {
            request.setAttribute("message", "Failed to save cart. Please try again.");
        }

        // Forward back to the cart.jsp page to display the message
        request.getRequestDispatcher("cart.jsp").forward(request, response);
    }
}