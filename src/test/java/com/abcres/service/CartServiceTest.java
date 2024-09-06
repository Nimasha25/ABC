package com.abcres.service;
import com.abcres.service.CartService;


import com.abcres.dao.CartDAO;
import com.abcres.model.CartItem;



import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

class CartServiceTest {

    private CartDAO mockCartDAO;
    private CartService cartService;

    @BeforeEach
    void setUp() {
        mockCartDAO = mock(CartDAO.class);
        cartService = new CartService(mockCartDAO);
    }

    @Test
    void testSaveCart_Success() {
        List<CartItem> cartItems = new ArrayList<>();
        CartItem item1 = new CartItem(1, "Kottu", 2, 500, 1000, "Pending", null, null);
        cartItems.add(item1);

        when(mockCartDAO.saveCartItem(any(CartItem.class))).thenReturn(true);

        boolean result = cartService.saveCart(cartItems);

        assertTrue(result);
        verify(mockCartDAO, times(1)).saveCartItem(item1);
    }

    @Test
    void testSaveCart_Failure() {
        List<CartItem> cartItems = new ArrayList<>();
        CartItem item1 = new CartItem(1, "Kottu", 2, 500, 1000, "Pending", null, null);
        cartItems.add(item1);

        when(mockCartDAO.saveCartItem(any(CartItem.class))).thenReturn(false);

        boolean result = cartService.saveCart(cartItems);

        assertFalse(result);
        verify(mockCartDAO, times(1)).saveCartItem(item1);
    }

    @Test
    void testGetAllOrders() {
        List<CartItem> cartItems = new ArrayList<>();
        CartItem item1 = new CartItem(1, "Kottu", 2, 500, 1000, "Pending", null, null);
        cartItems.add(item1);

        when(mockCartDAO.getAllOrders()).thenReturn(cartItems);

        List<CartItem> result = cartService.getAllOrders();

        assertEquals(1, result.size());
        assertEquals("Kottu", result.get(0).getItemName());
        verify(mockCartDAO, times(1)).getAllOrders();
    }

    @Test
    void testMarkAsDelivered() {
        when(mockCartDAO.updateOrderStatus(1, "Delivered")).thenReturn(true);

        boolean result = cartService.markAsDelivered(1);

        assertTrue(result);
        verify(mockCartDAO, times(1)).updateOrderStatus(1, "Delivered");
    }

    @Test
    void testUpdateOrderStatus() {
        when(mockCartDAO.updateOrderStatus(1, "Shipped")).thenReturn(true);

        boolean result = cartService.updateOrderStatus(1, "Shipped");

        assertTrue(result);
        verify(mockCartDAO, times(1)).updateOrderStatus(1, "Shipped");
    }
    @Test
    void testSaveMultipleCartItems_Success() {
        List<CartItem> cartItems = new ArrayList<>();
        CartItem item1 = new CartItem(1, "Kottu", 2, 500, 1000, "Pending", null, null);
        CartItem item2 = new CartItem(2, "Hoppers", 3, 200, 600, "Pending", null, null);
        cartItems.add(item1);
        cartItems.add(item2);

        when(mockCartDAO.saveCartItem(any(CartItem.class))).thenReturn(true);

        boolean result = cartService.saveCart(cartItems);

        assertTrue(result);
        verify(mockCartDAO, times(1)).saveCartItem(item1);
        verify(mockCartDAO, times(1)).saveCartItem(item2);
    }
    @Test
    void testSaveMultipleCartItems_PartialFailure() {
        List<CartItem> cartItems = new ArrayList<>();
        CartItem item1 = new CartItem(1, "Kottu", 2, 500, 1000, "Pending", null, null);
        CartItem item2 = new CartItem(2, "Hoppers", 3, 200, 600, "Pending", null, null);
        cartItems.add(item1);
        cartItems.add(item2);

        when(mockCartDAO.saveCartItem(item1)).thenReturn(true);
        when(mockCartDAO.saveCartItem(item2)).thenReturn(false);

        boolean result = cartService.saveCart(cartItems);

        assertFalse(result);
        verify(mockCartDAO, times(1)).saveCartItem(item1);
        verify(mockCartDAO, times(1)).saveCartItem(item2);
    }
    @Test
    void testGetAllOrders_NoOrders() {
        when(mockCartDAO.getAllOrders()).thenReturn(new ArrayList<>());

        List<CartItem> result = cartService.getAllOrders();

        assertTrue(result.isEmpty());
        verify(mockCartDAO, times(1)).getAllOrders();
    }
    @Test
    void testUpdateOrderStatus_InvalidStatus() {
        when(mockCartDAO.updateOrderStatus(1, "InvalidStatus")).thenReturn(false);

        boolean result = cartService.updateOrderStatus(1, "InvalidStatus");

        assertFalse(result);
        verify(mockCartDAO, times(1)).updateOrderStatus(1, "InvalidStatus");
    }
    @Test
    void testCartServiceConstruction() {
        CartService service = new CartService(mockCartDAO);
        assertNotNull(service);
    }

}
