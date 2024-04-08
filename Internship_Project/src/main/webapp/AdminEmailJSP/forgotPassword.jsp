<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Forgotten Password</title>
<link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon">
<style>
* {
    box-sizing: border-box;
}

body {
    background-color: #eee;
    color: #505050;
    font-family: "Rubik", Helvetica, Arial, sans-serif;
    font-size: 14px;
    font-weight: normal;
    line-height: 1.5;
    margin: 0;
    padding: 0;
}

.container {
    margin: 80px auto;
    max-width: 600px;
    padding: 0 20px;
}

.forgot {
    background-color: #fff;
    border: 1px solid #dfdfdf;
    padding: 20px;
}

.forgot h2 {
    margin-top: 0;
}

.forgot p {
    margin-bottom: 20px;
}

.list-unstyled {
    padding-left: 20px;
}

.list-unstyled li {
    margin-bottom: 10px;
}

.card-body {
    padding: 20px;
}

.form-group {
    margin-bottom: 20px;
}

.form-control {
    border: 1px solid #dfdfdf;
    border-radius: 4px;
    display: block;
    font-size: 14px;
    padding: 10px;
 	width: 100%;
 	border: 1px solid green;
}

.form-control:focus {
    border-color: #76b7e9;
    box-shadow: 0 0 0 0.1rem rgba(40, 167, 69, 0.25);
    outline: 0;
}

.form-text {
    color: #6c757d;
    font-size: 12px;
}

.card-footer {
    background-color: #fff;
    border-top: 1px solid #dfdfdf;
    padding: 20px;
    
}

.btn {
    background-color: #28a745;
    border: none;
    border-radius: 4px;
    color: #fff;
    cursor: pointer;
    font-size: 14px;
    padding: 10px 20px;
    transition: background-color 0.3s;
}

.btn:hover {
    background-color: #218838;
}
</style>
</head>
<body>
<div class="container">
    <div class="forgot">
        <h2>Forgot your password?</h2>
        <p>Change your password in three easy steps. This will help you to secure your password!</p>
        <ol class="list-unstyled">
            <li><span class="text-primary text-medium"></span>Enter your email address below.</li>
            <li><span class="text-primary text-medium"></span>Our system will send you an Verification Code to your Email Address</li>
            <li><span class="text-primary text-medium"></span>Enter the Verification Code on the next page</li>
        </ol>
    </div>
    <form class="card mt-4" action="../forgotPassword" method="post">
        <div class="card-body">
            <div class="form-group">
                <label for="email-for-pass">Enter your email address</label>
                <input class="form-control" type="text" name="email" id="email-for-pass" required>
                <small class="form-text">Enter the registered email address. Then we'll email a Verification Code to this address.</small>
            </div>
        </div>
        <div class="card-footer">
            <button class="btn" type="submit">Get New Password</button>
        </div>
    </form>
</div>
</body>
</html>
