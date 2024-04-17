<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%@ page import="java.sql.*"%>

<%
Connection con = null;
Statement st = null;
ResultSet rs = null;



int totalAppointments = 0;
int totalPrescriptions=0;
int totalVisits=0;

try {
	 Class.forName("com.mysql.cj.jdbc.Driver");
     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/aarogya_healthcare_db","root","admin");
     
     st = con.createStatement();
     
   	 //Gets the count of the tables
     String getTotalPrescriptions = "SELECT COUNT(*) FROM prescription";
     String getTotalAppointments = "SELECT COUNT(*) FROM appointment_records";    
     
     rs = st.executeQuery(getTotalPrescriptions);
     rs.next();
     totalPrescriptions = rs.getInt(1);     
         
     
     rs = st.executeQuery(getTotalAppointments);
     rs.next();
     totalAppointments = rs.getInt(1);
         
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
  <link rel="shortcut icon" href="assets/images/HealthCareLogo.png" type="image/x-icon">
  <title>Patient Interface</title>
  <link rel="stylesheet" href="patient_interface.css">
  <link rel="icon" href="../images/favicon.png" type="image/x-icon"> 
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>  
  <header id="header">     
    <a href="#" id="logo">
      Aarogya Healthcare
    </a>               
    
    <nav>
      <div class="logout-container" onclick="">
        <i class="fa-solid fa-right-from-bracket"></i>
        <button>Logout</button>
      </div>
    </nav>
  </header>         

  <main id="main">  
    <div id="sidebar">    
      
      <div class="sidebar-options">      
        <i class="fa-solid fa-house-chimney"></i>  
        <p>Dashboard</p>
      </div>         

      <div class="sidebar-options">
        <i class="fa-solid fa-book-medical"></i>        
        <p>Book Appointment</p>
      </div>

      <div class="sidebar-options">  
        <i class="fa-solid fa-calendar-check"></i>      
        <a href="../ViewAllAppointments.jsp"><p>My Appointments</p></a>
      </div>

      <div class="sidebar-options">   
        <i class="fa-solid fa-prescription"></i>     
        <p>Prescription</p>
      </div>

      <div class="sidebar-options">
        <i class="fa-solid fa-kit-medical"></i>
        <p>Add Appointments</p>
      </div>  
    </div>

    <div id="right-body">
      <div class="dashboard-top-container">
        <div class="view-details" style="border-left: 10px solid orange;">          
          <p>Total Appointments : <%=totalAppointments %></p>
        </div>

        <div class="view-details" style="border-left: 10px solid rgb(1, 234, 255);">
          <p>Total Prescription : <%=totalPrescriptions %></p>
        </div>

        <div class="view-details" style="border-left: 10px solid greenyellow;">
          <p>Total Visits : <%=00 %></p>
        </div>
      </div>

      <div class="dashboard-bottom-container">
        <div id="query-records">
          
        </div>
      </div>
    </div>
  </main>

  <script src="patient_interface.js"></script>
</body>
</html>