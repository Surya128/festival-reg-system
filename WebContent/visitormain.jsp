<%@page import="com.accenture.adf.businesstier.entity.Visitor"%>
 <%@page import="com.accenture.adf.businesstier.entity.Event"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
  <%@include file="header.jsp"%>
 <link href="struts2.css" rel="stylesheet" type="text/css">
 <head>
 <style>
body {
        background-image: url("images/bg2.jpg");
       
    background-size: 1500px 900px;
    background-repeat: no-repeat;
} 
div{
style="color:red;"
}
 
</style>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <script type="text/javascript">

 var nHist=window.history.length;
 if(window.history[nHist]!=window.location)
	 window.history.forward();
 	
 </script>
 <title>Visitor main</title>
 </head>

<body><center>
  welcome
  <font face="Comic Sans MS" size="8" color="red" ><%=request.getSession().getAttribute("USERNAME")%></font></center>
  
  <% Visitor visitor = (Visitor) request.getAttribute("visitor"); %>
  <%--  <% Event event = (Event) request.getAttribute("allEvents"); %>--%>
 
   <br>
   <table border="2" cellpadding="10"  color="green" width="1340">
    <tr bgcolor="#004b66">
     <div><td>
      <h2>
       <center><font text color = "white">Festival Registration System</font></center>
      </h2>
     </td>
     <td>
     <a href="logout.htm"><font text color = "white">Logout</font></a>
     </td>
      <td>
     <a href="changepassword.jsp"><font text color = "white">Change Password</font></a>
     </td>
     <td>
     <a href="about.jsp"><font text color = "white">About</font></a>
     </td>
     <td>
     <a href="catalog.htm"><font text color = "white">Events</font></a>
     </td></div>
    </tr>
  
  <tr>
    <table>
    <tr>
     <td><b>First name: </b><%=visitor.getFirstName()%></td>
    </tr>
    
    <tr>
     <td><b>Last name: </b><%=visitor.getLastName()%></td>
    </tr>
    
    <tr>
     <td><b>Address: </b><%=visitor.getAddress()%></td>
    </tr>
    <tr>
     <td><b>Email: </b><%=visitor.getEmail()%></td>
    </tr>
    
    <tr>
     <td><b>Phone number: </b><%=visitor.getPhoneNumber()%>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="EditVisitor.jsp?visitorId=${visitor.visitorId}&userName=${visitor.getUserName()}&password=${visitor.getPassword()}&firstName=${visitor.getFirstName()}&lastName=${visitor.getLastName()}&email=${visitor.getEmail()}&phoneNumber=${visitor.getPhoneNumber()}&address=${visitor.address}">Edit</a></td>
    </tr>
         </table> 
         </tr>
  <tr> 
   <br>
    <table border="2" width="1340">
    <tr> <center><th colspan="10"><font color="red">Event List</font></th></center></tr>
    <tr>
      <th>Event Id</th>
      <th>Name</th>
      <th>Description</th>
      <th>Duration</th>
      <th>Place</th>
      <th>EventType</th>
      <th>First Name</th>
      <th>Last Name</th>
   	   <th>Session Id</th>
   	   <th>Signup Id</th>
     </tr>
   
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <c:forEach items="${regEvents}" var="e1" >

   <tr>
     <td><c:out value="${e1[0]}"/></td>
     <td><c:out value="${e1[1]}"/></td>
     <td><c:out value="${e1[2]}"/></td>
     <td><c:out value="${e1[3]}"/></td>
     <td><c:out value="${e1[4]}"/></td>
     <td><c:out value="${e1[5]}"/></td>
     <td><c:out value="${e1[6]}"/></td>
     <td><c:out value="${e1[7]}"/></td>
     <td><c:out value="${e1[8]}"/></td>
     <td><c:out value="${e1[9]}"/></td>
 	<td><a href="eventunreg.htm?eventid=${e1[0]}&eventsessionid=${e1[8]}">Unregister</a>
     
    </tr>       
  </c:forEach>  
 
    </table>
  </tr> 
  <center>  
 <table>  <br> 
        <form action="searchEventByName.htm">
        <tr>
	<td>Search Events <input type="text" name="eventname"/></td>
	<td><input type="submit" value="Search"/></td>
	</tr>
	</form> 
</table>
</center>
         
         
  <tr> 
   <br>
    <table border="2" width="1340">
    <tr> <th colspan="8"><font color="red">Event List</font></th></tr>
    <tr>
      <th>Event Id</th>
     <th>Name<a href="displayasc.htm"><img src="images/dpointer.jpg" alt="1"></a>
    <a href="displaydesc.htm"><img src="images/upointer.jpg" alt="1"></a></th>
      <th>Description</th>
      <th>Place</th>
      <th>Duration</th>
      <th>EventType</th>
      <th>SeatsAvailable</th>
      <th>SessionID</th>
     </tr>
   
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <c:forEach items="${allEvents}" var="e" >

   <tr>
     <td><c:out value="${e[0]}"/></td>
     <td><c:out value="${e[1]}"/></td>
     <td><c:out value="${e[2]}"/></td>
     <td><c:out value="${e[3]}"/></td>
     <td><c:out value="${e[4]}"/></td>
     <td><c:out value="${e[5]}"/></td>
     <td><c:out value="${e[6]}"/></td>
      <td><c:out value="${e[7]}"/></td>
      <c:if test="${e[6]>0}">
     <td><a href="eventreg.htm?eventid=${e[0]}&sessionId=${e[7]}">Register</a>
    	</c:if>
    <c:if test="${e[6]==0}">
    <td><font color="red"><c:out value="Not available"></c:out></font></td>
    </c:if>
    </tr>

</c:forEach>   
<font color="red"> <c:out value="${RegError}"></c:out> </font>
   </table>
  </tr>
  
  </table>
  
 </body>
 </html>
