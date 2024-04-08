<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
	String appointment_date=request.getParameter("appointment_date");
	String appointment_time=request.getParameter("appointment_time");
	String appointment_type=request.getParameter("appointment_type");
	String appointment_status=request.getParameter("appointment_status");
	String registered_users_email_address="girishkumar235@gmail.com";
	String registered_doctors_email_address="shettydeepa458@gmail.com";
	String mesage="";
	
	String sql="INSERT INTO appointment_records (appointment_date,appointment_time,appointment_type,appointment_status,registered_users_email_address,registered_doctors_email_address) VALUES (?,?,?,?,?,?)";
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aarogya_healthcare_db","root","admin");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, appointment_date);
		ps.setString(2, appointment_time);
		ps.setString(3, appointment_type);
		ps.setString(4, appointment_status);
		ps.setString(5, "girishkumar235@gmail.com");
		ps.setString(6, "shettydeepa458@gmail.com");
		
		int rowAffected=ps.executeUpdate();
		if(rowAffected>0)
		{
			out.println("<h1>Appointment recorded successfully!</h1>");
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
		out.println("An Error Occured: "+e.getMessage());
	}
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon">
<title>Appointment Booking</title>
<style>
  body {
    font-family: 'poppins', sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f7f7f7;
    color: #333;
  }

  h1 {
    text-align: center;
    color: #2c3e50;
  }

  #appointmentForm {
    max-width: 600px;
    margin: 20px auto;
    padding: 20px;
    background-color: #ecf0f1;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
  }

  input, button {
    margin: 10px 0;
    padding: 10px;
    width: 100%;
    display: block;
    box-sizing: border-box;
    border-radius: 5px;
    outline: none;
    border: 2px solid grey;
    cursor:pointer;
    font-size: 16px;
  }

  #appointment_type{
   margin: 10px 0;
   width: 100%;
   outline: none;
   padding: 10px;
   border: 2px solid grey;
   border-radius: 5px;
   cursor:pointer;
   font-size: 16px;
}
	
  #appointment_status{
   margin: 10px 0;
   width: 100%;
   outline: none;
   padding: 10px;
   border: 2px solid grey;
   border-radius: 5px;
   cursor:pointer;
   font-size: 16px;
	}
	
  input[type="text"]
  {
  width: 100%;
  font-size: 16px;
  }

  button {
    background-color: #3498db;
    color: white;
    border: none;
    cursor: pointer;
    font-weight: bolder;
    font-size: 16px;
    padding: 12px;
    border-radius: 5px;
    transition: .6s ease;
  }

  button:hover {
    background-color: #2980b9;
  }

  .container {
    max-width: 800px;
    margin: 20px auto;
    background-color: white;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    overflow: hidden;
  }

</style>
</head>
<body>
  <h1>Book an Appointment</h1>
  <form id="appointmentForm" method="get">
    <input type="date" id="appointment_date" required>
    <input type="time" id="appointment_time" required>
    <select name="appointment_type" id="appointment_type">
    	<option value="">---select type---</option>
    	<option value="consultation">Consultation</option>
	    <option value="follow-up">Follow-up</option>
	    <option value="Procedure">Procedure</option>
	    <option value="physical-exam">Physical Exam</option>
	    <option value="Immunization">Immunization</option>
	    <option value="Urgent Care">Urgent Care</option>
    </select>
    <select name="appointment_status" id="appointment_status">
    	<option value="">---select status---</option>
    	<option value="Pending">Pending</option>
	    <option value="Confirmed">Confirmed</option>
	    <option value="Cancelled">Cancelled</option>
	    <option value="physical-exam">Completed</option>
    </select>
    
    <button type="submit">Add Appointment</button>
  </form>
</body>
</html>
