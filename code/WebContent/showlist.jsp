<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="Admin_home.jsp">Home</a>>><a href="showlist.jsp">Resumes</a>
<table align="center">
<%String name="";
	String email="";
	try
	{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con=DriverManager.getConnection("jdbc:odbc:srikanth","smartcity","smartcity");
		String sql="select name,email from resume";
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery(sql);
		while(rs.next())
		{
			name=rs.getString("name");
			 email=rs.getString("email");
		%>
		<tr><td><%=name%></td><td>
		<a href="viewResume.jsp?email=<%=email%>">View</a></td>
		<td><a href="deleteResume.jsp?email=<%=email%>">Delete</a></td></tr>
		<%
		}	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%></table>
</body>
</html>