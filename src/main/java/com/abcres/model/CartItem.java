package com.abcres.model;

import java.sql.Timestamp;

public class CartItem {
    private int id;
    private String itemName;
    private int quantity;
    private double price;
    private double total;
    private String status;
    private Timestamp deliveredAt;
    private Timestamp createdAt;
    
    
 // Default Constructor
    public CartItem() {}

    // Parameterized Constructor
    public CartItem(int id, String itemName, int quantity, double price, double total, String status, Timestamp createdAt, Timestamp deliveredAt) {
        this.id = id;
        this.itemName = itemName;
        this.quantity = quantity;
        this.price = price;
        this.total = total;
        this.status = status;
        this.createdAt = createdAt;
        this.deliveredAt = deliveredAt;
    }
   
    // Getters and setters for all fields

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Timestamp getDeliveredAt() {
        return deliveredAt;
    }

    public void setDeliveredAt(Timestamp deliveredAt) {
        this.deliveredAt = deliveredAt;
    }
    public Timestamp getCreatedAt() {
        return createdAt
        		;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }
}
