package com.abcres.model;

import java.util.Date;
import java.util.List;

public class Order {
    private int id;
    private String name;
    private double price;
    private int quantity;
    private double total;
    private Date orderDate;
    private String status;
    private List<OrderItemClass> items; // Add this field

    // Getters and Setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public List<OrderItemClass> getItems() { // Add this method
        return items;
    }

    public void setItems(List<OrderItemClass> items) { // Add this method
        this.items = items;
    }
}
