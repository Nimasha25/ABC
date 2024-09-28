package com.abcres.service;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 * Utility class to send emails using Gmail's SMTP server.
 */
public class EmailUtil {

  
    private static final String SMTP_HOST = "smtp.gmail.com";
    private static final int SMTP_PORT = 587; 
    private static final String FROM = "sandunkariyawasam320@gmail.com"; 
    private static final String USERNAME = "sandunkariyawasam320@gmail.com"; 
    private static final String PASSWORD = "oizz tydf bhdh fjpk"; 

    /**
     * Sends an email using the Gmail SMTP server.
     * 
     * @param to       The recipient's email address
     * @param subject  The subject of the email
     * @param body     The body of the email
     */
    public static void sendEmail(String to, String subject, String body) {
        
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", SMTP_HOST);
        props.put("mail.smtp.port", SMTP_PORT);

        
        Session session = Session.getInstance(props,
            new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(USERNAME, PASSWORD);
                }
            });

        try {
            // Create a default MimeMessage object
            Message message = new MimeMessage(session);

            // Set From: header field of the header
            message.setFrom(new InternetAddress(FROM));

            // Set To: header field of the header
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));

            // Set Subject: header field
            message.setSubject(subject);

            // Set the actual message
            message.setText(body);

            // Send the message
            Transport.send(message);

            System.out.println("Sent message successfully....");

        } catch (MessagingException e) {
            e.printStackTrace(); 
            throw new RuntimeException("Error sending email: " + e.getMessage(), e);
        }
    }
}
