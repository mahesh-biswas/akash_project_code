<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
			<title>Insert title here</title>
		</head>
		<body>
		<%
				String flight=request.getParameter("value");
				//System.out.println(flight);
				//String url="oracle.jdbc.driver.OracleDriver";
				//String url1="jdbc:oracle:thin:@localhost:1521:ORCL";
				if(flight.equals("select"))
				{	
					out.println("Invalid Services");
				}
				else
				{
				try
				{
					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 				String url="jdbc:odbc:srikanth";
					Connection con=DriverManager.getConnection(url,"smartcity","smartcity");
						System.out.println("Database connected");
					Statement stmt=con.createStatement();
					String sql="select * from flights1 where fname='"+flight+"'";
					ResultSet rt=stmt.executeQuery(sql);
					StringBuffer sb=new StringBuffer();
					while(rt.next())
					{
						String fno=rt.getString("fno");
						//	String fname=rt.getString("fname");
						String from=rt.getString("fromp");
						String to=rt.getString("top");
						String lt=rt.getString("departure");
						String at=rt.getString("arrival");
						String freq=rt.getString("freq");
				
						sb.append(fno);
						sb.append("$");
						//sb.append(fname);
						//sb.append("$");
						sb.append(from);
						sb.append("$");
						sb.append(to);
						sb.append("$");
						sb.append(lt);
						sb.append("$");
						sb.append(at);
						sb.append("$");
						sb.append(freq);
						sb.append("$");
						sb.append("*");
					}
					out.println(sb);
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
	}
%>
		<!-- </table>-->
</body>
</html>