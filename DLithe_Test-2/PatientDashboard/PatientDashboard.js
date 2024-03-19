
document.querySelector(".add-prescription").addEventListener("click", function() {
  
    const templateRow = document.querySelector(".template-row");
    const newRow = templateRow.cloneNode(true);

  
    newRow.removeAttribute("style");
    
    
    newRow.querySelector(".col:first-child").innerHTML = '<input type="text" class="form-control prescription-name" placeholder="Prescription Name">';
    newRow.querySelector(".col:nth-child(2)").innerHTML = '<input type="date" class="form-control prescription-date">';
    newRow.querySelector(".col:nth-child(3)").innerHTML = '<input type="text" class="form-control prescription-duration" placeholder="Duration">';

   
    const removeButton = document.createElement("button");
    removeButton.className = "btn btn-remove-prescription";
    removeButton.textContent = "Remove";
    newRow.querySelector(".col:last-child").appendChild(removeButton);

   
    removeButton.addEventListener("click", function() {
        prescriptionList.removeChild(newRow);
    });

    
    const prescriptionList = document.querySelector(".prescription-list");
    prescriptionList.appendChild(newRow);
});