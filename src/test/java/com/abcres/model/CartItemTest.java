package com.abcres.model;

import org.junit.jupiter.api.Test;

import java.sql.Timestamp;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class CartItemTest {

    @Test
    public void testDefaultConstructor() {
        CartItem cartItem = new CartItem();

        // Test default values
        assertEquals(0, cartItem.getId());
        assertEquals(null, cartItem.getItemName());
        assertEquals(0, cartItem.getQuantity());
        assertEquals(0.0, cartItem.getPrice());
        assertEquals(0.0, cartItem.getTotal());
        assertEquals(null, cartItem.getStatus());
        assertEquals(null, cartItem.getCreatedAt());
        assertEquals(null, cartItem.getDeliveredAt());
    }

    @Test
    public void testParameterizedConstructor() {
        Timestamp createdAt = new Timestamp(System.currentTimeMillis());
        Timestamp deliveredAt = new Timestamp(System.currentTimeMillis() + 3600000);

        CartItem cartItem = new CartItem(1, "ItemName", 2, 100.0, 200.0, "Pending", createdAt, deliveredAt);

        // Test parameterized constructor
        assertEquals(1, cartItem.getId());
        assertEquals("ItemName", cartItem.getItemName());
        assertEquals(2, cartItem.getQuantity());
        assertEquals(100.0, cartItem.getPrice());
        assertEquals(200.0, cartItem.getTotal());
        assertEquals("Pending", cartItem.getStatus());
        assertEquals(createdAt, cartItem.getCreatedAt());
        assertEquals(deliveredAt, cartItem.getDeliveredAt());
    }

    @Test
    public void testSettersAndGetters() {
        CartItem cartItem = new CartItem();

        Timestamp createdAt = new Timestamp(System.currentTimeMillis());
        Timestamp deliveredAt = new Timestamp(System.currentTimeMillis() + 3600000);

        cartItem.setId(1);
        cartItem.setItemName("ItemName");
        cartItem.setQuantity(2);
        cartItem.setPrice(100.0);
        cartItem.setTotal(200.0);
        cartItem.setStatus("Pending");
        cartItem.setCreatedAt(createdAt);
        cartItem.setDeliveredAt(deliveredAt);

        // Test getters
        assertEquals(1, cartItem.getId());
        assertEquals("ItemName", cartItem.getItemName());
        assertEquals(2, cartItem.getQuantity());
        assertEquals(100.0, cartItem.getPrice());
        assertEquals(200.0, cartItem.getTotal());
        assertEquals("Pending", cartItem.getStatus());
        assertEquals(createdAt, cartItem.getCreatedAt());
        assertEquals(deliveredAt, cartItem.getDeliveredAt());
    }
}
