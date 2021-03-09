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
	alert("Please Enter username");
	formObj.t1.focus();
	return false;
	}
	if(formObj.t2.value.length==0)
	{
	alert("Please Enter password");
	formObj.t2.focus();
	return false;
	}
	if(formObj.t3.value.length==0)
	{
	alert("Please Enter Contact No");
	formObj.t3.focus();
	return false;
	}
	if(!formObj.t3.value.match(/^\d{10}$/)){
		window.alert("Valid phone no must be enter");
		formObj.t3.focus();
		return false;
	}
	if(formObj.t4.value.length==0)
	{
	alert("Please Enter Email ID");
	formObj.t4.focus();
	return false;
	}
	var filter = /^([a-zA-Z0-9_\.\-])+\@([a-z]+\.)+(com)+$/;
    if (!filter.test(formObj.t4.value)) {
		window.alert('Please enter valid email address');
		formObj.t4.focus();
		return false;
	}
	if(formObj.t5.value.length==0)
	{
	alert("Please Enter Address");
	formObj.t5.focus();
	return false;
	}

	formObj.actionUpdateData.value="update";
	return true;
	}
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
			<li class="first current_page_item"><a href="AddWorkers.jsp">Add Workers</a></li>
			<li><a href="ViewWorkers.jsp">View Workers</a></li>
			<li><a href="ViewTookDose.jsp">View Peoples who Took Dose</a></li>
			<li><a href="ViewMissedDose.jsp">View Missed Dose Peoples</a></li>
			<li><a href="Logout.jsp">Logout</a></li>
		</ul>					<br class="clearfix" />
				</div>
			
	<div id="splash">
		<img class="pic" src="images/investor.jpg" width="870" height="230" alt="" />
	</div>	
			<center>
<form name="f1" method="post" action="AddWorkers" onsubmit="return validate(this);"><br/>
   <h2><b>Add Workers Screen</b></h2>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
						<table align="center" width="40" >
			 <tr><td><b>Username</b></td><td><input type="text" name="t1" style="font-family: Comic Sans MS" size="30"/></td></tr>

			<tr><td><b>Password</b></td><td><input type="password" name="t2" style="font-family: Comic Sans MS" size="30"/></td></tr>

			<tr><td><b>Contact&nbsp;No</b></td><td><input type="text" name="t3" style="font-family: Comic Sans MS" size="20"/></td></tr>

			<tr><td><b>Email&nbsp;ID</b></td><td><input type="text" name="t4" style="font-family: Comic Sans MS" size="30"/></td></tr>
         
		  <tr><td><b>Address</b></td><td><input type="text" name="t5" style="font-family: Comic Sans MS" size="40"/></td></tr>

		  <tr><td><b>Department</b></td><td><select name="t6">
		  <option value="Nurse Department">Nurse Department</option>
		  <option value="Doctor Department">Doctor Department</option>
		  <option value="Assistant Department">Assistant Department</option>
		  </select>
		  </td></tr>
         
			<tr><td></td><td><input type="submit" value="Add Employees"></td>
			</table>
				</div>	
					
				</div>
				
	</body>
</html>