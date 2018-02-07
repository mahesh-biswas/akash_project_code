<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="javax.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<html>
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
			<title>Insert title here</title>
		</head>
		<body>
		<%
			String s1=request.getParameter("fn");
			String s2=request.getParameter("ln");
			String s3=request.getParameter("uid");
			String s4=request.getParameter("pwd");
			String s5=request.getParameter("male");
			String s6=request.getParameter("r1");
			String s7=request.getParameter("email");
			String s8=request.getParameter("pin");
			String s9=request.getParameter("mob");
			try
			{
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
				 String url="jdbc:odbc:srikanth";
				Connection con=DriverManager.getConnection(url,"smartcity","smartcity");
				System.out.println("connected");
				String sql="insert into register values(?,?,?,?,?,?,?,?,?);";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1,s1);
				ps.setString(2,s2);
				ps.setString(3,s3);
				ps.setString(4,s4);
				ps.setString(5,s6);
				ps.setString(6,s9);
				ps.setString(7,s5);
				ps.setString(8,s7);
				ps.setString(9,s8);
				int i=ps.executeUpdate();
				ps.close();
				String sql2="insert into login12 values(?,?,?)";
				PreparedStatement ps2=con.prepareStatement(sql2);
				System.out.println("Connected 2");
				ps2.setString(1,s3);
				ps2.setString(2,s4);
				ps2.setString(3,s6);
				int j=ps2.executeUpdate();
				System.out.println("running");
				if(j==1)
				{
					%><jsp:forward page="home1.jsp?w=Registred. Now You Can enter into ur Account."></jsp:forward><%				}
				else
				{
					%><jsp:forward page="home1.jsp?w=Registration Failed."></jsp:forward><%
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
%>

</body>
</html>