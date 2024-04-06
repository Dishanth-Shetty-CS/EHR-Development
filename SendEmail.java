package com.test;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class SendEmail
 */
@SuppressWarnings("serial")
public class SendEmail extends HttpServlet {						
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
		//The code that gets the data from the database to send the email		
		JDBC data = new JDBC();		
		
		//The code that sends email
		GEmailSender gEmailSender = new GEmailSender();
        String to = data.getUserData()[1]; 
        String from = data.getAdminData()[0];         
        String subject = req.getParameter("subject");  
        String text = req.getParameter("text");
        boolean b = gEmailSender.sendEmail(to, from, subject, text);
        
        PrintWriter out = res.getWriter();
        
        if (b) {
            out.println("Email is sent successfully");
        } else {
            out.println("There is problem in sending email");
        }
                        
	}	
}
