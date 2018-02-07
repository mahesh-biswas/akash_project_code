<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.ResultSet"%>
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
String name="",sur="",val1="",Inter="",grad="",Strength="",weak="";
String hobby="",addr="",place="",lang="",others="",tech="",email1="";
Connection con;

	try
	{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:srikanth","smartcity","smartcity");
		System.out.println("connection ok");
		String sql="select * from resume where email='"+email+"'";
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery(sql);
		System.out.println("executed");
		if(rs.next())
		{
			 name=rs.getString("name");
			 sur=rs.getString("surname");
			 val1=rs.getString("tenth");
			 Inter=rs.getString("inter");
			 grad=rs.getString("graduate");
			 Strength=rs.getString("strength");
			 weak=rs.getString("weak");
			 hobby=rs.getString("hobby");
			 addr=rs.getString("address");
			 place=rs.getString("pw");
			 lang=rs.getString("lang");
			 others=rs.getString("others");
			 tech=rs.getString("tech");
			 email1=rs.getString("email");	
		}
	%>
<a href="Admin_home.jsp">Home</a>>><a href="showlist.jsp">Resumes</a>>><%=name%> Resume
<table align="center">
<tr><td>Name:</td><td><%=name%></td></tr>
<tr><td>Surname:</td><td><%=sur%></td></tr>
<tr><td>10<sup>th</sup></td><td><%=val1%></td></tr>
<tr><td>Intermediate:</td><td><%=Inter%></td></tr>
<tr><td>Graduation:</td><td><%=grad%></td></tr>
<tr><td>Technologies:</td><td><%=tech%></td></tr>
<tr><td>Strength:</td><td><%=Strength%></td></tr>
<tr><td>Weakness:</td><td><%=weak %></td></tr>
<tr><td>Hobbies:</td><td><%=hobby %></td></tr>
<tr><td>Address:</td><td><%=addr %></td></tr>
<tr><td>Places to Work:</td><td><%=place%></td></tr>
<tr><td>Languages Known:</td><td><%=lang%></td></tr>
<tr><td>Other Activities:</td><td><%=others%></td></tr>
<tr><td>E-mail:</td><td><div style="color: blue;font-style: italic;"><%=email%></div></td></tr>
</table>
<%
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
</body>
</html>