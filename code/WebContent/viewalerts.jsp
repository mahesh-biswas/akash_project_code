<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
		<html>
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
				<title>View Messaging</title>
			</head>
			<body>
				<marquee direction="left" scrolldelay="1250">
				<% 
				try
				{
					String str="";
					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		 			String url="jdbc:odbc:srikanth";
		 			Connection con=DriverManager.getConnection(url,"smartcity","smartcity");
		 			Statement stmt=con.createStatement();
					ResultSet rs=stmt.executeQuery("select * from alerts");
					while(rs.next()){str=rs.getString(2);
					System.out.println(str);
				%>
					<a href="alertslink.jsp?d=<%=str %>"><%=str%></a><% }}catch(Exception e){e.printStackTrace();
				}%>
				</marquee>
			</body>
		</html>