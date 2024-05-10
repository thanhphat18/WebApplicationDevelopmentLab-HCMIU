package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class application_005fRegister_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html><head>\r\n");
      out.write("\r\n");
      out.write("<meta content=\"text/html\" http-equiv=\"Content-Type\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"Themes/PatentSnow/Style.css\">\r\n");
      out.write("<script src=\"myFunction.js\" language=\"JavaScript\"></script>\r\n");
      out.write("<script language=\"JavaScript\">\r\n");
      out.write("//Begin CCS script\r\n");
      out.write("//Include JSFunctions @1-DA3E7A20\r\n");
      out.write("  </script>\r\n");
      out.write("  <script src=\"functions.js\" language=\"JavaScript\"></script>\r\n");
      out.write("  <script language=\"JavaScript\">\r\n");
      out.write("\r\n");
      out.write("//End Include JSFunctions\r\n");
      out.write("\r\n");
      out.write("//Include Common JSFunctions @1-EC9749B1\r\n");
      out.write("</script>\r\n");
      out.write("<script src=\"DatePicker.js\" language=\"JavaScript\"></script>\r\n");
      out.write("<script language=\"JavaScript\">\r\n");
      out.write("//End Include Common JSFunctions\r\n");
      out.write("\r\n");
      out.write("//Date Picker Object Definitions @1-20591FC4\r\n");
      out.write("\r\n");
      out.write("var application_DatePicker_DateOfFilling = new Object();\r\n");
      out.write("application_DatePicker_DateOfFilling.format           = \"mm/dd/yyyy\";\r\n");
      out.write("application_DatePicker_DateOfFilling.style            = \"Themes/PatentSnow/Style.css\";\r\n");
      out.write("application_DatePicker_DateOfFilling.relativePathPart = \"\";\r\n");
      out.write("\r\n");
      out.write("//End Date Picker Object Definitions\r\n");
      out.write("\r\n");
      out.write("//page_application_Button_Back_OnClick @35-8330D612\r\n");
      out.write("function page_application_Button_Back_OnClick()\r\n");
      out.write("{\r\n");
      out.write("    var result;\r\n");
      out.write("//End page_application_Button_Back_OnClick\r\n");
      out.write("\r\n");
      out.write("//Custom Code @36-2A29BDB7\r\n");
      out.write("    // -------------------------\r\n");
      out.write("    // Write your own code here.\r\n");
      out.write("\r\n");
      out.write("\tlocation.href = \"application_Listing.php\";\r\n");
      out.write("\r\n");
      out.write("\t// -------------------------\r\n");
      out.write("//End Custom Code\r\n");
      out.write("\r\n");
      out.write("//Close page_application_Button_Back_OnClick @35-BC33A33A\r\n");
      out.write("    return result;\r\n");
      out.write("}\r\n");
      out.write("//End Close page_application_Button_Back_OnClick\r\n");
      out.write("\r\n");
      out.write("//page_application_OnSubmit @4-36290E68\r\n");
      out.write("function page_application_OnSubmit()\r\n");
      out.write("{\r\n");
      out.write("    var result;\r\n");
      out.write("//End page_application_OnSubmit\r\n");
      out.write("\r\n");
      out.write("//Custom Code @40-2A29BDB7\r\n");
      out.write("    // -------------------------\r\n");
      out.write("    // Write your own code here.\r\n");
      out.write("\r\n");
      out.write("\tvar theForm  = document.{HTMLFormName};\r\n");
      out.write("\r\n");
      out.write("\ttheForm.{stateOfApp_Name}.value = 0;\r\n");
      out.write("\r\n");
      out.write("\tresult = validate_form(theForm);\r\n");
      out.write("\r\n");
      out.write("\tvar fieldArray = new Array(\"appName\", \"classID\", \"OwnerID\", \"DateOfFilling\",\r\n");
      out.write("\t\t\t\t\t\"abstract\", \"InventorID\");\r\n");
      out.write("\r\n");
      out.write("\tvar nameArray = new Array(\"Application Name\", \"Class ID\", \"Owner\", \"Date Of Filling\",\r\n");
      out.write("\t\t\t\t\t\"Abstract\", \"Inventor ID\");\r\n");
      out.write("\r\n");
      out.write("\tresult = result &amp;&amp; check_null(theForm, fieldArray, nameArray);\r\n");
      out.write("\r\n");
      out.write("\tresult = result &amp;&amp; check_option(theForm.{classID_Name});\r\n");
      out.write("\r\n");
      out.write("\tresult = result &amp;&amp; buildInventor_List();\r\n");
      out.write("\r\n");
      out.write("\t// -------------------------\r\n");
      out.write("//End Custom Code\r\n");
      out.write("\r\n");
      out.write("//Close page_application_OnSubmit @4-BC33A33A\r\n");
      out.write("    return result;\r\n");
      out.write("}\r\n");
      out.write("//End Close page_application_OnSubmit\r\n");
      out.write("\r\n");
      out.write("//bind_events @1-952D23EF\r\n");
      out.write("function bind_events() {\r\n");
      out.write("    if (document.forms[\"application\"]) check_and_bind('document.forms[\"application\"]','onsubmit',page_application_OnSubmit);\r\n");
      out.write("    if (document.forms[\"application\"]) check_and_bind('document.forms[\"application\"].Button_Back','onclick',page_application_Button_Back_OnClick);\r\n");
      out.write("    forms_onload();\r\n");
      out.write("}\r\n");
      out.write("//End bind_events\r\n");
      out.write("\r\n");
      out.write("//Khoi edit\r\n");
      out.write("\r\n");
      out.write("function check_name(txtName) {\r\n");
      out.write("\r\n");
      out.write("\tvar strName = txtName.value;\r\n");
      out.write("\r\n");
      out.write("\tif (!isAlpha(strName)) {\r\n");
      out.write("\r\n");
      out.write("\t\talert(\"The name has non alphabet letter. Please check it\");\r\n");
      out.write("\r\n");
      out.write("\t\ttxtName.focus();\r\n");
      out.write("\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\treturn true;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("function open_Inventor() {\r\n");
      out.write("\r\n");
      out.write("\ttop.newWin = window.open(\"./register_Inventor.php\", \"Add_Inventor\", format_Window);\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function choose_Owner() {\r\n");
      out.write("\r\n");
      out.write("\ttop.newWin = window.open(\"./register_ChooseOwner.php\", \"Choose_Owner\", format_Window);\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function check_number(txtPhone) {\r\n");
      out.write("\r\n");
      out.write("\tvar str = txtPhone.value;\r\n");
      out.write("\r\n");
      out.write("\tif (!isNumber(str)) {\r\n");
      out.write("\r\n");
      out.write("\t\talert(\"The phone must be entered number!\");\r\n");
      out.write("\r\n");
      out.write("\t\ttxtPhone.focus();\r\n");
      out.write("\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\treturn true;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function check_option(theSelect) {\r\n");
      out.write("\r\n");
      out.write("\tvar strTheSelect = theSelect.options[theSelect.selectedIndex].text;\r\n");
      out.write("\r\n");
      out.write("\tif (strTheSelect==\"Select Value\") {\r\n");
      out.write("\r\n");
      out.write("\t\talert(\"The classification invalid\");\r\n");
      out.write("\r\n");
      out.write("\t\ttheSelect.focus();\r\n");
      out.write("\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\treturn true;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function check_null(theForm, fieldArray, nameArray){\r\n");
      out.write("\r\n");
      out.write("\tvar i = 0;\r\n");
      out.write("\r\n");
      out.write("\tfor(i = 0; i &lt; fieldArray.length; i++) {\r\n");
      out.write("\r\n");
      out.write("\t\tif (eval(\"theForm.\" + fieldArray[i] + \".value\") == \"\"){\r\n");
      out.write("\r\n");
      out.write("\t\t\talert(\"The field \" + nameArray[i] + \" can not be null\");\r\n");
      out.write("\r\n");
      out.write("\t\t\tnullField = eval(\"theForm.\" + fieldArray[i]);\r\n");
      out.write("\r\n");
      out.write("\t\t\tnullField.focus();\r\n");
      out.write("\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\r\n");
      out.write("\t\t}\r\n");
      out.write("\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\treturn true;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("//var w_left = Math.ceil(screen.width/2-350);\r\n");
      out.write("//var w_top = Math.ceil(screen.height/2-300);\r\n");
      out.write("\r\n");
      out.write("var w_left = 0;\r\n");
      out.write("var w_top = 0;\r\n");
      out.write("\r\n");
      out.write("//var format_Window = \"dependent=yes,left=\"+w_left+\",top=\"+w_top+\",width=700,height=600,screenX=800,screenY=600,titlebar=yes, center: yes, help: yes, resizable: yes, status: yes, scrollbars: yes\";\r\n");
      out.write("\r\n");
      out.write("var format_Window = \"dependent=yes,left=\"+w_left+\",top=\"+w_top+\",width=800,screenX=800,titlebar, center, help, resizable, status, scrollbars\";\r\n");
      out.write("//var format_Window = \"\"\r\n");
      out.write("\r\n");
      out.write("function fill_List(arrID, arrName) {\r\n");
      out.write("\r\n");
      out.write("\tvar select_Inventor = document.forms[\"application\"].{InventorID_Name};\r\n");
      out.write("\r\n");
      out.write("\tfor (i = 0; i &lt; arrID.length; i++) {\r\n");
      out.write("\r\n");
      out.write("\t\tif (arrID[i].substr(0, 5) != \"//DEL\"){\r\n");
      out.write("\r\n");
      out.write("\t\t\tvar isAdded = false; //check if exist in list box\r\n");
      out.write("\r\n");
      out.write("\t\t\tfor (j = 0; j &lt; select_Inventor.options.length; j++)\r\n");
      out.write("\r\n");
      out.write("\t\t\t\tif (arrID[i] == select_Inventor.options[j].value) {\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\tisAdded = true;\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\t\tif (!isAdded)\r\n");
      out.write("\r\n");
      out.write("\t\t\t\tselect_Inventor.options.add(new Option(arrName[i], arrID[i]));\r\n");
      out.write("\r\n");
      out.write("\t\t}\r\n");
      out.write("\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\tif (select_Inventor.length &gt; 0)\r\n");
      out.write("\r\n");
      out.write("\t\tselect_Inventor.selectedIndex = 0;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("function del_Inventor() {\r\n");
      out.write("\r\n");
      out.write("\tvar select_Inventor = document.forms[\"application\"].{InventorID_Name};\r\n");
      out.write("\r\n");
      out.write("\tvar curLength = select_Inventor.options.length;\r\n");
      out.write("\r\n");
      out.write("\tvar sel_index = select_Inventor.selectedIndex;\r\n");
      out.write("\r\n");
      out.write("\tvar item_Array = new Array();\r\n");
      out.write("\r\n");
      out.write("\tfor (k = 0; k &lt; curLength; k++)\r\n");
      out.write("\r\n");
      out.write("\t\tif(!select_Inventor.options[k].selected)\r\n");
      out.write("\r\n");
      out.write("\t\t\titem_Array[item_Array.length] = new Option(select_Inventor.options[k].text, select_Inventor.options[k].value);\r\n");
      out.write("\r\n");
      out.write("\tselect_Inventor.length = 0;\r\n");
      out.write("\r\n");
      out.write("\tfor (k = 0; k &lt; item_Array.length; k++)\r\n");
      out.write("\r\n");
      out.write("\t\tselect_Inventor.options[k] = new Option(item_Array[k].text, item_Array[k].value);\r\n");
      out.write("\r\n");
      out.write("\tselect_Inventor.selectedIndex = 0;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("function buildInventor_List() {\r\n");
      out.write("\r\n");
      out.write("\tvar select_Inventor = document.forms[\"application\"].{InventorID_Name};\r\n");
      out.write("\r\n");
      out.write("\tvar textInventor_List = document.forms[\"application\"].{Inventor_List_Name};\r\n");
      out.write("\r\n");
      out.write("\ttextInventor_List.value = \"\";\r\n");
      out.write("\r\n");
      out.write("\tif (select_Inventor.options.length &gt; 0) {\r\n");
      out.write("\r\n");
      out.write("\t\tfor (i = 0; i &lt; select_Inventor.options.length - 1; i++)\r\n");
      out.write("\r\n");
      out.write("\t\t\ttextInventor_List.value += \"inventorID[]=\" + select_Inventor.options[i].value + \"&amp;\";\r\n");
      out.write("\r\n");
      out.write("\t\ttextInventor_List.value += \"inventorID[]=\" + select_Inventor.options[i].value;\r\n");
      out.write("\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\telse {\r\n");
      out.write("\r\n");
      out.write("\t\talert(\"Inventors must be ar least one\");\r\n");
      out.write("\r\n");
      out.write("\t\tselect_Inventor.focus();\r\n");
      out.write("\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\treturn true;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function fillOwner(ownerID, ownerName) {  //Really owner\r\n");
      out.write("\r\n");
      out.write("\tdocument.{HTMLFormName}.OwnerID.value = ownerID;\r\n");
      out.write("\r\n");
      out.write("\tdocument.{HTMLFormName}.OwnerName.value = ownerName;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("//Khoi edit\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("window.onload = bind_events; //Assign bind_events @1-19F7B649\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("//End CCS script\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("</head><body vlink=\"#000000\" text=\"#000000\" link=\"#000000\" bgcolor=\"#e5f4ff\" alink=\"#ff0000\" class=\"PatentSnowPageBODY\">\r\n");
      out.write("\r\n");
      out.write("<div id=\"PTMain\">\r\n");
      out.write("  <div id=\"PTLeft\">\r\n");
      out.write("\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  <div id=\"PTContent\">\r\n");
      out.write("    <br>\r\n");
      out.write("    <!-- BEGIN Record application -->\r\n");
      out.write("    <form enctype=\"{HTMLFormEnctype}\" method=\"post\" action=\"{Action}\" name=\"AFormName\">\r\n");
      out.write("\r\n");
      out.write("      <font class=\"PatentSnowFormHeaderFont\">Application for Dormitory</font>\r\n");
      out.write("      <table cellspacing=\"2\" cellpadding=\"2\" border=\"0\" style=\"width: 500px; height: 515px;\" class=\"PatentSnowFormTABLE\">\r\n");
      out.write("        <!-- BEGIN Error -->\r\n");
      out.write("        <tbody><tr>\r\n");
      out.write("          <td colspan=\"4\" class=\"PatentSnowErrorDataTD\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write(" <!-- END Error -->\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td class=\"PatentSnowFieldCaptionTD\">Application ID&nbsp;</td>\r\n");
      out.write("          <td class=\"PatentSnowDataTD\"><input style=\"width: 141px; height: 20px;\" readonly=\"\" name=\"{appID_Name}\" value=\"\" size=\"16\" maxlength=\"10\" class=\"PatentSnowInput\">&nbsp;</td>\r\n");
      out.write("          <td class=\"PatentSnowFieldCaptionTD\">Referee&nbsp;name </td>\r\n");
      out.write("          <td class=\"PatentSnowDataTD\"><input readonly=\"\" name=\"{attName_Name}\" value=\"\" size=\"14\" style=\"width: 135px; height: 20px;\" class=\"PatentSnowInput\"><input type=\"hidden\" style=\"width: 11px; height: 20px;\" name=\"{attID_Name}\" value=\"\" size=\"1\" maxlength=\"15\" class=\"PatentSnowInput\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td class=\"PatentSnowFieldCaptionTD\">App Name&nbsp;</td>\r\n");
      out.write("          <td colspan=\"3\" class=\"PatentSnowDataTD\"><input style=\"width: 364px; height: 20px;\" name=\"{appName_Name}\" value=\"\" size=\"48\" maxlength=\"50\" class=\"PatentSnowInput\">&nbsp;</td>\r\n");
      out.write("        </tr>\r\n");
      out.write("\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td class=\"PatentSnowFieldCaptionTD\">Student Info</td>\r\n");
      out.write("          <td colspan=\"3\" class=\"PatentSnowDataTD\">ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("            :&nbsp;<input readonly=\"\" class=\"PatentSnowInput\" name=\"{OwnerID_Name}\" value=\"\"><br>\r\n");
      out.write("\r\n");
      out.write("            Name :&nbsp;<input size=\"29\" readonly=\"\" style=\"width: 222px; height: 20px;\" name=\"\" value=\"\" class=\"PatentSnowInput\">&nbsp;\r\n");
      out.write("            <!-- BEGIN Button Button_ChooseOwner --><input type=\"button\" size=\"14\" style=\"width: 87px; height: 20px;\" name=\"{Button_Name}\" value=\"Choose owner\" onclick=\"javascript:choose_Owner();\" class=\"PatentSnowButton\"><!-- END Button Button_ChooseOwner --></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td class=\"PatentSnowFieldCaptionTD\">Classification&nbsp;</td>\r\n");
      out.write("          <td class=\"PatentSnowDataTD\">\r\n");
      out.write("            <select style=\"width: 130px;\" name=\"{classID_Name}\" class=\"PatentSnowSelect\">\r\n");
      out.write("              <option selected=\"\" value=\"-1\">Select Value </option>\r\n");
      out.write(" </select>\r\n");
      out.write("\r\n");
      out.write(" </td>\r\n");
      out.write("          <td class=\"PatentSnowFieldCaptionTD\">Date Of Filling&nbsp;</td>\r\n");
      out.write("          <td class=\"PatentSnowDataTD\"><input style=\"width: 100px; height: 20px;\" name=\"DateOfFilling_Name\" value=\"\" size=\"15\" maxlength=\"10\" class=\"PatentSnowInput\">\r\n");
      out.write("            <!-- BEGIN DatePicker DatePicker_DateOfFilling --><a href=\"javascript:showDatePicker('DateOfFilling_Name','AFormName','DateOfFilling_Name');\" class=\"PatentSnowDataLink\"><img border=\"0\" src=\"Themes/DatePicker/DatePicker1.gif\"></a><!-- END DatePicker DatePicker_DateOfFilling -->&nbsp;</td>\r\n");
      out.write("        </tr>\r\n");
      out.write("\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td class=\"PatentSnowFieldCaptionTD\">Notes&nbsp;</td>\r\n");
      out.write("          <td colspan=\"3\" class=\"PatentSnowDataTD\"><textarea cols=\"61\" rows=\"3\" name=\"{abstract_Name}\" style=\"width: 402px; height: 52px;\" class=\"PatentSnowTextarea\">{abstract}</textarea>&nbsp;</td>\r\n");
      out.write("        </tr>\r\n");
      out.write("\r\n");
      out.write("        <tr>\r\n");
      out.write("\r\n");
      out.write("          <td nowrap=\"\" class=\"PatentSnowFieldCaptionTD\">Details&nbsp;<br></td>\r\n");
      out.write("          <td colspan=\"3\" class=\"PatentSnowDataTD\">\r\n");
      out.write("            <!-- BEGIN FileUpload summary --><input type=\"hidden\" name=\"{ControlName}\" value=\"{State}\">\r\n");
      out.write("\r\n");
      out.write("            <!-- BEGIN Upload --><input type=\"file\" size=\"22\" style=\"width: 322px; height: 20px;\" name=\"{FileControl}\" class=\"PatentSnowInput\"><!-- END Upload -->\r\n");
      out.write("            <!-- BEGIN DeleteControl -->Delete <input type=\"checkbox\" {deletechecked}=\"\" name=\"{DeleteControl}\" class=\"PatentSnowInput\"><!-- END DeleteControl --><!-- END FileUpload summary --></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td class=\"PatentSnowFieldCaptionTD\">List of Roommates</td>\r\n");
      out.write("          <td colspan=\"3\" class=\"PatentSnowDataTD\">\r\n");
      out.write("\r\n");
      out.write("            <select size=\"4\" style=\"width: 291px; height: 70px;\" ondblclick=\"javascript:del_Inventor();\" name=\"{InventorID_Name}\" class=\"PatentCSSSelect\">\r\n");
      out.write("              </select>\r\n");
      out.write(" <img border=\"0\" src=\"images/reg_owner_more.JPG\" onclick=\"javascript:open_Inventor();\"><img border=\"0\" src=\"images/reg_owner_less.JPG\" onclick=\"javascript:del_Inventor();\"><input type=\"hidden\" name=\"{Inventor_List_Name}\" value=\"\" size=\"4\" style=\"width: 37px; height: 22px;\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td align=\"right\" colspan=\"5\" class=\"PatentSnowFooterTD\"><input type=\"hidden\" name=\"{stateOfApp_Name}\" value=\"{stateOfApp}\">\r\n");
      out.write("            <!-- BEGIN Button Button_Insert --><input type=\"submit\" name=\"{Button_Name}\" value=\" Register\" class=\"PatentSnowButton\"><!-- END Button Button_Insert -->&nbsp;\r\n");
      out.write("            <!-- BEGIN Button Button_Cancel --><input type=\"submit\" name=\"{Button_Name}\" value=\"Cancel\" class=\"PatentSnowButton\"><!-- END Button Button_Cancel -->&nbsp;\r\n");
      out.write("            <!-- BEGIN Button Button_Back --><input type=\"button\" name=\"{Button_Name}\" value=\" Back \" class=\"PatentSnowButton\"><!-- END Button Button_Back --></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("      </tbody></table>\r\n");
      out.write("\r\n");
      out.write("    </form>\r\n");
      out.write(" <!-- END Record application --><br>\r\n");
      out.write("  </div>\r\n");
      out.write(" {Footer}\r\n");
      out.write("</div>\r\n");
      out.write("</body></html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
