/*========= Index =========*/

//Sets the offset for the scroll padding
const index_header = document.getElementById("index-header");
if (index_header) {
  window.addEventListener("scroll", function() {
    var headerHeight = index_header.offsetHeight;
    document.documentElement.style.setProperty("--adjust-scroll", headerHeight + "px");    
  });
}



//Sets the offset for index heading tag "top" property
const contact_header = document.getElementById("contact-header");
if (contact_header) {
  window.addEventListener("load", function() {
    var contact_header_height = contact_header.offsetHeight;  
    document.documentElement.style.setProperty("--adjust-heading-top", contact_header_height + "px");    
  });
  
  window.addEventListener("scroll", function() {
    var contact_header_height = contact_header.offsetHeight;  
    const scrolledPosition = window.scrollY;
  
    if (scrolledPosition >= 100) {
      document.documentElement.style.setProperty("--adjust-heading-top", "0px");          
    } else if (scrolledPosition < 100) {            
      document.documentElement.style.setProperty("--adjust-heading-top", contact_header_height + "px");    
    }  
  });
}



//Making Page-Up button visible
const page_up = document.getElementById('page-up');
if (page_up) {
  window.addEventListener('scroll', () => {
    page_up.style.transition = "all 0.2s ease-in-out";
    const scrolledPosition = window.scrollY; 
  
    if (scrolledPosition >= 100) {    
      page_up.style.visibility = "visible";    
      page_up.style.opacity = "1";
    } else if (scrolledPosition < 100) {
      page_up.style.visibility = "hidden";    
      page_up.style.opacity = "0";      
    }
  });
}




/*========= Patient Login =========*/

//Sets the login form to the center of the viewport vertically 
const login_main = document.getElementById('login-main');
if (login_main) {
  const header = document.getElementById("header");    
  window.addEventListener("load", function() {
    var headerHeight = header.offsetHeight;      
    var loginMainHeight = login_main.offsetHeight;      
    var remainingViewH = window.innerHeight - loginMainHeight - headerHeight;            

    login_main.style.marginTop = headerHeight + "px";    
    
    login_main.style.paddingTop = (remainingViewH / 2) + "px";
    login_main.style.paddingBottom = (remainingViewH / 2) + "px"; 
  });
  
  window.addEventListener("resize", function() {
    var headerHeight = header.offsetHeight;      
    var loginMainHeight = login_main.offsetHeight;      
    var remainingViewH = window.innerHeight - loginMainHeight - headerHeight;            

    login_main.style.marginTop = headerHeight + "px";    
    
    login_main.style.paddingTop = (remainingViewH / 2) + "px";
    login_main.style.paddingBottom = (remainingViewH / 2) + "px";  
  });
}

