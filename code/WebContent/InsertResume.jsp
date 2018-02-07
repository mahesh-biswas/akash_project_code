<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert Resume</title>
	</head>
	<body>
	<%
		String name=request.getParameter("name");
		String sur=request.getParameter("sur");
		String val1=request.getParameter("10");
		String Inter=request.getParameter("inter");
		String grad=request.getParameter("grad");
		String Strength=request.getParameter("strength");
		String weak=request.getParameter("weaks");
		String hobby=request.getParameter("hobbies");
		String addr=request.getParameter("addr");
		String place=request.getParameter("pw");
		String lang=request.getParameter("lang");
		String others=request.getParameter("act");
		String tech=request.getParameter("tech");
		String email=request.getParameter("email");
	
		try
		{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			Connection con=DriverManager.getConnection("jdbc:odbc:srikanth","smartcity","smartcity");
			String sql="insert into resume values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,name);
			ps.setString(2,sur);
			ps.setString(3,val1);
			ps.setString(4,Inter);
			ps.setString(5,grad);
			ps.setString(6,tech);
			ps.setString(7,Strength);
			ps.setString(8,weak);
			ps.setString(9,hobby);
			ps.setString(10,addr);
			ps.setString(11,place);
			ps.setString(12,lang);
			ps.setString(13,others);
			ps.setString(14,email);
			int i=ps.executeUpdate();
			if(i==1)
			{
				%><div style="color: blue;font-size: x-large;font-style: italic;">Resume Forwarded to Admin</div>
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
</table>
				<%
			}
			else
			{
				%><div style="color: blue;font-size: x-large;font-style: italic;">Failed to Forward Resume to  Admin</div><%
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
%>
</body>
</html>