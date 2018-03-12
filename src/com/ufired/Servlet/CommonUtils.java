package com.ufired.Servlet;

import java.security.MessageDigest;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class CommonUtils {
  public static final String SALT = "my-salt-text";
  
  public CommonUtils() {}
  
  public static String generateHash(String input) { StringBuilder hash = new StringBuilder();
    try
    {
      MessageDigest sha = MessageDigest.getInstance("SHA-1");
      byte[] hashedBytes = sha.digest(input.getBytes());
      char[] digits = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'a', 'b', 'c', 'd', 'e', 'f' };
      for (int idx = 0; idx < hashedBytes.length; idx++) {
        byte b = hashedBytes[idx];
        hash.append(digits[((b & 0xF0) >> 4)]);
        hash.append(digits[(b & 0xF)]);
      }
    }
    catch (java.security.NoSuchAlgorithmException localNoSuchAlgorithmException) {}
    

    return hash.toString();
  }
  
  public static boolean sendEmail(String senderEmail,String senderEmailPwd,String receiverEmail, String otpValue){
	  boolean emailSent = false;
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
	  Session session = Session.getDefaultInstance(props, 
			  new javax.mail.Authenticator(){
		  protected PasswordAuthentication getPasswordAuthentication() {
			  return new PasswordAuthentication(
					  senderEmail, senderEmailPwd);// Specify the Username and the PassWord
		  }
	  });   
	  //Compose the message  
	  try {  
		  MimeMessage message = new MimeMessage(session);  
		  message.setFrom(new InternetAddress(senderEmail));  
		  message.addRecipient(Message.RecipientType.TO,new InternetAddress(receiverEmail));  
		  message.setSubject("Send Email Test");   
		  message.setText("Please Enter otp and proceed for registeration :: " +otpValue);  		  
		//  message.setText(otpValue);  
		  //send the message  
		  Transport transport = session.getTransport("smtp");
		  transport.connect("smtp.gmail.com", 465, senderEmail, senderEmailPwd);
		  transport.sendMessage(message, message.getAllRecipients());
		  transport.close(); 
		  emailSent = true;
	  } catch (MessagingException e) {
		  emailSent = false;
		  e.printStackTrace();}   
	  return emailSent;
  }
}
