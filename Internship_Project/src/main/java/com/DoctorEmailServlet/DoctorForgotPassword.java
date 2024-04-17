package com.DoctorEmailServlet;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class ForgotPassword
 */
@WebServlet("/DoctorForgotPassword")
public class DoctorForgotPassword extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email_address = request.getParameter("email");
		RequestDispatcher dispatcher = null;
		HttpSession mySession = request.getSession();
		
		if(email_address!=null || !email_address.equals("")) {
			Random rand = new Random();
			
			int otpvalue = 100000 + rand.nextInt(900000);

			String to = email_address;
			Properties props = new Properties();
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.socketFactory.port", "465");
			props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.port", "465");
			Session session = Session.getDefaultInstance(props, new jakarta.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("aarogyahealthcare311@gmail.com", "pqlv whsj zuqf rzqs");
				}
			});
			try {
				MimeMessage message = new MimeMessage(session);
				message.setFrom(new InternetAddress(email_address));
				message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
				message.setSubject("Password Reset Verification Code");
				message.setText("Dear Doctor,\r\n"
						+ "\r\n"
						+ "You have requested a password reset for your account. Please use the following verification code to proceed:\r\n"
						+ "\r\n"
						+ "Verification Code is: "+otpvalue+"\r\n"
						+ "\r\n"
						+ "Once you've entered the verification code, you will be able to reset your password and regain access to your account. If you did not initiate this request, please disregard this email.\r\n"
						+ "\r\n"
						+ "Thank you for your attention to this matter.\r\n"
						+ "\r\n"
						+ "Best regards,\r\n"
						+ "Aarogya HealthCare Team\r\n"
						+ "\r\n");
				Transport.send(message);
				System.out.println("Verification Code sent successfully!");
			}

			catch (MessagingException e) {
				throw new RuntimeException(e);
			}
			dispatcher = request.getRequestDispatcher("DoctorEmailJSP/EnterOtp.jsp");
			request.setAttribute("message","Verification code is sent to your Email Address ");
			mySession.setAttribute("otp",otpvalue); 
			mySession.setAttribute("email_address",email_address); 
			dispatcher.forward(request, response);
		}
	}
}
