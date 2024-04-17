let timer;
        let timeLeft = 60;

        function startTimer() {
            timer = setInterval(function() {
                document.getElementById('timer').innerText = `Resend in ${timeLeft} seconds`;
                timeLeft--;

                if (timeLeft < 0) {
                    clearInterval(timer);
                    document.getElementById('timer').innerText = '';
                    document.getElementById('send-code-btn').removeAttribute('disabled');
                }
            }, 1000);
        }

        function sendCode() {
            var email = document.getElementById('email').value;
            
            if (!validateEmail(email)) {
                alert('Please enter a valid email address.');
                return;
            }

            var verificationCode = generateVerificationCode();
            window.confirm(`Verification code sent to your email ${email}`+" : " + `${verificationCode}`);
            
            document.getElementById('send-code-btn').setAttribute('disabled', 'true');
            timeLeft = 60;
            startTimer();
        }

        function verifyCode() {
            var enteredCode = document.getElementById('verification-code').value;
            var generatedCode = sessionStorage.getItem('verificationCode');

            if (enteredCode === generatedCode) {
               alert("Verification Successfull!")
                window.location.href="../PatientDashboard/PatientDashboard.html";
            } else {
                document.getElementById('error-message').innerText = 'Incorrect verification code. Please try again.';
                document.getElementById('success-message').innerText = '';
            }
        }

        function generateVerificationCode() {
            var code = Math.floor(100000 + Math.random() * 900000);
            sessionStorage.setItem('verificationCode', code);
            return code;
        }

        function validateEmail(email) {
            // Simple email validation using regular expression
            var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return emailRegex.test(email);
        }
