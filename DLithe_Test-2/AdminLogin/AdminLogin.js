function admin_Login() {
    var username = document.getElementById('username').value;
    var password = document.getElementById('password').value;

    if (username == "admin" && password == "admin123") {
     alert('Login Successfull!');
     window.location.href="../AdminDashboard/AdminDashboard.html";

    } else {
      alert('Invalid username or password. Please try again.');
    }
}