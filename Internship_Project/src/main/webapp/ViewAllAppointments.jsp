<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%
	String app_id=request.getParameter("appointment_id");
	String app_date=request.getParameter("appointment_date");
	String app_time=request.getParameter("appointment_time");
	String app_type=request.getParameter("appointment_type");
	String app_status=request.getParameter("appointment_status");
	String sql="INSERT INTO appointments (app_id, app_date, app_time, app_type, app_status) values(?,?,?,?,?);";
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aarogya_healthcare_db","root", "admin");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,app_id);
		ps.setString(2,app_date);
		ps.setString(3,app_time);
		ps.setString(4,app_type);
		ps.setString(5,app_status);
			
		int i=ps.executeUpdate();
		
		if(i>0)
		{
			out.println("Appointment has been successfully recorded!");
		}else{
			out.println("Failed to appoint...Please try again later...!");
		}
		con.close();
		ps.close();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
%>


<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Appointment Booking</title>
<style>
  body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
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
  }

  input[type="date"],
  input[type="time"] {
    width: calc(50% - 10px);
  }

  input[type="text"],
  input[type="email"],
  input[type="tel"] {
    width: 100%;
  }

  button {
    background-color: #005C29;
    color: white;
    border: none;
    cursor: pointer;
    font-weight: bolder;
    font-size: 16px;
    padding: 12px;
    border-radius: 5px;
    transition: background-color 0.3s ease;
  }

  button:hover {
    background-color: #228C22;
  }

  .container {
    max-width: 800px;
    margin: 20px auto;
    background-color: white;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
    overflow: hidden;
  }

  table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;

  }
  
  #edit_btn{
  	width:90px;
	position:relative;
	left:92%;
	top:-128px;
	background-color:#005C29;
  }
  
 
</style>
</head>
<body>
</body>
</html>


<%
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/aarogya_healthcare_db", "root", "admin");
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM appointment_records");

        out.println("<html>");
        out.println("<head>");
        out.println("<meta charset=\"UTF-8\">");
        out.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
        out.println("<title>Appointments</title>");
        out.println("<style>");
        out.println("table {");
        out.println("    width: 100%;");
        out.println("    border-collapse: collapse;");
        out.println("    margin-top: 20px;");
        out.println("}");
        out.println("th, td {");
        out.println("    border: 1px solid #dddddd;");
        out.println("    text-align: left;");
        out.println("    padding: 8px;");
        out.println("}");
        out.println("tr:nth-child(even) {");
        out.println("    background-color: #f2f2f2;");
        out.println("}");
        out.println("</style>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Appointment Lists</h1>");
        out.println("<table>");
        out.println("<tr>");
        out.println("<th>Appointment Id</th>");
        out.println("<th>Appointment Date</th>");
        out.println("<th>Appointment Time</th>");
        out.println("<th>Appointment Type</th>");
        out.println("<th>Appointment Status</th>");
	        

        while (rs.next()) {
            out.println("<tr>");
            out.println("<td>" + rs.getString("appointment_id") + "</td>");
            out.println("<td>" + rs.getString("appointment_date") + "</td>");
            out.println("<td>" + rs.getString("appointment_time") + "</td>");
            out.println("<td>" + rs.getString("appointment_type") + "</td>");
            out.println("<td>" + rs.getString("appointment_status") + "</td>");
            out.println("</tr>");
        }

        out.println("</table>");
        out.println("</body>");
        out.println("</html>");

        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>