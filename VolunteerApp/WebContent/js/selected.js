$(document).ready(function() {

//https://dannyherran.com/2010/08/change-selected-option-by-value-on-select-list-with-jquery/
	var con = $("#countyValue").val();
	
	console.log(con);
	
	$("#countySelect option[value= "+ con +"]").attr('selected', 'selected');
	
	console.log($("#countySelect").val);
	
});


