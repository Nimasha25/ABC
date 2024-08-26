package com.abcres.model;

public class Contact {
    private int id;
    private String name;
    private String email;
    private String subject;
    private String message;
    private String createdAt;
    private String reply;

    // Default constructor
    public Contact() {}

    // Constructor
    public Contact(int id, String name, String email, String subject, String message,String reply) {
        this.name = name;
        this.email = email;
        this.subject = subject;
        this.message = message;
        this.reply = reply;
    }
 // Constructor without id
    public Contact(String name, String email, String subject, String message) {
        this.name = name;
        this.email = email;
        this.subject = subject;
        this.message = message;
    }

    // Getters and setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getSubject() { return subject; }
    public void setSubject(String subject) { this.subject = subject; }

    public String getMessage() { return message; }
    public void setMessage(String message) { this.message = message; }
    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }
    
    public String getReply() {
        return reply;
    }

    public void setReply(String reply) {
        this.reply = reply;
    }
}
