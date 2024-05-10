//Functions used in DB Project
//Author: Tran Cong An
//AITCV - IT5

function myCheckEmail(control, message) {
	email = control.value;
	result = (email.match(/^[\w\.-]{1,}\@([\da-zA-Z-]{1,}\.){1,}[\da-zA-Z-]+$/) != null);
	if (!result)
		showMessage(message); 
	control.focus();
	return result;
}

function myCheckName(control, message) {
	name = control.value;
	result = (name.match(/(\D+\d+)/) == null && name.length > 0);
	if (!result) 
		showMessage(message);	

	control.focus();
	return result;
}


function myCheckNull(control, message) {
	if (control.value.length <= 0)
		showMessage(message);
	
	control.focus();
	return (control.value.length > 0);
}


//
//This function  is get from codecharge library
//
function myCheckDate(control, message)
{
  dateValue = control.value;
  var dateFormat = "dd/mm/yyyy";
  var DateMasks = new Array(
                    new Array("MMMM", "[a-z]+"),
                    new Array("mmmm", "[a-z]+"),
                    new Array("yyyy", "[0-9]{4}"),
                    new Array("MMM", "[a-z]+"),
                    new Array("mmm", "[a-z]+"),
                    new Array("HH", "([0-1][0-9]|2[0-4])"),
                    new Array("hh", "(0[1-9]|1[0-2])"),
                    new Array("dd", "([0-2][0-9]|3[0-1])"),
                    new Array("MM", "(0[1-9]|1[0-2])"),
                    new Array("mm", "(0[1-9]|1[0-2])"),
                    new Array("yy", "[0-9]{2}"),
                    new Array("nn", "[0-5][0-9]"),
                    new Array("ss", "[0-5][0-9]"),
                    new Array("w", "[1-7]"),
                    new Array("d", "([1-9]|[1-2][0-9]|3[0-1])"),
                    new Array("y", "([1-2][0-9]{0,2}|3([0-5][0-9]|6[0-5]))"),
                    new Array("H", "(00|0?[1-9]|1[0-9]|2[0-4])"),
                    new Array("h", "(0?[1-9]|1[0-2])"),
                    new Array("M", "(0?[1-9]|1[0-2])"),
                    new Array("m", "(0?[1-9]|1[0-2])"),
                    new Array("n", "[0-5]?[0-9]"),
                    new Array("s", "[0-5]?[0-9]"),
                    new Array("q", "[1-4]")
                  );
  var regExp = "^"+stringToRegExp(dateFormat)+"$";
  for (var i=0; i<DateMasks.length; i++)
  {
    regExp = regExp.replace(DateMasks[i][0], DateMasks[i][1]);
  }
  var regExp = new RegExp(regExp,"i");
  result = String(dateValue).search(regExp)!=-1;

  if (!result) showMessage(message);
  control.focus();
  return result;
}

function showMessage(message) {
	if (message.length > 0)
		alert(message);
}