<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
		<html>
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
				<title>Updateing to database</title>
			</head>
			<body>
			<%
				String str=request.getParameter("c1");
				String str1=request.getParameter("c2");
				String str2=request.getParameter("c3");
				String str3=request.getParameter("c4");
				String str4=request.getParameter("c5");
				String str5=request.getParameter("c6");
				String str6=request.getParameter("c7");
				PrintWriter pw=response.getWriter();
				try
				{
	 					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 					String url="jdbc:odbc:srikanth";
	 					Connection con=DriverManager.getConnection(url,"smartcity","smartcity");
	 					Statement st=con.createStatement();
	 					pw.println("connected");
	 					int k=st.executeUpdate("insert into industries values('"+str+"','"+str1+"','"+str2+"','"+str3+"','"+str4+"','"+str5+"','"+str6+"')");
	 					pw.println("inserted successfully");
				}	    
				catch(Exception e)
				{
						e.printStackTrace();
				}
			%>
			</body>
		</html>