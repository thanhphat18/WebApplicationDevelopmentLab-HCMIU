//Check email address - Khoi edit
function check_email(txtEmail) {
	var email = txtEmail.value;
	//if(!email.match("/^[\w\.-]{1,}\@([\da-zA-Z-]{1,}\.){1,}[\da-zA-Z-]+$/")) {
	//	alert ("Your mail has wrong format. Please reenter email address");
	//	txtEmail.focus();
	//	return false;
	//}
	//return true;

	if(email!=""){ //Neu co nhap Email
		
		if(email.indexOf(" ")>0){	//Email has blank
			alert("Email is invalid. Please check it !");
			txtEmail.focus();
			return false;
		}
		if(email.indexOf("@")== -1){	//Email is without @
			alert("Email is invalid. Please check it !");
			txtEmail.focus();
			return false;
		}
		if(email.indexOf("@")!=email.lastIndexOf("@")){	//duplicate  @
			alert("Email is invalid. Please check it !");
			return false;
		}
		if(email.indexOf(".")== -1){	//Email is without (.)
			alert("Email is invalid. Please check it !");
			txtEmail.focus();
			return false;
		}
		if(email.indexOf("..")!= -1){	//Email duplicate ..
			alert("Email is invalid. Please check it !");
			txtEmail.focus();
			return false;
		}
		if(email.lastIndexOf(".")==email.length-1){	//Email has last symbol .
			alert("Email is invalid. Please check it !");
			txtEmail.focus();
			return false;
		}
		if(email.lastIndexOf(".")<email.indexOf("@")){	//Email has no dot (.) after @
			alert("Email is invalid. Please check it !");
			txtEmail.focus();
			return false;
		}
	}
	return true;
}

//End check email address - Khoi edit

function isAlpha(aString) {
	var check = true;
	for(var i = 0; i < aString.length; i ++) {
		var myCharCode = aString.charCodeAt(i);
		if( !(((myCharCode > 64) && (myCharCode <  91)) || 
			((myCharCode > 96) && (myCharCode < 123)) || (myCharCode == 32)) )
			check = false;
	}
	
	return check;
}

function isNumber(aNumber){
	if(isNaN(aNumber))
		return false;

	return true;
}

