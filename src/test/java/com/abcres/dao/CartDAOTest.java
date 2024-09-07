//package com.abcres.dao;
//
//import com.abcres.model.CartItem;
//import org.junit.jupiter.api.BeforeEach;
//import org.junit.jupiter.api.Test;
//
//import java.sql.Timestamp;
//import java.util.List;
//
//import static org.junit.jupiter.api.Assertions.*;
//
//public class CartDAOTest {
//
//    private CartDAO cartDAO;
//    private CartItem cartItem;
//
//    @BeforeEach
//    public void setUp() {
//        cartDAO = new CartDAO();
//        Timestamp currentTime = new Timestamp(System.currentTimeMillis());
//
//        cartItem = new CartItem();
//        cartItem.setItemName("boba-juice1");
//        cartItem.setQuantity(2);
//        cartItem.setPrice(1500.0);
//        cartItem.setTotal(3000.0);
//        cartItem.setStatus("Pending");
//        cartItem.setCreatedAt(currentTime);
//        cartItem.setDeliveredAt(null); // Not delivered yet
//    }
//
//    @Test
//    public void testSaveCartItem() {
//        boolean isSaved = cartDAO.saveCartItem(cartItem);
//        assertTrue(isSaved, "The cart item should be saved successfully.");
//    }
//
//    @Test
//    public void testUpdateOrderStatus() {
//        // First save the cart item
//        boolean isSaved = cartDAO.saveCartItem(cartItem);
//        assertTrue(isSaved, "The cart item should be saved successfully.");
//
//        // Retrieve the cart item ID
//        int cartItemId = getCartItemId(cartItem);
//        assertTrue(cartItemId > 0, "The cart item ID should be greater than 0.");
//
//        // Update the order status
//        boolean isUpdated = cartDAO.updateOrderStatus(cartItemId, "Confirmed");
//        assertTrue(isUpdated, "Order status should be updated successfully.");
//
//        // Verify the status update
//        CartItem updatedItem = cartDAO.getCartItemById(cartItemId);
//        assertNotNull(updatedItem, "Updated cart item should not be null.");
//        assertEquals("Confirmed", updatedItem.getStatus(), "Order status should be 'Confirmed'.");
//    }
//
//    @Test
//    public void testMarkAsDelivered() {
//        // First save the cart item
//        boolean isSaved = cartDAO.saveCartItem(cartItem);
//        assertTrue(isSaved, "The cart item should be saved successfully.");
//
//        // Retrieve the cart item ID
//        int cartItemId = getCartItemId(cartItem);
//        assertTrue(cartItemId > 0, "The cart item ID should be greater than 0.");
//
//        // Mark the order as delivered
//        boolean isDelivered = cartDAO.markAsDelivered(cartItemId);
//        assertTrue(isDelivered, "The order should be marked as delivered.");
//
//        // Verify the delivery status
//        CartItem deliveredItem = cartDAO.getCartItemById(cartItemId);
//        assertNotNull(deliveredItem, "Delivered cart item should not be null.");
//        assertEquals("Delivered", deliveredItem.getStatus(), "Order status should be 'Delivered'.");
//        assertNotNull(deliveredItem.getDeliveredAt(), "Delivered at timestamp should not be null.");
//    }
//
//    @Test
//    public void testGetAllOrders() {
//        // Save a cart item
//        cartDAO.saveCartItem(cartItem);
//
//        // Create and save another cart item
//        Timestamp currentTime = new Timestamp(System.currentTimeMillis());
//        CartItem anotherItem = new CartItem();
//        anotherItem.setItemName("BBQ Ribs");
//        anotherItem.setQuantity(1);
//        anotherItem.setPrice(1400.0);
//        anotherItem.setTotal(1400.0);
//        anotherItem.setStatus("Pending");
//        anotherItem.setCreatedAt(currentTime);
//        anotherItem.setDeliveredAt(null);
//        cartDAO.saveCartItem(anotherItem);
//
//        // Retrieve all orders
//        List<CartItem> orders = cartDAO.getAllOrders();
//        assertNotNull(orders, "The orders list should not be null.");
//        assertFalse(orders.isEmpty(), "The orders list should not be empty.");
//
//        // Optionally, validate the contents of the list
//        CartItem firstItem = orders.get(0);
//        assertNotNull(firstItem.getItemName(), "Item name should not be null.");
//        assertTrue(firstItem.getQuantity() > 0, "Quantity should be greater than 0.");
//        assertTrue(firstItem.getPrice() > 0, "Price should be greater than 0.");
//    }
//
//    @Test
//    public void testDeleteCartItem() {
//        // First save the cart item
//        boolean isSaved = cartDAO.saveCartItem(cartItem);
//        assertTrue(isSaved, "The cart item should be saved successfully.");
//
//        // Retrieve the cart item ID
//        int cartItemId = getCartItemId(cartItem);
//        assertTrue(cartItemId > 0, "The cart item ID should be greater than 0.");
//
//        // Delete the cart item
//        boolean isDeleted = cartDAO.deleteCartItem(cartItemId);
//        assertTrue(isDeleted, "The cart item should be deleted successfully.");
//
//        // Verify that the item has been deleted
//        CartItem deletedItem = cartDAO.getCartItemById(cartItemId);
//        assertNull(deletedItem, "The cart item should be null after deletion.");
//    }
//
//    // Method to get the ID of the cart item
//    private int getCartItemId(CartItem cartItem) {
//        List<CartItem> orders = cartDAO.getAllOrders();
//        for (CartItem item : orders) {
//            if (item.getItemName().equals(cartItem.getItemName()) && item.getQuantity() == cartItem.getQuantity()) {
//                return item.getId();
//            }
//        }
//        return -1; // Return -1 if not found (you may want to handle this better in your actual implementation)
//    }
//}
