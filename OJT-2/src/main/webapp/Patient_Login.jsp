<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
	body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 20px;
}

.container {
  width: 400px;
  margin: 0 auto;
  border: 1px solid #ccc;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0,0,0,0.5);
  position: relative;
  top: 150px;
}

h1 {
  text-align: center;
  margin-bottom: 20px;
}

.form-group {
  margin-bottom: 15px;
}

label {
  display: block;
  margin-bottom: 5px;
}

input[type="text"],
input[type="password"] {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 3px;
  box-sizing: border-box;
  outline: none;
}

.form-group input:focus{
  border:1px solid  #007bff;
}
button {
  background-color:  #007bff;
  width: 100%;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  font-weight: bold;
  font-size: 15px;
}

button:hover {
  background-color:  #1d87f9;
}

a {
  color: #007bff;
  text-decoration: none;
  font-weight: bold;
}

a:hover {
  text-decoration: underline;
}

p{
  text-align: center;
}
	
</style>
<title>Patient Login</title>
</head>
<body>
	<%
  	String username = request.getParameter("username");
		String password = request.getParameter("password");
  
    try {
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/patient_management_system","root","admin");                        
      Statement st = con.createStatement();
      String sql = "SELECT * FROM patient_register where username = \"" + username + "\"";
      ResultSet rs = st.executeQuery(sql);          
      rs.next();          
               
      String pass = rs.getString(7);
    		  
      if (pass.equals(password)) {
    	  response.sendRedirect("#");
      }
      con.close();
    } catch(Exception e) {               
      e.printStackTrace();
    }
  %>
  <div class="container">
  <h1>Patient Login</h1>
        <form id="login-form" method="get">
            <div class="form-group">
                <label for="username">User Name:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
         	<a href="Update_Record.jsp">Forgot Password?</a><br><br>
            <div class="form-group">
                <button type="submit">Login</button>
            </div>
            <p>Don't have an account? <a href="Patient_Register.jsp">Register Now!</a></p>
        </form>
    </div>
</body>
</html>
