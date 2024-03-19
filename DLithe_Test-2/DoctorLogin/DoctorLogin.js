function doctor_login() {
    var username = document.getElementById('username').value;
    var password = document.getElementById('password').value;

    if (username === 'doctor' && password === 'doctor123' || username === 'staff' && password === 'staff123') {
      alert('Login successful!');
      window.location.href="../DoctorDashboard/index.html";

    } else {
      alert('Invalid username or password. Please try again.');
    }
}