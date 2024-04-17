<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon">
<title>Administrator Login</title>
<style>
body {
	font-family: 'poppins', sans-serif;
	margin: 0;
	padding: 20px;
}

.container {
	width: 400px;
	margin: 0 auto;
	border: 1px solid #ccc;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.5);
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

input[type="email"], input[type="password"] {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
	box-sizing: border-box;
	outline: none;
	font-size: 16px;
}

.form-group input:focus {
	border: 1px solid #007bff;
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

</style>
<title>Administrator | Login</title>
</head>
<body>
	<div class="container">
		<h1>Administrator Login</h1>
		<form id="login-form" action="PasswordHashingCode/Admin-Login-Password-Hashing.jsp" method="post">
			<div class="form-group">
				<label for="email_address">Email Address:</label> <input type="email"
					id="email_address" name="email_address" required>
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					id="password" name="password" required>
			</div>
			<div class="form-group">
				<button type="submit">Login</button>
			</div>
			<p>Forgot Password ?<a href="AdminEmailJSP/forgotPassword.jsp">Click here!</a></p>
		</form>
	</div>
</body>
</html>
