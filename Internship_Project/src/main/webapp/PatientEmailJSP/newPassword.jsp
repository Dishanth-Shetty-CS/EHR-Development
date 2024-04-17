<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon">
<title>Getting New Password...</title>
<style>
body {
	font-family: sans-serif;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	background-color: #f0f0f0; 
}

.container {
	background-color: #fff; 
	border-radius: 5px;
	padding: 30px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.5);
}

h1 {
	text-align: center;
	margin-bottom: 20px;
	font-size: 24px;
	color: #333; 
}

label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
	color: #333;
}

input[type="password"] {
	width: 100%;
	padding: 10px 15px;
	border: 1px solid #ccc;
	border-radius: 3px;
	box-sizing: border-box;
	margin-bottom: 15px;
	font-size: 16px;
	outline: none;
}

input[type="password"]:focus {
}

button[type="submit"] {
	background-color: #3399ff;
	color: #fff; 
	border: none;
	padding: 10px 15px;
	border-radius: 3px;
	cursor: pointer;
	font-size: 16px;
	transition: .6s ease;
}

button[type="submit"]:hover {
	background-color: #2eafff;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Reset Your Password</h1>
		<form action="./PatientNewPassword" method="post">
			<label for="password">New Password:</label>
			<input type="password" id="password" name="password" required>
			<label for="confPassword">Confirm Password:</label>
			<input type="password" id="confPassword" name="confPassword" required>
			<button type="submit">Reset Password</button>
		</form>
	</div>
</body>
</html>
