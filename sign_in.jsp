<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign In</title>
  <link rel="icon" href="../images/TeliChat-logo.png" type="image/x-icon" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="../index-style.css">
  <link rel="stylesheet" href="login-style.css">
</head>
<body>
  <header>    
    <img src="../images/TeliChat-logo.png" class="img-fluid" alt="">
    <h1>TeliChat</h1>
  </header>

  <main>
    <section>
      <form action="" class="forn-wrapper" id="userSignIn" method="post">        
          <div class="input-wrap">
            <h1>Sign In</h1>
            <p id="error"></p>
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required>                
            <label for="password">Password</label>
            <input type="password" name="password" id="password" required>    
            <input type="submit" id="submit" value="Sign In">
            <p><a href="forgot_password.html">Forgot password?</a></p>
          </div>      
      </form>  
      
      <%
      	String username = request.getParameter("username");
   		String password = request.getParameter("password");
      
        try {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/telichat","root","trickortreat");                        
          Statement st = con.createStatement();
          String sql = "SELECT * FROM registered_users where username = \"" + username + "\"";
          ResultSet rs = st.executeQuery(sql);          
          rs.next();          
                   
          String pass = rs.getString(6);
        		  
          if (pass.equals(password)) {
        	  response.sendRedirect("../user-interface/user-interface.html");
          }
          
          con.close();
        } catch(Exception e) {               
          e.printStackTrace();
        }
      %>
      
    </section>

    <section>      
      <p>Don't have an account? <a onclick="window.location.href='sign_up.jsp'" style="color: blue">Sign Up</a></p>      
    </section>
  </main>  

  <footer>      
    <p class="footer">&copy;  2024 TeliChat</p>    
  </footer>  

  <script> 	  
    /*
    const form = document.getElementById("userSignIn");

    form.addEventListener("submit", function(event) {
      event.preventDefault();      
      const formData = new FormData(form);      
      
      const credentials = {
        username: "user",
        password: 1234
      }
            
      if (formData.get("username").replace(/\s/g, "") != credentials.username) {
        document.getElementById("error").innerHTML = "<span style='color: red'>Username or password is incorrect! </span>";
      } else if (formData.get("password") != credentials.password) {
        document.getElementById("error").innerHTML = "<span style='color: red'>Username or password is incorrect! </span>";
      } else {
        window.location.replace("../user-interface/user-interface.html");
      }      
    });    
    */
  </script>
</body>
</html>

