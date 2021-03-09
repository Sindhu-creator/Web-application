<%@page import="com.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Poshan Abhiyaan</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
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
		</ul>						<br class="clearfix" />
				</div>
			
	<div id="splash">
		<img class="pic" src="images/investor.jpg" width="870" height="230" alt="" />
	</div>	
			<center>
<form name="f1" method="post" action="ViewCompleteDetails.jsp" onsubmit="return validate(this);"><br/>
   <h2><b>View Details Screen</b></h2>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
						<table align="center" width="40" >
			 <tr><td><b>Women&nbsp;or&nbsp;Child&nbsp;ID</b></td><td><select name="t1">
			 <%  try{
			Connection con = DBCon.getCon();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select child_or_women_id from  dosedetails");
			while(rs.next()){%>
			<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
			<%}}catch(Exception e){
				e.printStackTrace();
			}%>
			 </select>
			 </td></tr>

			         
			<tr><td></td><td><input type="submit" value="Get Details"></td>
			</table>
				</div>	
					
				</div>
				
	</body>
</html>