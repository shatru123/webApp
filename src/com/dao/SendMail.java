package com.dao;
import java.util.Properties;  

import javax.mail.*;  
import javax.mail.internet.*;  


  
public class SendMail
{  
	public void sendmail(String em)
	{	
	String to=em;
	
  
  String host="smtp.gmail.com";  
  final String user="ithubegin@gmail.com";//change accordingly  
  final String password="letsgotopofthehill";//change accordingly  
   //final int prt=465; 
  //String to="ambhoreshatrughna@gmail.com";//change accordingly  
  
   //Get the session object  
   Properties props = new Properties();  
   props.put("mail.smtp.host",host);  
   props.put("mail.smtp.auth", "true");  
   // props.put("mail.smtp.starttls.required","true"); 
   props.put("mail.smtp.starttls.enable","true");  
   props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
	 props.put("mail.smtp.socketFactory.fallback","false"); 
	  props.put("mail.smtp.port",465); 
	   props.put("mail.smtp..socketFactory.port",465); 
  Session session = Session.getDefaultInstance(props,  
    new javax.mail.Authenticator() {  
      protected PasswordAuthentication getPasswordAuthentication() {  
    return new PasswordAuthentication(user,password);  
      }  
    });  
  
   //Compose the message  
    try {  
     MimeMessage message = new MimeMessage(session);  
     message.setFrom(new InternetAddress(user));  
     message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
     message.setSubject("Conformation Mail");  
     message.setText("Thanks For Registration We will Get Back to You Soon!");  
       
    //send the message  
     Transport.send(message);  
  
     //System.out.println("message sent successfully...");  
   
     } catch (MessagingException e) {e.printStackTrace();}  
	}
    public static void main(String[] args) {
 }  
}  