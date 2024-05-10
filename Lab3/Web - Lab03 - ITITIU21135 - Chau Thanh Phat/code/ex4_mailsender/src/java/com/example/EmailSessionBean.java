/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example;

import jakarta.ejb.LocalBean;
import jakarta.ejb.Stateless;
import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import java.util.Date;
import java.util.Properties;

/**
 *
 * @author thanhphatchau
 */
@LocalBean
@Stateless
public class EmailSessionBean {
        private int port = 465;
        private String host ="smtp.example.com";
        private String from ="iamayase0018@gmail.com";
        private boolean auth = true;
        private String username ="iamayase0018@gmail.com";
        private String password ="gefp droj vtcu xgfb";
        private Protocol protocol = Protocol.SMTPS;
        private boolean debug = true;
    public void sendEmail (String to, String subject, String body){
        Properties props = new Properties();
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port",port);
        switch(protocol){
            case SMTPS:
                props.put("mail.smtp.ssl.enable", true);
                break;
            case TLS:
                props.put("mail.smtp.starttls.enable", true);
                break;
        }
        Authenticator authenticator = null;
if (auth) {
    props.put("mail.smtp.auth", true);
    authenticator = new Authenticator() {
        private PasswordAuthentication pa = new PasswordAuthentication(username, password);
        @Override
        public PasswordAuthentication getPasswordAuthentication() {
            return pa;
        }
    };
}

Session session = Session.getInstance(props, authenticator);
session.setDebug(debug);

MimeMessage message = new MimeMessage(session);
try {
    message.setFrom(new InternetAddress(from));
    InternetAddress[] address = {new InternetAddress(to)};
    message.setRecipients(Message.RecipientType.TO, address);
    message.setSubject(subject);
    message.setSentDate(new Date());
    message.setText(body);
    Transport.send(message);
} catch (MessagingException ex) {
    ex.printStackTrace();
}


        
    }
    
    
}
