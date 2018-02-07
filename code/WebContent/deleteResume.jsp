<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String email=request.getParameter("email");
Connection con;
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	con=DriverManager.getConnection("jdbc:odbc:srikanth","smartcity","smartcity");
	System.out.println("connection ok");
	String sql="DELETE FROM resume WHERE email='"+email+"'";
	Statement stmt=con.createStatement();
	int i=stmt.executeUpdate(sql);
	if(i==1)
	{
		%>
		<jsp:forward page="showlist.jsp?m=Resume deleted."></jsp:forward> 
		<% 	
	}
	else
	{%>
		<jsp:forward page="showlist.jsp?m=Filed to delete Resume."></jsp:forward>
	<%
	}
}
catch(Exception e)
{
	e.printStackTrace();
}

%>
</body>
</html>