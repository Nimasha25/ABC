package com.abcres.model;

public class Contact {
    private int id;
    private String name;
    private String email;
    private String subject;
    private String message;
    private String createdAt;
    private String reply;

   
    public Contact() {}

    
    public Contact(int id, String name, String email, String subject, String message,String reply) {
    	this.id = id; 
        this.name = name;
        this.email = email;
        this.subject = subject;
        this.message = message;
        this.reply = reply;
    }

    public Contact(String name, String email, String subject, String message) {
        this.name = name;
        this.email = email;
        this.subject = subject;
        this.message = message;
    }
  
    
    
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
