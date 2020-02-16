$(document).ready(function() {
	   
	var errorMessage = document.getElementById("errorMessage");
	
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
	       
	      // $('#loactionForm').submit();
	       console.log("Changed!!!!")
	    });
	 
	 
	
	 
	});
	







