package javaClass;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Email {

	//CODE FROM - https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-using-smtp-java.html
	
    
    static final String FROM = "116376836@umail.ucc.ie";
    static final String FROMNAME = "Conor Murphy";
	
   
    //static final String TO = "116376836@umail.ucc.ie";
    
    static final String SMTP_USERNAME = "AKIATUMQXWKLALKB4QPW";
    static final String SMTP_PASSWORD = "BDF8fTbqR89T/xP/8zBGAjauRxRqrCYEwsJg2zBGDkka";
    static final String HOST = "email-smtp.eu-west-1.amazonaws.com";
    static final int PORT = 587;
    
   //Possibe - add to calander 

    public void emailConfirmSignUp(String TO, String location, String startTime, String endTime, String firstName) throws Exception {
    	 
    	//String TO = "116376836@umail.ucc.ie";
    	
    	 String SUBJECT = "Volunteering signup Confirmation";
    	    
    	 String BODY = String.join(
    	    	    System.getProperty("line.separator"),
    	    	    "<h1>Volunteering Confirmation</h1>",
    	    	    "<h3>Hi " + firstName +"</h3>",
    	    	    "<p>Thnak you for siginging up to volunteer at" + location + " ", 
    	    	    " from " + startTime + " to " + endTime + "",
    	    	    "you can log in to view and edit your availability here"
    	    	);

        // Create a Properties object to contain connection configuration information.
    	Properties props = System.getProperties();
    	props.put("mail.transport.protocol", "smtp");
    	props.put("mail.smtp.port", PORT); 
    	props.put("mail.smtp.starttls.enable", "true");
    	props.put("mail.smtp.auth", "true");

        // Create a Session object to represent a mail session with the specified properties. 
    	Session session = Session.getDefaultInstance(props);

        // Create a message with the specified information. 
        MimeMessage msg = new MimeMessage(session);
        msg.setFrom(new InternetAddress(FROM,FROMNAME));
        msg.setRecipient(Message.RecipientType.TO, new InternetAddress(TO));
        msg.setSubject(SUBJECT);
        msg.setContent(BODY,"text/html");

        // Create a transport.
        Transport transport = session.getTransport();
                    
        // Send the message.
        try
        {
            System.out.println("Sending...");
            
            // Connect to Amazon SES using the SMTP username and password you specified above.
            transport.connect(HOST, SMTP_USERNAME, SMTP_PASSWORD);
        	
            // Send the email.
            transport.sendMessage(msg, msg.getAllRecipients());
            System.out.println("Email sent!");
        }
        catch (Exception ex) {
            System.out.println("The email was not sent.");
            System.out.println("Error message: " + ex.getMessage());
        }
        finally
        {
            // Close and terminate the connection.
            transport.close();
        }
    }
}
