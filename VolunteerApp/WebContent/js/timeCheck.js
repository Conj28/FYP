//var st = document.getElementById("optionStartTime");
//var ST = st.options[st.selectedIndex].value;
//
//var et = document.getElementById("optionEndTime");
//var ET = et.options[et.selectedIndex].value;
//
//var button = document.getElementById("submitButton");
//var form = document.getElementById("submitForm");
//
//var errorMessage = document.getElementById("errorMessage");
//
//
//
//
//
//var time1 = ST;
//var time2 = ET;
//
//function onItemChanged(){
//	var st = document.getElementById("optionStartTime");
//	time1 = st.options[st.selectedIndex].value;
//
//	var et = document.getElementById("optionEndTime");
//	time2 = et.options[et.selectedIndex].value;
//}
//
//button.addEventListener("click", function(){
//
//	errorMessage.textContent ="End Time must be after the start time";
//	errorMessage.style.display= "block";
//	
//}else {
//	form.submit();
//}





//function onLocationChanged(){
//	
//	var loc = document.getElementById("optionLocation");
//	var Location = loc.options[loc.selectedIndex].value;
//
//	setLocation.value = Location;
//}

//https://learn.jquery.com/using-jquery-core/faq/how-do-i-get-the-text-value-of-a-selected-option/
//https://stackoverflow.com/questions/11277117/selecting-a-select-option-by-a-value-passed-through-a-variable

//});

$(document).ready(function() {
	   
	var setLocation = document.getElementById("setLocation");
	var location = document.getElementById("optionLocation");
	var Location = location.options[location.selectedIndex].text;
	

	setLocation.value = Location;
	//alert(Location);
	
	 $("select.selectedLocation").change(function(){
	        var selectedCountry = $(this).children("option:selected").text();
	        var selectedCountry1 = $(this).children("option:selected").val();
	        
	       $('input[name="setLocation"]').val(selectedCountry);
	       $('input[name="LevetLocation"]').val(selectedCountry1);
	       
	       $('#loactionForm').submit();
	       console.log("Changed!!!!")
	    });
	 
	 
	
	 
	});
	







