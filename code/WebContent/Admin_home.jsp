<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADMIN HOME PAGE</title>
</head>
<body background="Images\2.jpg">
<h1>
<%HttpSession ss=request.getSession(true);
	String s=(String)ss.getAttribute("name");%><%="Welcome "+s%></h1>
<form action="alerts.html">
<input type="submit" value="update alerts"> 

</form>

<form action="update.jsp">
<input type="submit" value="update industries"> 
</form>

<form action="showlist.jsp">
<input type="submit" value="ViewResumes"> 
</form>
</body>
</html>