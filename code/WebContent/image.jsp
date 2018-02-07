<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ATM Locations</title>
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
        <img src="Images\header1.jpg" alt="Vishakapatnam Hotels" width="320" height="200"><img src="Images\header2.jpg" alt="Hotels in Vishakapatnam" width="300" height="200"><img src="Images\header3.jpg" alt="Vizag Hotels" width="300" height="200"><img src="Images\header4.jpg" alt="Hotels in Vizag, Andra Pradesh" width="320" height="200">
        </td>
        <td background="Images\link_bg.jpg"><img src="Images\link_bg.jpg" width="0"></td>
      </tr>
      <tr>
        <td background="Images\link_bg.jpg">&nbsp;</td>
        <td style="background-repeat: repeat-x;" class="headermenu" background="Images\link_bg.jpg" bgcolor="#ffffff">
        <div align="center">
        <a href="home1.html">HOME</a>
        <img src="Images\link_sep.jpg" align="absmiddle" width="10" height="60" hspace="30">
        <a href="">CITY PROFILE</a>
        <img src="Images\link_sep.jpg" align="absmiddle" width="10" height="60" hspace="30">
        <a href="hydophotogallery.jsp">PHOTOGALLERY</a>
        <img src="Images\link_sep.jpg" align="absmiddle" width="10" height="60" hspace="30">
        <a href="">HISTORY</a>
        <img src="Images\link_sep.jpg" align="absmiddle" width="10" height="60" hspace="30">
        <a href="">DOWNLOADS</a>
        <img src="Images\link_sep.jpg" align="absmiddle" width="10" height="60" hspace="30">
        <a href="flighttimings.jsp" target="_self">TRAVELS</a>
        <img src="Images\link_sep.jpg" align="absmiddle" width="10" height="60" hspace="30">
        <a href="Cityview.jsp">VIZAG MAP</a>
        <img src="Images\link_sep.jpg" align="absmiddle" width="10" height="60" hspace="30">
        <a href="">CONTACT US</a> </div></td>
        <td background="Images\link_bg.jpg">&nbsp;</td>
      </tr>
     </tbody></table></td>
  </tr>
</tbody></table>

<marquee height="10" vspace="5" hspace="10" style="color:#22AAA1;font-size:20px;border: double;">Welcome to Vizag City</marquee>
<img src="Images\rgt_sep.jpg"><img src="Images\rgt_sep.jpg"><img src="Images\rgt_sep.jpg"><img src="Images\rgt_sep.jpg">
<table align="center" width="100%" border="5">
	<tr><td valign="top">
	<div class="sidenav A">
		<fieldset><legend><img src="Images\btn-view.gif"></legend>
			<a href="ATM locations.jsp">ATM Locations</a><br>
			<a href="Bank locations.jsp">Banks</a><br>
			<a href="#">Beauty Parlors</a><br>
			<a href="Blood banks.jsp">Blood Banks</a><br>
			<a href="Cardealers.jsp">Car Dealers</a><br>
			<a href="#">Consultants</a><br>
			<a href="#">Emergency</a><br>
			<a href="Functionhalls.jsp">Function Halls</a><br>
			<a href="Gasdealers.jsp">Gas Dealers</a><br>
			<a href="Healthline.jsp">Health Line</a><br>
			<a href="Theaters.jsp">Movie Theaters</a><br>
			<a href="#">Shopping Malls</a><br>
			<a href="Indu1.jsp">Industries</a></fieldset>
	</div></td>
<%
String user=request.getParameter("id1");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
String url="jdbc:odbc:srikanth";
Connection con=DriverManager.getConnection(url,"smartcity","smartcity");
Statement st=con.createStatement();		
PreparedStatement pst=con.prepareStatement("select * from  hotels where id=?");
pst.setString(1,user);
ResultSet rs=pst.executeQuery();
rs.next();
InputStream is=rs.getBinaryStream(1);
FileOutputStream fos=new FileOutputStream("d:\\new1.jpg");
int k;
while((k=is.read())!=-1){
fos.write(k);
}
%>
<tr>
 <td valign='top'>Hotel name</td><td><%=rs.getString(3)%></td></tr><tr>
 <td valign='top'>Hotel address</td><td><%=rs.getString(4)%></td></tr><tr>
<td valign='top'> HotelPreview </td><td><img src="d:\\new1.jpg"\ width="100" height="100"></td></tr>

	<img src="Images\rgt_sep.jpg"><img src="Images\rgt_sep.jpg"><img src="Images\rgt_sep.jpg"><img src="Images\rgt_sep.jpg">     
		<div class="more" align="right"></div>
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
  		<tr>
    		<td  colspan="2" bgcolor="#ded7d6"><img src="Images\spacer.gif" width="980" height="3"></td><td></td>
  		</tr>
  		<tr>
    		<td class="footer"> Copyrights © , Vishakapatnam. All Rights Reserved. 
			</td><td align="right"><img src="Images\cards.jpg" align="absmiddle" width="178" height="32"></td>
  		</tr>
		</table>

</body>
</html>
