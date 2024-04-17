<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>

<%

	String password = request.getParameter("password");
	String username = request.getParameter("username");
	
	Connection connection = null;
	PreparedStatement statement = null;
	
	try {
	  // Establish connection
	  Class.forName("com.mysql.jdbc.Driver"); 
	  connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/patient_management_system", "root", "admin");
	
	  // Create SQL update statement
	  String updateSQL = "UPDATE patient_register SET password = ? WHERE username = ?";
	  statement = connection.prepareStatement(updateSQL);
	
	  statement.setString(1, password);
	  statement.setString(2, username);
	
	  int rowsUpdated = statement.executeUpdate();
	
	  if (rowsUpdated > 0) {
	    out.println("Record updated successfully!");
	  } else {
	    out.println("Error updating record.");
	  }
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">  
<title>Update Record</title>
<style>
body {
  font-family: Arial, sans-serif;  
  margin: 0;  padding: 20px;  
  background-color: #f0f0f0;  }

form {
  width: 500px;  
  margin: auto;  
  border: 1px solid #ccc;  
  padding: 20px;  
  border-radius: 5px;  
  background-color: #fff;  
  line-height:50px;
  border-radius:10px;
  box-shadow:1px 1px 5px black;
  }

label {
  display: block;  
  margin-bottom: 5px;  
  font-weight: bold;  
  }

input[type="text"], input[type="password"] {
  width: 100%;  
  padding: 10px;  
  border: 1px solid #ccc;  
  border-radius: 3px; 
   outline:none; 
  }
  

input[type="submit"] {
  background-color: #007FFF;  
  color: white;  
  padding: 10px 20px;  
  border: none;  
  border-radius: 5px;  
  cursor: pointer;  
  font-weight:bold;
  font-size:16px;
  width:500px;
  }

input[type="submit"]:hover 
{ 
  background-color: #0072BB;  
  }
 
</style>
</head>
<body>
    
  <form method="post">
  <h1 align="center">Update Record</h1>			
    <label for="username">User Name:</label>
    <input type="text" id="username" name="username" required><br>

    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required><br><br>

    <input type="submit" value="Update">  
   </form>
</body>
</html>

