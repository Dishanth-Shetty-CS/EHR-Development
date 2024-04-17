package com.DoctorEmailServlet;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class ValidateOtp
 */
@WebServlet("/DoctorValidateOtp")
public class DoctorValidateOtp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int value=Integer.parseInt(request.getParameter("otp"));
		HttpSession session=request.getSession();
		int otp=(int)session.getAttribute("otp");
		
		
		
		RequestDispatcher dispatcher=null;
		
		
		if (value==otp) 
		{
			
				request.setAttribute("email_address", request.getParameter("email_address"));
				request.setAttribute("status", "success");
			  dispatcher=request.getRequestDispatcher("DoctorEmailJSP/newPassword.jsp");
			dispatcher.forward(request, response);
			
		}
		else
		{
			request.setAttribute("message","Invalid verification code");
			
		   dispatcher=request.getRequestDispatcher("DoctorEmailJSP/EnterOtp.jsp");
			dispatcher.forward(request, response);
		
		}
		
	}

}
