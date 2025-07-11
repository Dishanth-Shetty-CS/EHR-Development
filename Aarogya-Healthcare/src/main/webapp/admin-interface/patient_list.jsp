<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
Connection con = null;
Statement st = null;
ResultSet rs = null;

int totalPatients = 0;

String opname = request.getParameter("opname");
 
try {
	 Class.forName("com.mysql.cj.jdbc.Driver");
     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/aarogya_healthcare_db","root","admin");
     
     st = con.createStatement();
          
     if (opname.equals("deletePatient")) {
    	 String deleteId = request.getParameter("id");
    	 
    	 String updateAppointmentTbPatientFk = "UPDATE appointment_records SET registered_users_email_address = null where registered_users_email_address = \"" + deleteId + "\"";
    	 st.executeUpdate(updateAppointmentTbPatientFk);
    	 
    	 String updatePrescriptionTbPatientFk = "UPDATE prescription SET registered_users_email_address = null where registered_users_email_address = \"" + deleteId + "\"";
    	 st.executeUpdate(updatePrescriptionTbPatientFk);
    	 
    	 String deletePatientSQL = "DELETE FROM registered_users where email_address = \"" + deleteId + "\"";
    	 st.executeUpdate(deletePatientSQL);
     }
     
     //Gets the count of the total registered users
     rs = st.executeQuery("SELECT COUNT(*) FROM registered_users");     
     rs.next();
     totalPatients = rs.getInt(1);
     
     //Gets the Patient List
     String getPatientList = "SELECT * FROM registered_users";
     rs = st.executeQuery(getPatientList);
     
     //---------------------------------------

%>

<div class="list-header">
	<h3>Patient List</h3>
	<h3>Number of Patients: <%= totalPatients %></h3>
</div>

<div class="query-records-container" style="border-top-left-radius: 10px;">		
	<table>
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Phone Number</th>
			<th>Email Address</th>
			<th>Delete Account</th>
		</tr>
		
		<%
			for (int i = 1; i <= totalPatients; i++) {
				rs.next();
		%>
				<tr>
					<td><%= rs.getString(2) %></td>
					<td><%= rs.getString(3) %></td>
					<td style="text-align: center"><%= rs.getString(4) %></td>
					<td><%= rs.getString(1) %></td>
					<td style="text-align: center"><button class="delete-button" id="<%= rs.getString(1) %>" onclick="deletePatient(this.id)">Delete</button></td>
				</tr>
		<%
			}
		%>		
	</table>			
</div>

<%
     con.close();
} catch(Exception e) {            
     e.printStackTrace();
} 
%>