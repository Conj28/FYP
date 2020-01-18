$(document).ready(function() {
   
	
	
	 $("select.selectedLocation").change(function(){
	        var selectedCountry = $(this).children("option:selected").val();
	        
	       $('input[name="setLocation"]').val(selectedCountry);
	    });
	 
	 
	 
	});
	