package com.abcres.model;

import java.sql.Date;
import java.sql.Time;

public class Reservation {
    private int id;
    private String name;
    private String email;
    private String phone;
    private String serviceType;
    private Date reservationDate;
    private Time reservationTime;
    private int guests;
    private String status; // Added status field

    // Constructor
    public Reservation(String name, String email, String phone, String serviceType, Date reservationDate, Time reservationTime, int guests, String status) {
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.serviceType = serviceType;
        this.reservationDate = reservationDate;
        this.reservationTime = reservationTime;
        this.guests = guests;
        this.status = status;
    }

    // Default constructor
    public Reservation() {}

    // Getters and setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getPhone() { return phone; }
    public void setPhone(String phone) { this.phone = phone; }

    public String getServiceType() { return serviceType; }
    public void setServiceType(String serviceType) { this.serviceType = serviceType; }

    public Date getReservationDate() { return reservationDate; }
    public void setReservationDate(Date reservationDate) { this.reservationDate = reservationDate; }

    public Time getReservationTime() { return reservationTime; }
    public void setReservationTime(Time reservationTime) { this.reservationTime = reservationTime; }

    public int getGuests() { return guests; }
    public void setGuests(int guests) { this.guests = guests; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
}
