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
<title>Insert title here</title>
</head>
<body>
	  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	  <c:out value="${UPDATEMESSAGE}" ></c:out>
	  <a href="index.jsp">Login</a>
</body>
</html>