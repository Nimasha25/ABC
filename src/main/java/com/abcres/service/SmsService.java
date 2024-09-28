package com.abcres.service;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

public class SmsService {

    
    public static final String ACCOUNT_SID = "AC129115beb0b4ea98555b164aaa3d991b";
    public static final String AUTH_TOKEN = "a2b9dc1da7047f7096c380a4db10626c";
    private static final String FROM_PHONE_NUMBER = "+94766023304"; 
    private static final String API_URL = "https://api.smsprovider.com/send";


    static {
        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
    }

    public void sendOrderConfirmationSms(String toPhoneNumber, String orderDetails) {
        Message message = Message.creator(
                new PhoneNumber(toPhoneNumber), 
                new PhoneNumber(FROM_PHONE_NUMBER), 
                orderDetails)
                .create();

        System.out.println("SMS sent: " + message.getSid());
    }
    
    public void sendSms(String toPhoneNumber, String messageBody) {
        
        Message message = Message.creator(
                new PhoneNumber(toPhoneNumber), 
                new PhoneNumber(FROM_PHONE_NUMBER), 
                messageBody) 
                .create();

        
        System.out.println("SMS sent: " + message.getSid());
    }
    
    /**
     * Send a registration confirmation SMS.
     *
     * @param toPhoneNumber The recipient's phone number in E.164 format.
     */
    public void sendRegistrationConfirmationSms(String toPhoneNumber) {
        String messageBody = "Registration Successful! Welcome to our service.";
        sendSms(toPhoneNumber, messageBody);
    }
}
