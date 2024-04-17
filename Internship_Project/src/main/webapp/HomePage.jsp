<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Aarogya Healthcare - Easily store and access the patient
	records.</title>
<link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="assets/css/normalize.css">
<link rel="stylesheet" href="assets/css/main.css">
</head>

<body>
	<header class="header bg-blue">
		<nav class="navbar bg-blue">
			<div class="container flex">
				<a href="HomePage.jsp" class="navbar-brand"> <img
					src="assets/images/HealthCareLogo.png" alt="site logo">
				</a>
				<button type="button" class="navbar-show-btn">
					<img src="assets/images/ham-menu-icon.png">
				</button>

				<div class="navbar-collapse bg-white">
					<button type="button" class="navbar-hide-btn">
						<img src="assets/images/close-icon.png">
					</button>
					<ul class="navbar-nav">
						<li class="nav-item"><a href="#home" class="nav-link">Home</a>
						</li>
						<li class="nav-item"><a href="#about" class="nav-link">About</a>
						</li>
						<li class="nav-item"><a href="#services" class="nav-link">Services</a>
						</li>
						<li class="nav-item"><a href="#contact" class="nav-link">Contact</a>
						</li>
						<li class="nav-item"><a href="PatientLogin.jsp"
							class="nav-link">Patient Login</a></li>
						<li class="nav-item"><a href="PatientRegister.jsp"
							class="nav-link">Patient Registration</a></li>
						<li class="nav-item"><a href="DoctorLogin.jsp"
							class="nav-link">Doctor/Staff Login</a></li>
					</ul>
				</div>
			</div>
		</nav>

		<div class="header-inner text-white text-center">
			<div class="container grid">
				<div class="header-inner-left">
					<h1>
						<span>Aarogya Healthcare</span>
					</h1>
					<p class="lead">We Are Best Health Service</p>
					<p class="text text-md">
						Health is a state of complete physical, mental and social
						well-being and not merely the absence of disease or infirmity. <br>
						<br> The enjoyment of the highest attainable standard of
						health is one of the fundamental rights of every human being
						without distinction of race, religion, political belief, economic
						or social condition.
					</p>
					<div class="btn-group">
						<a href="PatientLogin.jsp" class="btn btn-white">Get Started</a>
					</div>
				</div>
				<div class="header-inner-right">
					<img src="assets/images/hero-banner.png" height="100%">
				</div>
			</div>
		</div>
	</header>
	<!-- end of header -->

	<main>
		<!-- about section -->
		<section id="about" class="about py">
			<div class="about-inner">
				<div class="container grid">
					<div class="about-left text-center">
						<div class="section-head">
							<h2>About Us</h2>
							<div class="border-line"></div>
						</div>
						<p class="text text-lg">We at Aarogya Healthhcare are
							passionate about empowering individuals and families to achieve
							their best health. We believe in building trusting relationships
							with our patients, providing compassionate care tailored to their
							needs. Our team is dedicated to staying at the fore front of
							medical advancements, offering a blend of experience and
							cutting-edge technology. Together, we strive to create a
							supportive and welcoming environment where your well-being is our
							top priority.</p>
						<a href="#" class="btn btn-white" id="about-btn">Learn More</a>
					</div>
					<div class="about-right flex">
						<div class="img">
							<img src="assets/images/about-us.jpg">
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- end of about section -->

		<!-- banner one -->
		<section id="banner-one" class="banner-one text-center">
			<div class="container text-white">
				<blockquote class="lead">
					<i class="fas fa-quote-left"></i> When you are young and healthy,
					it never occurs to you that in a single second your whole life
					could change. <i class="fas fa-quote-right"></i>
				</blockquote>
				<small class="text text-sm">- Anonim Nano</small>
			</div>
		</section>
		<!-- end of banner one -->

		<!-- services section -->
		<section id="services" class="services py">
			<div class="container">
				<div class="section-head text-center">
					<h2 class="lead">The Best Doctor gives the least medicines</h2>
					<p class="text text-lg">A perfect way to show your healthcare
						services</p>
					<div class="line-art flex">
						<div></div>
						<img src="assets/images/4-dots.png">
						<div></div>
					</div>
				</div>
				<div class="services-inner text-center grid">
					<article class="service-item">
						<div class="icon">
							<img src="assets/images/service-icon-1.png">
						</div>
						<h3>Cardio Monitoring</h3>
						<p class="text text-sm">Cardio monitoring is the process of
							tracking your heart activity, usually by measuring its electrical
							signals. This is done to check for irregular heartbeats
							(arrhythmias) or other heart problems. There are different ways
							to do this, from short tests in a doctor's office to wearing a
							small device for days or weeks at home.</p>
					</article>

					<article class="service-item">
						<div class="icon">
							<img src="assets/images/service-icon-2.png">
						</div>
						<h3>Medical Treatment</h3>
						<p class="text text-sm">Medical treatment refers to the care
							provided by healthcare professionals to combat illness or injury.
							This can involve medications, surgery, therapy, or other
							interventions aimed at curing the condition, alleviating
							symptoms, or managing a chronic health problem.</p>
					</article>

					<article class="service-item">
						<div class="icon">
							<img src="assets/images/service-icon-3.png">
						</div>
						<h3>Emergency Help</h3>
						<p class="text text-sm">Emergency help refers to assistance
							you need in a critical situation. This situation is typically
							unexpected, urgent, and poses a danger to your life, health,
							safety, or property. It often requires immediate action to
							prevent the situation from worsening.</p>
					</article>

					<article class="service-item">
						<div class="icon">
							<img src="assets/images/service-icon-4.png">
						</div>
						<h3>First Aid</h3>
						<p class="text text-sm">First aid refers to the initial
							support provided to someone who is sick or injured, before they
							can receive full medical attention. It's about giving basic care
							to preserve life, prevent the situation from getting worse, or
							promote healing until professional help arrives. This could
							involve things like stopping bleeding, controlling pain, or
							performing CPR.</p>
					</article>
				</div>
			</div>
		</section>

		<!-- package services section -->
		<section id="package-service" class="package-service py text-center">
			<div class="container">
				<div class="package-service-head text-white">
					<h2>Our Services</h2>
					<p class="text text-lg">Best service package for you</p>
				</div>
				<div class="package-service-inner grid">
					<div class="package-service-item bg-white">
						<div class="icon flex">
							<i class="fas fa-phone fa-2x"></i>
						</div>
						<h3>Regular Case</h3>
						<p class="text text-sm">The new patient management system
							allows doctors to easily access patient records and medications.
							Our clinic uses a user-friendly patient management system to
							schedule appointments and track referrals. With the new system,
							nurses can quickly update patient information and send
							appointment reminders.</p>
						<a href="#" class="btn btn-blue">Read More</a>
					</div>

					<div class="package-service-item bg-white">
						<div class="icon flex">
							<i class="fas fa-calendar-alt fa-2x"></i>
						</div>
						<h3>Serious Case</h3>
						<p class="text text-sm">The hospital's outdated patient
							management system led to a critical medication error,
							jeopardizing a patient's life. A data breach in the clinic's
							patient management system exposed sensitive medical records,
							putting countless patients at risk of identity theft. Delays in
							accessing patient information.</p>
						<a href="#" class="btn btn-blue">Read More</a>
					</div>

					<div class="package-service-item bg-white">
						<div class="icon flex">
							<i class="fas fa-comments fa-2x"></i>
						</div>
						<h3>Emergency Case</h3>
						<p class="text text-sm">The hospital's outdated patient
							management system led to a critical medication error,
							jeopardizing a patient's life. A data breach in the clinic's
							patient management system exposed sensitive medical records,
							putting countless patients at risk of identity theft, Delays in
							accessing patient information.</p>
						<a href="#" class="btn btn-blue">Read More</a>
					</div>
				</div>
			</div>
		</section>
		<!-- end of package services section -->



		<!-- contact section -->
		<section id="contact" class="contact py">
			<div class="container grid">
				<div class="contact-left">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2384.6268289831164!2d-6.214682984112116!3d53.29621947996855!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x486709e0c9c80f8f%3A0x92f408d10f2277c2!2sREVO!5e0!3m2!1sen!2snp!4v1636264848776!5m2!1sen!2snp"
						width="600" height="450" style="border: 0;" allowfullscreen=""
						loading="lazy"></iframe>
				</div>
				<div class="contact-right text-white text-center bg-blue">
					<div class="contact-head">
						<h3 class="lead">Contact Us</h3>
						<p class="text text-md">Need help? Get in touch with our
							Support Team.</p>
					</div>
					<form>
						<div class="form-element">
							<input type="text" class="form-control" placeholder="Your name *"
								required>
						</div>
						<div class="form-element">
							<input type="email" class="form-control"
								placeholder="Your email *" required>
						</div>
						<div class="form-element">
							<textarea rows="5" placeholder="Your Message *"
								class="form-control" required></textarea>
						</div>
						<button type="submit" class="btn btn-white btn-submit">
							<i class="fas fa-arrow-right"></i> Send Message
						</button>
					</form>
				</div>
			</div>
		</section>
		<!-- end of contact section -->
	</main>

	<!-- footer  -->
	<footer id="footer" class="footer text-center">
		<div class="container">
			<div class="footer-inner text-white py grid">
				<div class="footer-item">
					<h3 class="footer-head">about us</h3>
					<div class="icon">
						<img src="assets/images/favicon.png">
					</div>
					<p class="text text-md">Empowering patients to achieve their
						optimal health through personalized care and innovative solutions.</p>
					<address>
						Medic Clinic <br> 69 Deerpark Rd, Mount Merrion <br> Co.
						Dublin, A94 E9D3 <br> Ireland
					</address>
				</div>

				<div class="footer-item">
					<h3 class="footer-head">tags</h3>
					<ul class="tags-list flex">
						<li>medical care</li>
						<li>emergency</li>
						<li>therapy</li>
						<li>surgery</li>
						<li>medication</li>
						<li>nurse</li>
					</ul>
				</div>

				<div class="footer-item">
					<h3 class="footer-head">Quick Links</h3>
					<ul>
						<li><a href="#" class="text-white">Home</a></li>
						<li><a href="#about" class="text-white">About Us</a></li>
						<li><a href="#services" class="text-white">Services</a></li>
						<li><a href="#contact" class="text-white">Contact Us</a></li>
						<li><a href="#" class="text-white">Appointment Scheduling</a></li>
					</ul>
				</div>

				<div class="footer-item">
					<h3 class="footer-head">Make an Appointment</h3>
					<p class="text text-md">
						You can schedule an appointment online or by calling us at <br>
						+91 8947569849.
					</p>
					<ul class="appointment-info">
						<li>8:00 AM - 11:00 AM</li>
						<li>2:00 PM - 05:00 PM</li>
						<li>8:00 PM - 11:00 PM</li>
						<li><i class="fas fa-envelope"></i> <a
							href="mailto:info@healthcare.com"><span>info@healthcare.com</span></a>
						</li>
						<li><i class="fas fa-phone"></i> <a href="tel:+91 8947569849"><span>+91 8947569849</span></a></li>
					</ul>
				</div>
			</div>

			<div class="footer-links">
				<ul class="flex">
					<li><a href="https://www.facebook.com/" target="_blank"
						class="text-white flex"> <i class="fa-brands fa-facebook"></i></a></li>
					<li><a href="https://twitter.com/?lang=en" target="_blank"
						class="text-white flex"><i class="fa-brands fa-square-twitter"></i></a></li>
					<li><a href="https://in.linkedin.com/" target="_blank"
						class="text-white flex"><i class="fa-brands fa-linkedin"></i></a></li>
				</ul>
			</div>
		</div>
	</footer>
	<script src="assets/js/script.js"></script>
</body>

</html>