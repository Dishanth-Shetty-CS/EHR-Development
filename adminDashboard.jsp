<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
Connection con = null;
Statement st = null;
ResultSet rs = null;

int totalPatients = 0;
int totalDoctors = 0;
int totalAppointments = 0;
int totalQueries = 0;

try {
	 Class.forName("com.mysql.cj.jdbc.Driver");
     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/aarogya_healthcare_db","root","trickortreat");
     
     st = con.createStatement();
     
   	 //Gets the count of the tables
     String getTotalPatients = "SELECT COUNT(*) FROM registered_users";
     String getTotalDoctors = "SELECT COUNT(*) FROM registered_doctors";
     String getTotalAppointments = "SELECT COUNT(*) FROM appointment_records";    
     String getTotalQueries = "SELECT COUNT(*) FROM query_records";	
     
     rs = st.executeQuery(getTotalPatients);          
     rs.next();
     totalPatients = rs.getInt(1);     
     
     rs = st.executeQuery(getTotalDoctors);
     rs.next();
     totalDoctors = rs.getInt(1);     
     
     rs = st.executeQuery(getTotalAppointments);
     rs.next();
     totalAppointments = rs.getInt(1);
     
     rs = st.executeQuery(getTotalQueries);
     rs.next();
     totalQueries = rs.getInt(1);     
     
     //-------------------------------------
     
     //Gets the Query Records
     String queryRecordsSQL = "SELECT * FROM query_records";
     
     rs = st.executeQuery(queryRecordsSQL);     
     
     //-------------------------------------
%>


<div class="dashboard-top-container">
	<div class="view-details" style="border-left: 10px solid orange;">
		<p id="appointments">Total Appointments: <%= totalAppointments %></p>
	</div>

	<div class="view-details"
		style="border-left: 10px solid rgb(1, 234, 255);">
		<p id="doctors">Total Doctors: <%= totalDoctors %></p>
	</div>

	<div class="view-details" style="border-left: 10px solid greenyellow;">
		<p id="patients">Total Patients: <%= totalPatients %></p>
	</div>
</div>

<div class="dashboard-bottom-container">
    <h3>Query List</h3>
	
	<div class="container-tabs">
		<p class="container-tabs-options" id="active-container-tabs" onclick="loadUnreadQueries()">Unread Queries</p>
		<p class="container-tabs-options" onclick="loadReadQueries()">Read Queries</p>
		
		<div id="query-count-container">
		    <h3 id="query-count">Number of queries: <%= totalQueries %></h3>	
		</div>
	</div>

	<div id="query-records">
		<div class="query-records-container">

			<div class="query-columns">
				<p class="query-head">Date</p>
				<div class="query-body">
					<%
						for (int i = 1; i <= totalQueries; i++) {
							rs.next();
							%>					
								<p><%= rs.getString(7) %></p>
							<%
						}
					%>
				</div>
			</div>

			<div class="query-columns">
				<p class="query-head">Name</p>
				<div class="query-body">
					<%
						rs = st.executeQuery(queryRecordsSQL);
						for (int i = 1; i <= totalQueries; i++) {
							rs.next();
							%>					
								<p><%= rs.getString(3) %></p>
							<%
						}
					%>		
				</div>
			</div>

			<div class="query-columns">
				<p class="query-head">Subject</p>
				<div class="query-body">
					<%
						rs = st.executeQuery(queryRecordsSQL);
						for (int i = 1; i <= totalQueries; i++) {
							rs.next();
							%>					
								<p><%= rs.getString(4) %></p>
							<%
						}
					%>
				</div>
			</div>

			<div class="query-columns">
				<p class="query-head">View Message</p>
				<div class="query-body">
					<%
						rs = st.executeQuery(queryRecordsSQL);
						for (int i = 1; i <= totalQueries; i++) {
							rs.next();
							%>													
								<i class="fa-solid fa-envelope" onclick="showMessage(this)"></i>								
			
					 			<div class="message" id="<%= rs.getString(1) %>">
									<i class="fa-solid fa-square-xmark" onclick="closeMessage(this)"></i>
									<p><%= rs.getString(5) %></p>
								</div>
							<%
						}
					%>					
				</div>
			</div>

			<div class="query-columns">
				<p class="query-head">Email Address</p>
				<div class="query-body">
					<%
						rs = st.executeQuery(queryRecordsSQL);
						for (int i = 1; i <= totalQueries; i++) {
							rs.next();
							%>					
								<p><%= rs.getString(2) %></p>
							<%
						}
					%>
				</div>
			</div>

		</div>
	</div>
</div>
    
    
<%
     con.close();
} catch(Exception e) {            
     e.printStackTrace();
} 
%>
