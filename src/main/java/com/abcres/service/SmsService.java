package com.abcres.service;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

public class SmsService {

    // Twilio Account SID and Auth Token
    public static final String ACCOUNT_SID = "AC129115beb0b4ea98555b164aaa3d991b";
    public static final String AUTH_TOKEN = "a2b9dc1da7047f7096c380a4db10626c";
    public static final String FROM_PHONE_NUMBER = "0094766023304";

    static {
        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
    }

    public void sendOrderConfirmationSms(String toPhoneNumber, String orderDetails) {
        Message message = Message.creator(
                new PhoneNumber(toPhoneNumber), // To phone number
                new PhoneNumber(FROM_PHONE_NUMBER), // From Twilio phone number
                orderDetails)
                .create();

        System.out.println("SMS sent: " + message.getSid());
    }
    
    public void sendSms(String toPhoneNumber, String messageBody) {
        // Create and send the SMS message
        Message message = Message.creator(
                new PhoneNumber(toPhoneNumber), // To phone number
                new PhoneNumber(FROM_PHONE_NUMBER), // From Twilio phone number
                messageBody) // SMS body
                .create();

        // Log message SID for confirmation (optional)
        System.out.println("SMS sent: " + message.getSid());
    }
}
