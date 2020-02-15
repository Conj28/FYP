//var st = document.getElementById("optionStartTime");
//var ST = st.options[st.selectedIndex].value;
//
//var et = document.getElementById("optionEndTime");
//var ET = et.options[et.selectedIndex].value;
//
//var button = document.getElementById("submitButton");
//var form = document.getElementById("submitForm");
//

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
	   
	var errorMessage = document.getElementById("errorMessage");
	
	

	 
	//https://www.tutorialrepublic.com/codelab.php?topic=faq&file=jquery-get-values-of-selected-checboxes
	 $("#submitButton").click(function(){
		 
		 var times = [];
		 $.each($("input[name='checkedTime']:checked"), function(){            
             times.push($(this).val());
         });

			var timeCheck = true;
			
			if ($("input[name='checkedTime']:checked").length == 0){
				timeCheck = false;
				
				errorMessage.textContent ="Please select a time";
				errorMessage.style.display= "block";
			
			}
			 
			 for(var i=0; i< times.length-1; i++){
	     
		//https://stackoverflow.com/questions/11883768/jquery-time-difference-in-hours-from-two-fields		 
	     var diff = ( new Date("1970-1-1 " + times[i+1]) - new Date("1970-1-1 " + times[i]) ) / 1000 / 60 ; 
	     
	     console.log(diff);
	     
	       if(diff != 30){
	        timeCheck = false;
	       } 
				
			 }
	     
	     if(timeCheck == true){
	    	 var len = times.length - 1;
	    	 var lastTime = times[len];
	    	 
	    	 //https://stackoverflow.com/questions/44181296/add-hour-and-minutes-to-a-string-with-hhmm
	    	 //http://plnkr.co/edit/V7AVdRZ15Ra8omi1J4hl?p=preview
	    	 var totalInMinutes = (parseInt(lastTime.split(":")[0]) * 60) + parseInt(lastTime.split(":")[1]);

	    	 var otherMinutes = 30;

	    	 var grandTotal = otherMinutes + totalInMinutes;


	    	 var bookH = Math.floor(grandTotal / 60);
	    	 var bookM = grandTotal % 60;
	    	 var endTime = bookH + ':' + bookM;
	    	 
	    	 
	    	  $('input[name="optionStartTime"]').val(times[0]);
	    	  $('input[name="optionEndTime"]').val(endTime);
	    	  
	    	

	    	  $('#submitForm').submit();
	    	  
	    	  
	     }
		 
		 	
	 });
	 
	});
	







