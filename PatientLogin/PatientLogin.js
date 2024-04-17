function Patient_Login() {
    var username = document.getElementById('username').value;
    var password = document.getElementById('password').value;

    if (username === 'patient' && password === 'patient123') {
      alert('Login successful!');

    } else {
      alert('Invalid username or password. Please try again.');
    }
}