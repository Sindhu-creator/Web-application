<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Poshan Abhiyaan</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<script language="javascript">
	function validate(formObj)
	{
	if(formObj.t1.value.length==0)
	{
	alert("Please Enter name");
	formObj.t1.focus();
	return false;
	}
	if(formObj.t2.value.length==0)
	{
	alert("Please choose birth date");
	formObj.t2.focus();
	return false;
	}
	if(formObj.t4.value.length==0)
	{
	alert("Please Enter Contact No");
	formObj.t4.focus();
	return false;
	}
	if(!formObj.t4.value.match(/^\d{10}$/)){
		window.alert("Valid contact no must be enter");
		formObj.t4.focus();
		return false;
	}
	if(formObj.t5.value.length==0)
	{
	alert("Please Enter Email ID");
	formObj.t5.focus();
	return false;
	}
	var filter = /^([a-zA-Z0-9_\.\-])+\@([a-z]+\.)+(com)+$/;
    if (!filter.test(formObj.t5.value)) {
		window.alert('Please enter valid email address');
		formObj.t5.focus();
		return false;
	}
	if(formObj.t6.value.length==0)
	{
	alert("Please Enter dose name");
	formObj.t6.focus();
	return false;
	}
	if(formObj.t7.value.length==0)
	{
	alert("Please Enter dose description");
	formObj.t7.focus();
	return false;
	}
	if(formObj.t8.value.length==0)
	{
	alert("Please Enter health condition");
	formObj.t8.focus();
	return false;
	}
	if(formObj.t9.value.length==0)
	{
	alert("Please choose dose start date");
	formObj.t9.focus();
	return false;
	}
	if(formObj.t10.value.length==0)
	{
	alert("Please choose dose end date");
	formObj.t10.focus();
	return false;
	}
	if(formObj.t11.value.length==0)
	{
	alert("Please upload photo");
	formObj.t11.focus();
	return false;
	}
	formObj.actionUpdateData.value="update";
	return true;
	}
	</script>
	 <script language="javascript" type="text/javascript" src="datetimepicker.js">
</script>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h3><font size="5" color="white">Promoting Holistic Nutrition among Women & Children Via IT for PoshanAnhiyaan</font></h3>
		</div>
		<div id="slogan">
			
		</div>
	</div>
	<div id="menu">
		<ul>
			<li class="first current_page_item"><a href="AddDetails.jsp">Add Child/Women Data</a></li>
			<li><a href="AddDoseTook.jsp">Dose Took Data</a></li>
			<li><a href="SendNotification.jsp">Send Notifications</a></li>
			<li><a href="ViewDetails.jsp">View Child/Women Data</a></li>
			<li><a href="Logout.jsp">Logout</a></li>
		</ul>			<br class="clearfix" />
				</div>
			
	<div id="splash">
		<img class="pic" src="images/investor.jpg" width="870" height="230" alt="" />
	</div>	
			<center>
<form name="f1" method="post" action="AddDetails" enctype="multipart/form-data" onsubmit="return validate(this);"><br/>
   <h2><b>Add Women/Childs Details Screen</b></h2>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
						<table align="center" width="40" >
			 <tr><td><b>Name</b></td><td><input type="text" name="t1" style="font-family: Comic Sans MS" size="30"/></td></tr>

			<tr><td><b>Birth&nbsp;Date</b></td><td><input name="t2" type="Text" id="demo1" maxlength="25" size="20" class="c2" ><a href="javascript:NewCal('demo1','ddmmmyyyy',false,24)"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
	  		<span class="descriptions"></span></td>
		  </td></tr>

			<tr><td><b>Gender</b></td><td><select name="t3">
			<option value="Male">Male</option>
		    <option value="Female">Female</option>
			</td></tr>

			<tr><td><b>Contact&nbsp;No</b></td><td><input type="text" name="t4" style="font-family: Comic Sans MS" size="15"/></td></tr>
         
		  <tr><td><b>Email&nbsp;ID</b></td><td><input type="text" name="t5" style="font-family: Comic Sans MS" size="40"/></td></tr>

		  <tr><td><b>Dose&nbsp;Name</b></td><td><input type="text" name="t6" style="font-family: Comic Sans MS" size="40"/></td></tr>

		   <tr><td><b>Dose&nbsp;Description</b></td><td><input type="text" name="t7" style="font-family: Comic Sans MS" size="60"/></td></tr>

		    <tr><td><b>Health&nbsp;Condition</b></td><td><input type="text" name="t8" style="font-family: Comic Sans MS" size="60"/></td></tr>

			<tr><td><b>Dose&nbsp;Start&nbsp;Date</b></td><td><input name="t9" type="Text" id="demo2" maxlength="25" size="20" class="c2" ><a href="javascript:NewCal('demo2','ddmmmyyyy',false,24)"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
	  		<span class="descriptions"></span></td>
		  </td></tr>

		  <tr><td><b>Dose&nbsp;End&nbsp;Date</b></td><td><input name="t10" type="Text" id="demo3" maxlength="25" size="20" class="c2" ><a href="javascript:NewCal('demo3','ddmmmyyyy',false,24)"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
	  		<span class="descriptions"></span></td>
		  </td></tr>

		   <tr><td><b>Upload&nbsp;Photo</b></td><td><input type="file" name="t11" style="font-family: Comic Sans MS" size="40"/></td></tr>
         
			<tr><td></td><td><input type="submit" value="Submit"></td>
			</table>
				</div>	
					
				</div>
				
	</body>
</html>