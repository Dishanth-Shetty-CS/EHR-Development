<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.security.MessageDigest" %>
<%@ page import="java.security.NoSuchAlgorithmException" %>
<%@ page import="java.sql.*" %>

<%
    String email_address = request.getParameter("email_address");
    String first_name = request.getParameter("first_name");
    String last_name = request.getParameter("last_name");
    String phone_num = request.getParameter("phone_num");
    String password = request.getParameter("password");
    String confirm_password = request.getParameter("confirm_password");
    String department = request.getParameter("department");
    String message="";
    
    String hashedPassword = hashPassword(password);
    String hashedCPassword = hashPassword(confirm_password);
    
    
   
    try {
        String dbURL = "jdbc:mysql://localhost:3306/aarogya_healthcare_db";
        String dbUsername = "root";
        String dbPassword = "admin";
        String sql = "INSERT INTO registered_doctors (email_address,first_name,last_name,phone_num, password, department) VALUES (?,?,?,?,?,?)";
        
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(dbURL, dbUsername, dbPassword);
        PreparedStatement ps=con.prepareStatement(sql);
        
        ps.setString(1, email_address);
        ps.setString(2, first_name);
        ps.setString(3, last_name);
        ps.setString(4, phone_num);
        ps.setString(5, hashedPassword);
        ps.setString(6, department);
        
        
        if(hashedPassword.equals(hashedCPassword))
        {
        	int i=ps.executeUpdate();
            if(i>0)
            {
            	response.sendRedirect("../DoctorLogin.jsp");
            }
        }
        else{
        	response.sendRedirect("#");
        }
       
        con.close();
        ps.close();
    } catch (Exception e) {
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
