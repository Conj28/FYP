var st = document.getElementById("optionStartTime");
var ST = st.options[st.selectedIndex].value;

var et = document.getElementById("optionEndTime");
var ET = et.options[et.selectedIndex].value;

var button = document.getElementById("submitButton");
var form = document.getElementById("submitForm");

var errorMessage = document.getElementById("errorMessage");


var time1 = ST;
var time2 = ET;

function onItemChanged(){
	var st = document.getElementById("optionStartTime");
	time1 = st.options[st.selectedIndex].value;

	var et = document.getElementById("optionEndTime");
	time2 = et.options[et.selectedIndex].value;
}

button.addEventListener("click", function(){

if(time1 >= time2){
	errorMessage.textContent ="End Time must be after the start time";
	errorMessage.style.display= "block";
	
}else {
	form.submit();
}
});

