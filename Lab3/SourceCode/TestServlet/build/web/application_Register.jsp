<html><head>

<meta content="text/html" http-equiv="Content-Type">
<link rel="stylesheet" type="text/css" href="Themes/PatentSnow/Style.css">
<script src="myFunction.js" language="JavaScript"></script>
<script language="JavaScript">
//Begin CCS script
//Include JSFunctions @1-DA3E7A20
  </script>
  <script src="functions.js" language="JavaScript"></script>
  <script language="JavaScript">

//End Include JSFunctions

//Include Common JSFunctions @1-EC9749B1
</script>
<script src="DatePicker.js" language="JavaScript"></script>
<script language="JavaScript">
//End Include Common JSFunctions

//Date Picker Object Definitions @1-20591FC4

var application_DatePicker_DateOfFilling = new Object();
application_DatePicker_DateOfFilling.format           = "mm/dd/yyyy";
application_DatePicker_DateOfFilling.style            = "Themes/PatentSnow/Style.css";
application_DatePicker_DateOfFilling.relativePathPart = "";

//End Date Picker Object Definitions

//page_application_Button_Back_OnClick @35-8330D612
function page_application_Button_Back_OnClick()
{
    var result;
//End page_application_Button_Back_OnClick

//Custom Code @36-2A29BDB7
    // -------------------------
    // Write your own code here.

	location.href = "application_Listing.php";

	// -------------------------
//End Custom Code

//Close page_application_Button_Back_OnClick @35-BC33A33A
    return result;
}
//End Close page_application_Button_Back_OnClick

//page_application_OnSubmit @4-36290E68
function page_application_OnSubmit()
{
    var result;
//End page_application_OnSubmit

//Custom Code @40-2A29BDB7
    // -------------------------
    // Write your own code here.

	var theForm  = document.{HTMLFormName};

	theForm.{stateOfApp_Name}.value = 0;

	result = validate_form(theForm);

	var fieldArray = new Array("appName", "classID", "OwnerID", "DateOfFilling",
					"abstract", "InventorID");

	var nameArray = new Array("Application Name", "Class ID", "Owner", "Date Of Filling",
					"Abstract", "Inventor ID");

	result = result &amp;&amp; check_null(theForm, fieldArray, nameArray);

	result = result &amp;&amp; check_option(theForm.{classID_Name});

	result = result &amp;&amp; buildInventor_List();

	// -------------------------
//End Custom Code

//Close page_application_OnSubmit @4-BC33A33A
    return result;
}
//End Close page_application_OnSubmit

//bind_events @1-952D23EF
function bind_events() {
    if (document.forms["application"]) check_and_bind('document.forms["application"]','onsubmit',page_application_OnSubmit);
    if (document.forms["application"]) check_and_bind('document.forms["application"].Button_Back','onclick',page_application_Button_Back_OnClick);
    forms_onload();
}
//End bind_events

//Khoi edit

function check_name(txtName) {

	var strName = txtName.value;

	if (!isAlpha(strName)) {

		alert("The name has non alphabet letter. Please check it");

		txtName.focus();

		return false;

	}

	return true;

}


function open_Inventor() {

	top.newWin = window.open("./register_Inventor.php", "Add_Inventor", format_Window);

}

function choose_Owner() {

	top.newWin = window.open("./register_ChooseOwner.php", "Choose_Owner", format_Window);

}

function check_number(txtPhone) {

	var str = txtPhone.value;

	if (!isNumber(str)) {

		alert("The phone must be entered number!");

		txtPhone.focus();

		return false;

	}

	return true;

}

function check_option(theSelect) {

	var strTheSelect = theSelect.options[theSelect.selectedIndex].text;

	if (strTheSelect=="Select Value") {

		alert("The classification invalid");

		theSelect.focus();

		return false;

	}

	return true;

}

function check_null(theForm, fieldArray, nameArray){

	var i = 0;

	for(i = 0; i &lt; fieldArray.length; i++) {

		if (eval("theForm." + fieldArray[i] + ".value") == ""){

			alert("The field " + nameArray[i] + " can not be null");

			nullField = eval("theForm." + fieldArray[i]);

			nullField.focus();

			return false;

		}

	}

	return true;

}


//var w_left = Math.ceil(screen.width/2-350);
//var w_top = Math.ceil(screen.height/2-300);

var w_left = 0;
var w_top = 0;

//var format_Window = "dependent=yes,left="+w_left+",top="+w_top+",width=700,height=600,screenX=800,screenY=600,titlebar=yes, center: yes, help: yes, resizable: yes, status: yes, scrollbars: yes";

var format_Window = "dependent=yes,left="+w_left+",top="+w_top+",width=800,screenX=800,titlebar, center, help, resizable, status, scrollbars";
//var format_Window = ""

function fill_List(arrID, arrName) {

	var select_Inventor = document.forms["application"].{InventorID_Name};

	for (i = 0; i &lt; arrID.length; i++) {

		if (arrID[i].substr(0, 5) != "//DEL"){

			var isAdded = false; //check if exist in list box

			for (j = 0; j &lt; select_Inventor.options.length; j++)

				if (arrID[i] == select_Inventor.options[j].value) {

					isAdded = true;

				}

			if (!isAdded)

				select_Inventor.options.add(new Option(arrName[i], arrID[i]));

		}

	}

	if (select_Inventor.length &gt; 0)

		select_Inventor.selectedIndex = 0;

}


function del_Inventor() {

	var select_Inventor = document.forms["application"].{InventorID_Name};

	var curLength = select_Inventor.options.length;

	var sel_index = select_Inventor.selectedIndex;

	var item_Array = new Array();

	for (k = 0; k &lt; curLength; k++)

		if(!select_Inventor.options[k].selected)

			item_Array[item_Array.length] = new Option(select_Inventor.options[k].text, select_Inventor.options[k].value);

	select_Inventor.length = 0;

	for (k = 0; k &lt; item_Array.length; k++)

		select_Inventor.options[k] = new Option(item_Array[k].text, item_Array[k].value);

	select_Inventor.selectedIndex = 0;

}


function buildInventor_List() {

	var select_Inventor = document.forms["application"].{InventorID_Name};

	var textInventor_List = document.forms["application"].{Inventor_List_Name};

	textInventor_List.value = "";

	if (select_Inventor.options.length &gt; 0) {

		for (i = 0; i &lt; select_Inventor.options.length - 1; i++)

			textInventor_List.value += "inventorID[]=" + select_Inventor.options[i].value + "&amp;";

		textInventor_List.value += "inventorID[]=" + select_Inventor.options[i].value;

	}

	else {

		alert("Inventors must be ar least one");

		select_Inventor.focus();

		return false;

	}

	return true;

}

function fillOwner(ownerID, ownerName) {  //Really owner

	document.{HTMLFormName}.OwnerID.value = ownerID;

	document.{HTMLFormName}.OwnerName.value = ownerName;

}


//Khoi edit


window.onload = bind_events; //Assign bind_events @1-19F7B649


//End CCS script

</script>
</head><body vlink="#000000" text="#000000" link="#000000" bgcolor="#e5f4ff" alink="#ff0000" class="PatentSnowPageBODY">

<div id="PTMain">
  <div id="PTLeft">

  </div>

  <div id="PTContent">
    <br>
    <!-- BEGIN Record application -->
    <form enctype="{HTMLFormEnctype}" method="post" action="{Action}" name="AFormName">

      <font class="PatentSnowFormHeaderFont">Application for Dormitory</font>
      <table cellspacing="2" cellpadding="2" border="0" style="width: 500px; height: 515px;" class="PatentSnowFormTABLE">
        <!-- BEGIN Error -->
        <tbody><tr>
          <td colspan="4" class="PatentSnowErrorDataTD"></td>
        </tr>
 <!-- END Error -->
        <tr>
          <td class="PatentSnowFieldCaptionTD">Application ID&nbsp;</td>
          <td class="PatentSnowDataTD"><input style="width: 141px; height: 20px;" readonly="" name="{appID_Name}" value="" size="16" maxlength="10" class="PatentSnowInput">&nbsp;</td>
          <td class="PatentSnowFieldCaptionTD">Referee&nbsp;name </td>
          <td class="PatentSnowDataTD"><input readonly="" name="{attName_Name}" value="" size="14" style="width: 135px; height: 20px;" class="PatentSnowInput"><input type="hidden" style="width: 11px; height: 20px;" name="{attID_Name}" value="" size="1" maxlength="15" class="PatentSnowInput"></td>
        </tr>


        <tr>
          <td class="PatentSnowFieldCaptionTD">App Name&nbsp;</td>
          <td colspan="3" class="PatentSnowDataTD"><input style="width: 364px; height: 20px;" name="{appName_Name}" value="" size="48" maxlength="50" class="PatentSnowInput">&nbsp;</td>
        </tr>

        <tr>
          <td class="PatentSnowFieldCaptionTD">Student Info</td>
          <td colspan="3" class="PatentSnowDataTD">ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            :&nbsp;<input readonly="" class="PatentSnowInput" name="{OwnerID_Name}" value=""><br>

            Name :&nbsp;<input size="29" readonly="" style="width: 222px; height: 20px;" name="" value="" class="PatentSnowInput">&nbsp;
            <!-- BEGIN Button Button_ChooseOwner --><input type="button" size="14" style="width: 87px; height: 20px;" name="{Button_Name}" value="Choose owner" onclick="javascript:choose_Owner();" class="PatentSnowButton"><!-- END Button Button_ChooseOwner --></td>
        </tr>

        <tr>
          <td class="PatentSnowFieldCaptionTD">Classification&nbsp;</td>
          <td class="PatentSnowDataTD">
            <select style="width: 130px;" name="{classID_Name}" class="PatentSnowSelect">
              <option selected="" value="-1">Select Value </option>
 </select>

 </td>
          <td class="PatentSnowFieldCaptionTD">Date Of Filling&nbsp;</td>
          <td class="PatentSnowDataTD"><input style="width: 100px; height: 20px;" name="DateOfFilling_Name" value="" size="15" maxlength="10" class="PatentSnowInput">
            <!-- BEGIN DatePicker DatePicker_DateOfFilling --><a href="javascript:showDatePicker('DateOfFilling_Name','AFormName','DateOfFilling_Name');" class="PatentSnowDataLink"><img border="0" src="Themes/DatePicker/DatePicker1.gif"></a><!-- END DatePicker DatePicker_DateOfFilling -->&nbsp;</td>
        </tr>

        <tr>
          <td class="PatentSnowFieldCaptionTD">Notes&nbsp;</td>
          <td colspan="3" class="PatentSnowDataTD"><textarea cols="61" rows="3" name="{abstract_Name}" style="width: 402px; height: 52px;" class="PatentSnowTextarea">{abstract}</textarea>&nbsp;</td>
        </tr>

        <tr>

          <td nowrap="" class="PatentSnowFieldCaptionTD">Details&nbsp;<br></td>
          <td colspan="3" class="PatentSnowDataTD">
            <!-- BEGIN FileUpload summary --><input type="hidden" name="{ControlName}" value="{State}">

            <!-- BEGIN Upload --><input type="file" size="22" style="width: 322px; height: 20px;" name="{FileControl}" class="PatentSnowInput"><!-- END Upload -->
            <!-- BEGIN DeleteControl -->Delete <input type="checkbox" {deletechecked}="" name="{DeleteControl}" class="PatentSnowInput"><!-- END DeleteControl --><!-- END FileUpload summary --></td>
        </tr>



        <tr>
          <td class="PatentSnowFieldCaptionTD">List of Roommates</td>
          <td colspan="3" class="PatentSnowDataTD">

            <select size="4" style="width: 291px; height: 70px;" ondblclick="javascript:del_Inventor();" name="{InventorID_Name}" class="PatentCSSSelect">
              </select>
 <img border="0" src="images/reg_owner_more.JPG" onclick="javascript:open_Inventor();"><img border="0" src="images/reg_owner_less.JPG" onclick="javascript:del_Inventor();"><input type="hidden" name="{Inventor_List_Name}" value="" size="4" style="width: 37px; height: 22px;"></td>
        </tr>

        <tr>
          <td align="right" colspan="5" class="PatentSnowFooterTD"><input type="hidden" name="{stateOfApp_Name}" value="{stateOfApp}">
            <!-- BEGIN Button Button_Insert --><input type="submit" name="{Button_Name}" value=" Register" class="PatentSnowButton"><!-- END Button Button_Insert -->&nbsp;
            <!-- BEGIN Button Button_Cancel --><input type="submit" name="{Button_Name}" value="Cancel" class="PatentSnowButton"><!-- END Button Button_Cancel -->&nbsp;
            <!-- BEGIN Button Button_Back --><input type="button" name="{Button_Name}" value=" Back " class="PatentSnowButton"><!-- END Button Button_Back --></td>
        </tr>


      </tbody></table>

    </form>
 <!-- END Record application --><br>
  </div>
 {Footer}
</div>
</body></html>