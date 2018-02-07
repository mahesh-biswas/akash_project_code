<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<html><head>
<title>Student Home Page</title>
<link href="Images\style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {color: Yellow}
-->
</style>
</head><body background="Images\2.jpg">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tbody><tr>
    <td style="background-repeat: repeat-z;" background="Images\header_bg.jpg" valign="top"><table align="center" border="0" cellpadding="0" cellspacing="0" width="980">
      <tbody><tr>
        <td height="54">&nbsp;</td>
        <td><table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tbody><tr>
            <td width="25%"><h1 class="style1" align="center">Visakhapatnam <br>City Guider</h1></td>
            <td class="smtxtwhite" valign="bottom" width="69%"></td>
          </tr>
        </tbody></table></td>
        <td width="0">&nbsp;</td>
      </tr>
      <tr>
        <td background="Images\link_bg.jpg"><img src="Images\link_bg.jpg" width="0" height="100"></td>
        <td>
        <img src="Images\header1.jpg" alt="Vishakapatnam Hotels" width="375" height="200"><img src="Images\header2.jpg" alt="Hotels in Vishakapatnam" width="300" height="200"><img src="Images\header3.jpg" alt="Vizag Hotels" width="300" height="200"><img src="Images\header4.jpg" alt="Hotels in Vizag, Andra Pradesh" width="375" height="200">
        </td>
        <td background="Images\link_bg.jpg"><img src="Images\link_bg.jpg" width="0"></td>
      </tr>
      <tr>
        <td background="Images\link_bg.jpg">&nbsp;</td>
        <td style="background-repeat: repeat-x;" class="headermenu" background="Images\link_bg.jpg" bgcolor="#ffffff">
        <div align="center">
        <a href="Student_home.jsp">HOME</a>
        <img src="Images\link_sep.jpg" align="absmiddle" width="10" height="60" hspace="30">
        <a href="profle.jsp"> PROFILE</a>
        <img src="Images\link_sep.jpg" align="absmiddle" width="10" height="60" hspace="30">
        <a href="hydphotogallery1.jsp">PHOTOGALLERY</a>
        <img src="Images\link_sep.jpg" align="absmiddle" width="10" height="60" hspace="30">
        <a href="Education.jsp">EDUCATION</a>
        <img src="Images\link_sep.jpg" align="absmiddle" width="10" height="60" hspace="30">
        <a href="Downloads.jsp">DOWNLOADS</a>
        <img src="Images\link_sep.jpg" align="absmiddle" width="10" height="60" hspace="30">
        <a href="flightstimings1.jsp" target="_self">TRAVELS</a>
        <img src="Images\link_sep.jpg" align="absmiddle" width="10" height="60" hspace="30">
        <a href="Cityview.jsp">VIZAG MAP</a>
        <img src="Images\link_sep.jpg" align="absmiddle" width="10" height="60" hspace="30">
        <a href="home1.jsp">LOGOUT</a> </div></td>
        <td background="Images\link_bg.jpg">&nbsp;</td>
      </tr>
     </tbody></table></td>
  </tr>
</tbody></table>

<%HttpSession ss=request.getSession(true);
String s=(String)ss.getAttribute("name");%>
<marquee direction="left" behavior="slide" bgcolor="green" scrollamount="5" style="color: black;font-size: large">Hello<%=" "+s%> </marquee>
<img src="Images\rgt_sep.jpg"><img src="Images\rgt_sep.jpg"><img src="Images\rgt_sep.jpg"><img src="Images\rgt_sep.jpg">
<table align="center" width="100%">
<tr cellpadding="1"><td valign="top">
<div class="sidenav A">
<fieldset><legend>View</legend>
<a href="ATM locations.jsp">ATM Locations</a><br>
<a href="Bank locations.jsp">Banks</a><br>
<a href="#">Beauty Parlors</a><br>
<a href="Blood banks.jsp">Blood Banks</a><br>
<a href="Cardealers.jsp">Car Dealers</a><br>
<a href="Consultancy.jsp">Consultants</a><br>
<a href="#">Emergency</a><br>
<a href="Functionhalls.jsp">Function Halls</a><br>
<a href="Gasdealers.jsp">Gas Dealers</a><br>
<a href="Healthline.jsp">Health Line</a><br>
<a href="Theaters.jsp">Movie Theaters</a><br>
<a href="#">Shopping Malls</a><br>
<a href="ViewDetails.jsp">Hotels</a><br>
<a href="Indu1.jsp">Industries</a></fieldset>
</div></td><td><table><tr><td colspan="2" align="center">
<div align="center" style="color:black;font-size: medium;font-style: italic;"><%=s %> Profile</div></td></tr>
<%
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 String url="jdbc:odbc:srikanth";
	 Connection con=DriverManager.getConnection(url,"smartcity","smartcity");
	String sql="select * from register where userid=?";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,s);
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
		%>
		<tr><td>	First Name:<%=rs.getString(1)%></td></tr><tr><td>
			Last Name:<%=rs.getString(2)%></td></tr><tr><td>
			User id:<%=rs.getString(3)%></td></tr><tr><td>
			Type:<%=rs.getString(5)%></td></tr><tr><td>
			Mobile No:<%=rs.getString(6) %></td></tr><tr><td>
			Gender:<%=rs.getString(7) %></td></tr><tr><td>
			E-mai:<%=rs.getString(8) %></td></tr></table>
			
		<%
	}
}
catch(Exception e)
{e.printStackTrace();
}
%></td></tr></table>
<img src="Images\rgt_sep.jpg"><img src="Images\rgt_sep.jpg"><img src="Images\rgt_sep.jpg"><img src="Images\rgt_sep.jpg">     
<div class="more" align="right">:: <a href="http://www.vizaghotels.net/vizag_hotels.htm">more &gt;&gt;</a></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td  colspan="2" bgcolor="#ded7d6"><img src="Images\spacer.gif" width="980" height="3"></td><td></td>
  </tr>
  <tr>
    <td class="footer"> Copyrights © , Vishakapatnam. All Rights Reserved. 
	</td><td align="right"><img src="Images\cards.jpg" align="absmiddle" width="178" height="32"></td>
  </tr>
</table>

</body></html>                          
