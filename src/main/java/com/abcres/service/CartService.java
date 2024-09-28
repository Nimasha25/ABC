package com.abcres.service;

import com.abcres.dao.CartDAO;

import com.abcres.model.CartItem;
import java.util.List;



public class CartService {
    private CartDAO cartDAO = new CartDAO();

    public boolean saveCart(List<CartItem> cartItems) {
        for (CartItem item : cartItems) {
            if (!cartDAO.saveCartItem(item)) {
                return false;
            }
        }
        return true;
    }
 
    public CartService() {
        this.cartDAO = new CartDAO();
    }

   
    public CartService(CartDAO cartDAO) {
        this.cartDAO = cartDAO;
    }

    public List<CartItem> getAllOrders() {
        return cartDAO.getAllOrders();
    }

    public boolean markAsDelivered(int id) {
        return cartDAO.updateOrderStatus(id, "Delivered");
    }

    public boolean updateOrderStatus(int id, String status) {
        return cartDAO.updateOrderStatus(id, status);
    }
}
