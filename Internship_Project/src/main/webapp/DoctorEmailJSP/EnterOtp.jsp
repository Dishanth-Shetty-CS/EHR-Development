<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>OTP Verification</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }

  .container {
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0,0,0,0.5);
    padding: 40px;
    max-width: 400px;
    width: 100%;
    text-align: center;
  }

  h2 {
    color: #333;
    margin-bottom: 30px;
  }

  input[type="text"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    outline: none;
  }
  
  input[type="text"]:focus{
  	border: 1px solid #337ab7;
  	
  }

  .btn {
    background-color: #337ab7;
    color: #fff;
    border: none;
    border-radius: 4px;
    padding: 12px 20px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s;
  }

  .btn:hover {
    background-color: #286090;
  }
  
  .msg{
  	color: green;
  	font-weight: bold;
  }
</style>
</head>
<body>
  <div class="container">
    <h2>OTP Verification</h2>
    <%
        if(request.getAttribute("message")!=null)
        {
           out.print("<p class='msg'>"+request.getAttribute("message")+"</p>");
        }
     %>
    <form id="otp-form" action="./DoctorValidateOtp" method="POST">
      <input type="text" name="otp" placeholder="Enter OTP(One Time Password)">
      <button type="submit" class="btn">Verify</button>
    </form>
  </div>
</body>
</html>
