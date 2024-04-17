<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*" %>
<%
	String email_address=request.getParameter("email_address");
	String name=request.getParameter("name");
	String subject=request.getParameter("subject");
	String message=request.getParameter("message");
	String message_status=request.getParameter("message_status");
	String date=request.getParameter("date");
	
	String sql="INSERT INTO query_records (email_address, name, subject, message, message_status, date) VALUES (?,?,?,?,?,?)";
	String err_msg="";
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aarogya_healthcare_db","root","admin");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, email_address);
		ps.setString(2, name);
		ps.setString(3, subject);
		ps.setString(4, message);
		ps.setString(5, message_status);
		ps.setString(6, date);
		
		int rowAffected=ps.executeUpdate();
		if(rowAffected > 0)
		{
			out.println("Query submitted successfully!");
		}
		else{
			out.println("Failed to submit...Please try again later...!");
		}
		con.close();
		ps.close();
	}
	catch(Exception e)
	{
		e.printStackTrace();
		out.println("An Error Occured: "+e.getMessage());
	}
%>

