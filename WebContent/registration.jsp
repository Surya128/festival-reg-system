<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript">
 
 var nHist=window.history.length;
 if(window.history[nHist]!=window.location)
	 window.history.forward();
 	
 </script>
<title>Register</title>
</head>
<body>
	  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<% if(request.getAttribute("REGISTRATIONSTATUSMESSAGE")!=null)
	 {
	 %>
	<h3 align="center"><c:out value="${REGISTRATIONSTATUSMESSAGE}"></c:out></h3>
	 <%
	 } 
	 %>
	  <% if(request.getAttribute("REGISTRATIONERRORMESSAGE")!=null)
	 {
	 %>
	 <h3 align="center"><c:out value="${REGISTRATIONERRORMESSAGE}"></c:out></h3>
	 <center><a href="register.jsp">Register</a></center>
	 <%
	 } 
	 %>
</body>
</html>