<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.security.MessageDigest" %>
<%@ page import="java.security.NoSuchAlgorithmException" %>
<%@ page import="java.sql.*" %>
<%
	String email_address=request.getParameter("email_address");
	String first_name=request.getParameter("first_name");
	String last_name=request.getParameter("last_name");
	String phone_num=request.getParameter("phone_num");
	//Hashing password
	String password=request.getParameter("password");
	String hashedPassword = hashPassword(password);
    
	String message="";
	String sql="insert into registered_users (email_address, first_name, last_name, phone_num, password) values(?,?,?,?,?)";
	
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aarogya_healthcare_db","root","admin");
		PreparedStatement pt=con.prepareStatement(sql);
		pt.setString(1,email_address );
		pt.setString(2,first_name );
		pt.setString(3,last_name );
		pt.setString(4,phone_num );
		pt.setString(5,hashedPassword );
		
		int i=pt.executeUpdate();
		if(i>0)
		{
			response.sendRedirect("../PatientLogin.jsp");
		}
		else{
			response.sendRedirect("#");
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
		out.println("An Error Occured: "+e.getMessage());
	}
%>
<%!
    private String hashPassword(String password) {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hash = digest.digest(password.getBytes());
            
            StringBuilder hexString = new StringBuilder();
            for (byte b : hash) {
                String hex = Integer.toHexString(0xff & b);
                if (hex.length() == 1) {
                    hexString.append('0');
                }
                hexString.append(hex);
            }
            return hexString.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }
%>
