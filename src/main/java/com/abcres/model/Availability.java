package com.abcres.model;

public class Availability {
    private int day;
    private boolean available;  
    private boolean halfReserved; 

   
    public Availability(int day, boolean available, boolean halfReserved) {
        this.day = day;
        this.available = available;
        this.halfReserved = halfReserved;
    }

    
    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public boolean isAvailable() {
        return available;
    }

    public void setAvailable(boolean available) {
        this.available = available;
    }

    public boolean isHalfReserved() {
        return halfReserved;
    }

    public void setHalfReserved(boolean halfReserved) {
        this.halfReserved = halfReserved;
    }
}
