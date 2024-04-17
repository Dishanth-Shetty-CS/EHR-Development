//Sets the main tag margin-top offset 
let main = document.getElementById("main");
let header = document.getElementById("header");
window.addEventListener("load", function() {
	let header_height = header.offsetHeight;
	main.style.marginTop = header_height + "px";
});

window.addEventListener("resize", function() {
	let header_height = header.offsetHeight;
	main.style.marginTop = header_height + "px";
});



//Variable, where the dynamic pages will be loaded 
let right_body = document.getElementById("right-body");
let sidebar_options = document.getElementsByClassName("sidebar-options");

function loadDashboard() {
	for (let i = 0; i < 7; i++) {
		sidebar_options[i].classList.remove("active-sidebar-options");			
	}
	
	sidebar_options[0].classList.add("active-sidebar-options");	
		
	fetch('adminDashboard.jsp')
		.then(response => response.text())
		.then(data => {
			right_body.innerHTML = data;
		})
		.catch(error => {
			console.error('Error:', error);
		});						
}



let container_tabs = document.getElementsByClassName("container-tabs-options");

function loadUnreadQueries() {
	if (!container_tabs[0].id) {
		container_tabs[1].removeAttribute("id");
		container_tabs[0].id = "active-container-tabs";
	} 	
}

function loadReadQueries() {
	if (!container_tabs[1].id) {
		container_tabs[0].removeAttribute("id");
		container_tabs[1].id = "active-container-tabs";
	} 
}
	
	
	
function loadDoctorList() {
	for (let i = 0; i < 7; i++) {
		sidebar_options[i].classList.remove("active-sidebar-options");			
	}
	
	sidebar_options[1].classList.add("active-sidebar-options");	
}


function loadAddDoctor() {
	for (let i = 0; i < 7; i++) {
		sidebar_options[i].classList.remove("active-sidebar-options");			
	}
	
	sidebar_options[2].classList.add("active-sidebar-options");	
}


function loadPatientList() {
	for (let i = 0; i < 7; i++) {
		sidebar_options[i].classList.remove("active-sidebar-options");			
	}
	
	sidebar_options[3].classList.add("active-sidebar-options");	
}


function loadAddPatient() {
	for (let i = 0; i < 7; i++) {
		sidebar_options[i].classList.remove("active-sidebar-options");			
	}
	
	sidebar_options[4].classList.add("active-sidebar-options");	
}


function loadAppointments() {
	for (let i = 0; i < 7; i++) {
		sidebar_options[i].classList.remove("active-sidebar-options");			
	}
	
	sidebar_options[5].classList.add("active-sidebar-options");	
}


function loadQueries() {
	for (let i = 0; i < 7; i++) {
		sidebar_options[i].classList.remove("active-sidebar-options");			
	}
	
	sidebar_options[6].classList.add("active-sidebar-options");	
}



function showMessage(id) {
	let messageElements = document.getElementsByClassName("message");
	let specificElement = document.getElementById(id.nextElementSibling.id);
	
	for (let i = 0; i < messageElements.length; i++) {
		if (messageElements[i] === specificElement) {
			var target_element = messageElements[i];
			break;
		}
	}
	
	target_element.style.display = "block";
}


function closeMessage(id) {
	let messageElements = document.getElementsByClassName("message");
	let specificElement = document.getElementById(id.parentElement.id);
	
	for (let i = 0; i < messageElements.length; i++) {
		if (messageElements[i] === specificElement) {
			var target_element = messageElements[i];
			break;
		}
	}
	
	for (let j = 0; j < messageElements.length; j++) {
		target_element = messageElements[j];
		target_element.style.display = "none";
	}
}

