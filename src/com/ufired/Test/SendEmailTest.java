package com.ufired.Test;
import java.util.Properties;  
import javax.mail.*;  
import javax.mail.internet.*;  
  
public class SendEmailTest {  
 public static void main(String[] args) {  
  
  final String user="SenderEmailAddress";//change accordingly  
  final String password="02011991";//change accordingly  
    
  String to="ReceiverEmailAddress";//change accordingly  
  
   //Get the session object  
  Properties props = new Properties();  
  props.setProperty("mail.transport.protocol", "smtp");     
  props.setProperty("mail.host", "smtp.gmail.com");  
  props.put("mail.smtp.auth", "true");  
  props.put("mail.smtp.port", "587");  
  props.put("mail.debug", "true");  
  props.put("mail.smtp.socketFactory.port", "465");  
  props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");  
  props.put("mail.smtp.socketFactory.fallback", "false");  
   //props.put("mail.smtp.localhost", host);
     
  Session session = Session.getDefaultInstance(props, 
		    new javax.mail.Authenticator(){
		        protected PasswordAuthentication getPasswordAuthentication() {
		            return new PasswordAuthentication(
		                user, password);// Specify the Username and the PassWord
		        }
		});  
  
   //Compose the message  
    try {  
     MimeMessage message = new MimeMessage(session);  
     message.setFrom(new InternetAddress(user));  
     message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
     message.setSubject("Send Email Test");  
     message.setText("This is simple program of sending email using JavaMail API");  
       
    //send the message  
     Transport transport = session.getTransport("smtp");
     transport.connect("smtp.gmail.com", 465, "username", "password");
     transport.sendMessage(message, message.getAllRecipients());
     transport.close();
  
     System.out.println("message sent successfully...");  
   
     } catch (MessagingException e) {e.printStackTrace();}  
 }  
 
 //Note:-https://myaccount.google.com/lesssecureapps?pli=1:-  Access this link and make Allow less secure apps ON
 
}  