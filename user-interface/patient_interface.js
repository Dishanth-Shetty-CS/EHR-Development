//Sets the main tag margin-top offset 
let main = document.getElementById("main");
let header = document.getElementById("header");
window.addEventListener("load", function () {
  let header_height = header.offsetHeight;
  main.style.marginTop = header_height + "px";
});

window.addEventListener("resize", function () {
  let header_height = header.offsetHeight;
  main.style.marginTop = header_height + "px";
});


