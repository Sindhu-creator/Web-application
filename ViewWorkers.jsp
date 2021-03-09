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
			<li class="first current_page_item"><a href="AddWorkers.jsp">Add Workers</a></li>
			<li><a href="ViewWorkers.jsp">View Workers</a></li>
			<li><a href="ViewTookDose.jsp">View Peoples who Took Dose</a></li>
			<li><a href="ViewMissedDose.jsp">View Missed Dose Peoples</a></li>
			<li><a href="Logout.jsp">Logout</a></li>
		</ul>			<br class="clearfix" />
				</div>
			
	<div id="splash">
		<img class="pic" src="images/investor.jpg" width="870" height="230" alt="" />
	</div>	
			<center>

   <table align="center" border="1">
   <tr><th><font size="3" color="black">Username</font></th>
   <th><font size="3" color="black">Password</font></th>
   <th><font size="3" color="black">Contact No</font></th>
   <th><font size="3" color="black">Email ID</font></th>
    <th><font size="3" color="black">Address</font></th>
   <th><font size="3" color="black">Department</font></th>
   <%  try{
			Connection con = DBCon.getCon();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from users");
			while(rs.next()){
						%>
						<tr><td><font size="3" color="black"><%=rs.getString(1)%></td>
						<td><font size="3" color="black"><%=rs.getString(2)%></td>
						<td><font size="3" color="black"><%=rs.getString(3)%></td>
						<td><font size="3" color="black"><%=rs.getString(4)%></td>
						<td><font size="3" color="black"><%=rs.getString(5)%></td>
						<td><font size="3" color="black"><%=rs.getString(6)%></td>
						
					<%}
				
			
	}catch(Exception e){
		e.printStackTrace();
	}%>
			</table>
				</div>	
					
				</div>
				
	</body>
</html>