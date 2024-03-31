<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<%
	String username=request.getParameter("username");
	String firstname=request.getParameter("firstname");
	String lastname=request.getParameter("lastname");
	String email=request.getParameter("email");
	String birthdate=request.getParameter("birthdate");
	String phoneno=request.getParameter("phoneno");
	String password=request.getParameter("password");
	String cpassword=request.getParameter("cpassword");
	
	String sql="INSERT INTO patient_register(username,firstname,lastname,email, birthdate, phoneno, password, cpassword) VALUES (?,?,?,?,?,?,?,?)";

	try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/patient_management_system","root","admin");
	PreparedStatement pt=con.prepareStatement(sql);
	pt.setString(1,username);
	pt.setString(2, firstname);
	pt.setString(3,lastname);
	pt.setString(4,email);
	pt.setString(5,birthdate);
	pt.setString(6,phoneno);
	pt.setString(7,password);
	pt.setString(8,cpassword);
	
	int i=pt.executeUpdate();
	if(i>0)
	{
		out.println("Successfully registered!");
	}
	else
	{
		out.println("Failed to register!");
	}
	con.close();
	}
	catch(Exception e)
	{
		
		e.printStackTrace();
	}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Registration</title>
    <style>
    	body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 20px;
}

.container {
    width: 500px;
    margin: 0 auto;
    border: 1px solid #ccc;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.5);
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
input[type="email"],
input[type="tel"],
input[type="date"],
input[type="password"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
    box-sizing: border-box;
    outline: none;
}

.form-group input:focus{
    border:1px solid #007bff;
}
button {
    background-color: #007bff;
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
    background-color: #1d87f9;
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
</head>
<body>
    <div class="container">
        <h1>Patient Registration</h1>
        <form id="registration-form" method="post">
            <div class="form-group">
                <label for="username">User Name:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="firstname">First Name:</label>
                <input type="text" id="firstname" name="firstname" required>
            </div>
            <div class="form-group">
                <label for="lastname">Last Name:</label>
                <input type="text" id="lastname" name="lastname" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="birthdate">Birth Date:</label>
                <input type="date" id="birthDate" name="birthdate" required>
            </div>
            <div class="form-group">
                <label for="phoneno">Phone Number:</label>
                <input type="tel" id="phoneno" name="phoneno" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="cpassword">Confirm Password:</label>
                <input type="password" id="cpassword" name="cpassword" required>
            </div>
            <div class="form-group">
                <button type="submit">Register</button>
            </div>
            <p>Already have an account? <a href="Patient_Login.jsp">Login here</a></p>
        </form>
    </div>


</body>
</html>

