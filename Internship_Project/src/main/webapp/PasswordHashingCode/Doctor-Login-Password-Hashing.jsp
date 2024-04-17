<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.security.MessageDigest" %>
<%@ page import="java.security.NoSuchAlgorithmException" %>
<%@ page import="java.sql.*" %>
<%
	String email_address=request.getParameter("email_address");
	String password=request.getParameter("password");
	
	String hashedPassword = hashPassword(password);
    
	String message="";
	String sql = "SELECT email_address, password from registered_doctors";
	boolean found = false;

	try {
	      Class.forName("com.mysql.cj.jdbc.Driver");
	      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aarogya_healthcare_db","root","admin");                        
	      Statement st = con.createStatement();
	      ResultSet rs = st.executeQuery(sql);          
	      
	      while (rs.next()) {          
	    	  String retrieved_email_address=rs.getString(1);
	          String retrieved_password = rs.getString(2);
	    		  
	          if (retrieved_email_address.equals(email_address) && retrieved_password.equals(hashedPassword)) {
	        	  response.sendRedirect("../User-Interfaces/doctor_interface.jsp");
	        	  found = true; 
	        	  break;
	          }
	      }
	      
	      if (!found) { 
	    	  out.println("<h1>Failed to Login... Please check your credentials and try again.</h1>");
	      }
	      
	      con.close();
	      st.close();
	      rs.close();
	    } catch(Exception e) {               
	      e.printStackTrace();
	      out.println("An Error Occurred: " + e.getMessage());
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
