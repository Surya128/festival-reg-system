<%@page import="com.accenture.adf.businesstier.entity.People"%>
 <%@page import="com.accenture.adf.businesstier.entity.Visitor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {
        background-image: url("images/bg2.jpg");
       
    background-size: 1500px 900px;
    background-repeat: no-repeat;
} 
 
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function validatePassword()
{
	var newPassword=document.myform.newpassword.value;
	var conPassword=document.myform.confirmpassword.value;
	if( newPassword!=conPassword  )
		{
		document.getElementById("error").innerHTML="New password, confirm password mismatch";
		return false;
		}
}


</script>
</head>
<body>
<CENTER>
<table border="2" cellpadding="10"  color="green" width="1340">
<tr bgcolor="#004b66"> <br><br>
<td align="center"><h2><a href="searchVisitor.htm"><font text color = "white">Festival Registration System</font></a></h2></td>
<td>
     <a href="logout.htm"><font text color = "white">Logout</font></a>
     </td>
      <td>
     <a href="about.jsp"><font text color = "white">About</font></a>
     </td>
     <td>
     <a href="catalog.htm"><font text color = "white">Events</font></a>
     </td>
</tr>
</table>
</CENTER>
	<form action="changePassword.htm" name="myform" onsubmit="return validatePassword()">
	<% Visitor visitor = (Visitor)request.getAttribute("visitor");

%>
<center>
	<table border="1">
	<tr>
	<td>Old Password</td>
	<td><input type="text" name="oldpassword" ></td>
	</tr>
	<tr>
	<td>New Password</td>
	<td><input type="password" name="newpassword" required ></td>
	</tr>
	<tr>
	<td>Confirm Password</td>
	<td><input type="password" name="confirmpassword" required></td>
	</tr>
	<tr>
	<td><input type="submit" name="Change" value="Change"></td>
	</tr>
	
	</table>
	</center>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<font color="red"><p id="error">
	<c:out value="${ERRORMESSAGE}" ></c:out>
	</p></font>
	
	
	
	
	
	</form>
	
</body>
</html>