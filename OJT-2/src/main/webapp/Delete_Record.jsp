<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import="java.io.*,java.util.*,java.sql.*"%>

<%

String username = request.getParameter("username");


Connection connection = null;
PreparedStatement statement = null;

try {
  // Establish connection
  Class.forName("com.mysql.jdbc.Driver"); // Replace with your driver class
  connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/patient_management_system", "root", "admin");

  // Create SQL delete statement
  String deleteSQL = "DELETE FROM patient_register WHERE username = ?";
  statement = connection.prepareStatement(deleteSQL);
  statement.setString(1, username);

  // Execute delete
  int rowsDeleted = statement.executeUpdate();

  // Handle delete result (success or failure)
  if (rowsDeleted > 0) {
    out.println("Record deleted successfully!");
  } else {
    //out.println("Error deleting record, or no record found.");
  }
} catch (Exception e) {
  out.println("Error: " + e.getMessage());
} finally {
  // Close resources (connection, statement)
  if (statement != null) {
    statement.close();
  }
  if (connection != null) {
    connection.close();
  }
}
%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete record</title>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 2rem;
  }
  
  form {
    display: flex;
    flex-direction: column;
    align-items: center;
    border: 1px solid #ddd;
    border-radius: 5px;
    padding: 1rem;
    width:500px;
  	height:150px;
  	box-shadow:1px 1px 5px black;
  	position:relative;
  	left:500px;
  }
  
  label {
    margin-bottom: 0.5rem;
    font-weight: bold;
  }
  
  input[type="text"] {
    padding: 0.5rem;
    border: 1px solid #ccc;
    border-radius: 3px;
    width: 480px;
    outline:none;
  }

   input[type="text"]:focus{
   	border:1px solid #007FFF;
   }
   
  .submit-btn {
    background-color: #007FFF;
    color: white;
    padding: 0.7rem 1rem;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    width:500px;
    font-weight:bold;
  }
  
  .submit-btn:hover{
  	background-color:#0072BB
  }
  
</style>
</head>
<body>
  <form method="post">
    <label for="username">Are you sure you want to delete record with username:</label><br>
    <input type="text" name="username" id="username" required>
    <br>
    <input type="submit" value="Delete" class="submit-btn">
  </form>
</body>
</html>
