<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon">
<style>
body {
	font-family: 'poppins', sans-serif;
	margin: 0;
	padding: 20px;
}

.container {
	width: 500px;
	margin: 0 auto;
	border: 1px solid #ccc;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.5);
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

input[type="text"], input[type="email"], input[type="tel"], input[type="date"],
	input[type="password"] {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
	box-sizing: border-box;
	outline: none;
	font-size: 16px;
}

#department{
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
	box-sizing: border-box;
	outline: none;
	cursor:pointer;
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
<title>Patient Registration</title>
</head>
<body>
	<div class="container">
		<h1>Doctor Registration</h1>
		<form id="registration-form" method="post" action="./PasswordHashingCode/Doctor-Register-Password-Hashing.jsp">
			<div class="form-group">
				<label for="first_name">First Name:</label> <input type="text"
					id="first_name" name="first_name" required>
			</div>
			<div class="form-group">
				<label for="last_name">Last Name:</label> <input type="text"
					id="last_name" name="last_name" required>
			</div>
			<div class="form-group">
				<label for="email">Email:</label> <input type="email" id="email_address"
					name="email_address" required>
			</div>
			<div class="form-group">
				<label for="phone_num">Phone Number:</label> <input type="tel"
					id="phone_num" name="phone_num" required>
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					id="password" name="password" required>
			</div>
			<div class="form-group">
				<label for="confirm_password">Confirm Password:</label> <input
					type="password" id="confirm_password" name="confirm_password"
					required>
			</div>
			<div class="form-group">
				<label for="department">Department: </label> 
				<select name="department" id="department">
					<option value="">---select department</option>
					<option value="cardiology">Cardiology</option>
					<option value="Endocrinology">Endocrinology</option>
					<option value="Gastroenterology">Gastroenterology</option>
					<option value="Nephrology">Nephrology</option>
					<option value="Oncology">Oncology</option>
				</select>
			</div>
			<div class="form-group">
				<a href="PatientRegister.jsp"><button
						type="submit">Register</button></a>
			</div>
			<p>
				Already have an account? <a href="DoctorLogin.jsp">Login here</a>
			</p>
		</form>
	</div>
</body>
</html>
