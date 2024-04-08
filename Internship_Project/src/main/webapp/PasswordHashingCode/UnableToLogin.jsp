<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Error</title>
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
    text-align: center;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.5); 
}

h1 {
    font-size: 24px;
    margin-bottom: 15px;
    color: #333;
}

p {
    font-size: 16px;
    color: #666;
    margin-bottom: 20px;
}

a {
    text-decoration: none;
    color: #333;
    padding: 10px 20px;
    border: 1px solid #333;
    border-radius: 3px;
    transition: all 0.2s ease-in-out;
}

a:hover {
    background-color: black;
    color: white;
    font-weight: bold;
}

    </style>
</head>
<body>
    <div class="container">
        <h1>Oops! There seems to be a problem.</h1>
        <p>Unable to login. Please check your credentials and try again.</p>
        <a href="../AdminLogin.jsp">Return to Login</a>
    </div>
</body>
</html>
    