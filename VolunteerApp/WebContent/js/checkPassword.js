var button = document.getElementById("checkPassword");
var password = document.getElementById("password");
var password2 = document.getElementById("password2");
var warningText = document.getElementById("warningText");
var firstName = document.getElementById("firstName");
var lastName = document.getElementById("lastName");
var name = document.getElementById("name");
var email = document.getElementById("email");
var address = document.getElementById("address");
var town = document.getElementById("town");
var registerForm = document.getElementById("registerForm");


//https://stackoverflow.com/questions/21818315/how-to-compare-passwords-in-javascript
// block show https://stackoverflow.com/questions/23859408/javascript-style-displayblock-doesnt-work
// worked from web dev bootcamp material


button.addEventListener("click", function(){
	
	if (firstName.value == ""){
		warningText.textContent ="Please enter a first name";
		warningText.style.display= "block";
	}
	else if(lastName.value == ""){
		warningText.textContent ="Please enter a last name";
		warningText.style.display= "block";
	}
	else if(email.value == ""){
		warningText.textContent ="Please enter an email address";
		warningText.style.display= "block";
	}
	else if(address.value == ""){
		warningText.textContent ="Please enter an address";
		warningText.style.display= "block";
	}
	else if(phone.value == ""){
		warningText.textContent ="Please enter a phone number";
		warningText.style.display= "block";
	}
	else if(town.value == ""){
		warningText.textContent ="Please enter a town";
		warningText.style.display= "block";
	}
	else if(password.value == ""){
		warningText.textContent ="Please enter a password";
		warningText.style.display= "block";
	}
	else if(password2.value == ""){
		warningText.textContent ="Please confirm your password";
		warningText.style.display= "block";
	}
	else if(password.value !== password2.value){
			warningText.textContent ="Please make sure passwords match";
			warningText.style.display= "block";
		}else{
			//https://stackoverflow.com/questions/9855656/how-to-submit-a-form-using-javascript
			registerForm.submit();
		}
	
});