//JS Functions @0-DFA3D8E8
var isNN = (navigator.appName.indexOf("Netscape") != -1);
var isIE = (navigator.appName.indexOf("Microsoft") != -1);
var IEVersion = (isIE ? getIEVersion() : 0);
var NNVersion = (isNN ? getNNVersion() : 0);
var EditableGrid = false;

function ccsShowError(control, msg)
{
  alert(msg);
  control.focus();
  return false;
}

function getNNVersion()
{
  var userAgent = window.navigator.userAgent;
  var isMajor = parseInt(window.navigator.appVersion);
  var isMinor = parseFloat(window.navigator.appVersion);
  if (isMajor == 2) return 2;
  if (isMajor == 3) return 3;
  if (isMajor == 4) return 4;
  if (isMajor == 5) return 6;
  return isMajor;
}

function getIEVersion()
{
  var userAgent = window.navigator.userAgent;
  var MSIEPos = userAgent.indexOf("MSIE");
  return (MSIEPos > 0 ? parseInt(userAgent.substring(MSIEPos+5, userAgent.indexOf(".", MSIEPos))) : 0);
}

function inputMasking(evt)
{
  if (isIE && IEVersion > 4)
  {
    if (window.event.altKey) return false;
    if (window.event.ctrlKey) return false;
    if (typeof(this.ccsInputMask) == "string")
    {
      var mask = this.ccsInputMask;
      var keycode = window.event.keyCode;
      this.value = applyMask(keycode, mask, this.value);
    }
    return false;
  } else if (isNN && NNVersion<6)
  {
    if (evt.ALT_MASK) return false;
    if (evt.CONTROL_MASK) return false;
    if (typeof(this.ccsInputMask) == "string")
    {
      var mask = this.ccsInputMask;
      var keycode = evt.which;
      this.value = applyMask(keycode, mask, this.value);
    }
    return false;
  } else if (isNN && NNVersion==6)
  {
    if (evt.altKey) return false;
    if (evt.ctrlKey) return false;
    if (typeof(this.ccsInputMask) == "string")
    {
      var mask = this.ccsInputMask;
      this.value = applyMaskToValue(mask, this.value);
    }
    return false;
  } else
    return true;
}

function applyMaskToValue(mask, value)
{
  var oldValue = String(value);
  var newValue = "";
  for (var i=0; i<oldValue.length; i++)
  {
    newValue = applyMask(oldValue.charCodeAt(i), mask, newValue);
  }
  return newValue;
}

function applyMask(keycode, mask, value)
{
  var digit = (keycode >= 48 && keycode <= 57);
  var plus = (keycode == 43);
  var dash = (keycode == 45);
  var space = (keycode == 32);
  var uletter = (keycode >= 65 && keycode <= 90);
  var lletter = (keycode >= 97 && keycode <= 122);
  
  var pos = value.length;
  switch(mask.charAt(pos))
  {
    case "0":
      if (digit)
        value += String.fromCharCode(keycode);
      break;
    case "L":
      if (uletter || lletter)
        value += String.fromCharCode(keycode);
    default:
      var isMatchMask = (String.fromCharCode(keycode) == mask.charAt(pos));
      while (pos < mask.length && mask.charAt(pos) != "0")
        value += mask.charAt(pos++);
      if (!isMatchMask && pos < mask.length)
        value = applyMask(keycode, mask, value);
  }  
  return value;
}

function validate_control(control)
{
/*
ccsCaption - string
ccsErrorMessage - string

ccsRequired - boolean
ccsMinLength - integer
ccsMaxLength - integer
ccsRegExp - string

ccsValidator - validation function

ccsInputMask - string
*/
  var errorMessage = control.ccsErrorMessage;
  var customErrorMessage = (typeof(errorMessage) != "undefined");
   
  if (typeof(control.ccsRequired) == "boolean" && control.ccsRequired)
    if (control.value == "")
      return ccsShowError(control, customErrorMessage ? errorMessage :
        "The value in field " + control.ccsCaption + " is required.");

  if (typeof(control.ccsMinLength) == "number")
    if (control.value != "" && control.value.length < parseInt(control.ccsMinLength))
      return ccsShowError(control, customErrorMessage ? errorMessage :
        "The length in field " + control.ccsCaption + " can't be less than " + parseInt(control.ccsMinLength) + " symbols.");

  if (typeof(control.ccsMaxLength) == "number")
    if (control.value != "" && control.value.length > parseInt(control.ccsMaxLength))
      return ccsShowError(control, customErrorMessage ? errorMessage :
        "The length in field " + control.ccsCaption + " can't be greater than " + parseInt(control.ccsMaxLength) + " symbols.");

  if (typeof(control.ccsRegExp) == "string")
    if (control.value != "" && (control.value.search(new RegExp(control.ccsRegExp, "i")) == -1))
      return ccsShowError(control, customErrorMessage ? errorMessage :
        "The value in field " + control.ccsCaption + " is not valid.");

  if (typeof(control.ccsDateFormat) == "string")
  {
    if (control.value != "" && !checkDate(control.value, control.ccsDateFormat))
      return ccsShowError(control, customErrorMessage ? errorMessage :
        "The value in field " + control.ccsCaption + " is not valid. Use the following format: "+control.ccsDateFormat);
  }

  if (typeof(control.ccsValidator) == "function")
    if (!control.ccsValidator())
      return ccsShowError(control, customErrorMessage ? errorMessage :
        "The value in field " + control.ccsCaption + " is not valid.");

  return true;
}

function stringToRegExp(string, arg)
{
  var str = String(string);
  str = str.replace(/\\/g,"\\\\");
  str = str.replace(/\//g,"\\/");
  str = str.replace(/\./g,"\\.");
  str = str.replace(/\(/g,"\\(");
  str = str.replace(/\)/g,"\\)");
  str = str.replace(/\[/g,"\\[");
  str = str.replace(/\]/g,"\\]");
  return str;
}

function checkDate(dateValue, dateFormat)
{
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
  return String(dateValue).search(regExp)!=-1;
}

function validate_row(rowId, form)
{
  var result = true;
  var isInsert = false;
  if(typeof(eval(form + "EmptyRows")) == "number")
    if(eval(form + "Elements").length - rowId <= eval(form + "EmptyRows"))
      isInsert = true;
    for (var i = 0; i < eval(form + "Elements")[rowId].length && isInsert; i++)
      isInsert = GetValue(eval(form + "Elements")[rowId][i]) == "";
  if(isInsert) return true;

  if(typeof(eval(form + "DeleteControl")) == "number")
    {
      var control = eval(form + "Elements")[rowId][eval(form + "DeleteControl")];
      if(control.type == "checkbox")
        if(control.checked == true ) return true;
      if(control.type == "hidden")
        if(control.value != "" ) return true;
    }

  for (var i = 0; i < eval(form + "Elements")[rowId].length && (result = validate_control(eval(form + "Elements")[rowId][i])); i++);
  return result;
}

function GetValue(control) {
    if (typeof(control.value) == "string") {
        return control.value;
    }
    if (typeof(control.tagName) == "undefined" && typeof(control.length) == "number") {
        var j;
        for (j=0; j < control.length; j++) {
            var inner = control[j];
            if (typeof(inner.value) == "string" && (inner.type != "radio" || inner.status == true)) {
                return inner.value;
            }
        }
    }
    else {
        return GetValueRecursive(control);
    }
    return "";
}

function GetValueRecursive(control)
{
    if (typeof(control.value) == "string" && (control.type != "radio" || control.status == true)) {
        return control.value;
    }
    var i, val;
    for (i = 0; i<control.children.length; i++) {
        val = GetValueRecursive(control.children[i]);
        if (val != "") return val;
    }
    return "";
}


function validate_form(form)
{
var result = true;

  if(typeof(form) == "object" && document.getElementById(form.name + "Elements")) {
    if (typeof(eval(form.name + "Elements")) == "object") 
      for (var j = 0; j < eval(form.name + "Elements").length && result; j++) result = validate_row(j, form.name);
    else 
      for (var i = 0; i < form.elements.length && (result = validate_control(form.elements[i])); i++);
  }else if(typeof(form) == "string" && document.getElementById(form.name + "Elements"))
  {
    if(typeof(eval(form + "Elements")) == "object"){
      for (var j = 0; j < eval(form + "Elements").length && result; j++)
        result = validate_row(j, form);
    }
  }else if (typeof(form) == "object")
          for (var i = 0; i < form.elements.length && (result = validate_control(form.elements[i])); i++);
        else	
          for (var i = 0; i < document.forms[form].elements.length && (result = validate_control(document.forms[form].elements[i])); i++);
  return result;
}

function forms_onload()
{
  var forms = document.forms;
  var i, j, elm, form;
  for(i = 0; i < forms.length; i++)
  {
    form = forms[i];
    if (typeof(form.onLoad) == "function") form.onLoad();
    for (j = 0; j < form.elements.length; j++)
    {
      elm = form.elements[j];
      if (typeof(elm.onLoad) == "function") elm.onLoad();
    }
  }
  return true;
}

//
// If element exist than bind function func to element on event.
// Example: check_and_bind('document.NewRecord1.Delete1','onclick',page_NewRecord1_Delete1_OnClick);
//
function check_and_bind(element,event,func) {
  if (eval(element)) {
    eval(element+'.'+event+'='+func);
  }
}

//End JS Functions

