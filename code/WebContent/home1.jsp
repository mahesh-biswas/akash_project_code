<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<html><head>
<title>HomePage</title>
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
      <tbody>
      <tr>
        <td height="54">&nbsp;</td>
        <td>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tbody><tr>
      		      <td width="25%"><h1 class="style1" align="center">SmartCity Vizag Guider</h1></td>
            	  <td align="right" class="smtxtwhite" valign="bottom" width="69%"><div style="color=Yellow; font-size: large;"><%=new Date() %></div></td>
          		</tr>
        </tbody>
        </table>
        </td>
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
        <a href="home1.jsp">HOME</a>
        <img src="Images\link_sep.jpg" align="middle" width="10" height="60" hspace="30">
        <a href="GMap.jsp">GMAPS</a>
        <img src="Images\link_sep.jpg" align="middle" width="10" height="60" hspace="30">
        <a href="hydphotogallery.jsp">PHOTOGALLERY</a>
        <img src="Images\link_sep.jpg"  width="10" align="middle" height="60" hspace="30">
        <a href="city_info.jsp">CITY INFO</a>
        <img src="Images\link_sep.jpg" align="middle" width="10" height="60" hspace="30">
        <a href="">DOWNLOADS</a>
        <img src="Images\link_sep.jpg"  width="10" align="middle" height="60" hspace="30">
        <a href="flighttimings.jsp" >TRAVELS</a>
        <img src="Images\link_sep.jpg"  width="10" height="60" align="middle" hspace="30">
        <a href="Cityview.jsp">HISTORY</a>
        <img src="Images\link_sep.jpg"  width="10" height="60" hspace="30" align="middle">
        <a href="">CONTACT US</a> </div></td>
        <td background="Images\link_bg.jpg">&nbsp;</td>
      </tr>
     </tbody></table></td>
  </tr>
</tbody>
</table>

<marquee direction="left" scrolldelay="100">
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

<table align="center" width="100%">
	<tr>
	<td align="left">
		<div class="sidenav A"><fieldset><legend>View</legend>
			<a href="ATM locations.jsp" target="_self">ATM Locations</a><br>
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
			<a href="ViewDetails.jsp">Hotels</a><br>
			<a href="#">ShoppingMalls</a><br>
			<a href="Indu1.jsp">Indutries</a>
			</fieldset>
		</div>
	</td>
	<td>
		<table>
		<tr><td><div style="font-style: italic;font-size: large;color: black;">
		<%String w=request.getParameter("w"); 
				if(w!=null)
				{%><%=w%><%}
				else{w="";}%>
		</div></td></tr>
		</table>
	</td>
	<td align="right">
	<div class="sidenav">
	<fieldset><legend>Login</legend>
	<form method="post"  action="open_Home.jsp" name="form1" onSubmit="return check1()">
		<table align="center" >
		<tr>
			<th align="right">Userid:</th>
			<td align="left"><input type="text" name="uid"></td>
			<td align="center"><p id="f1"></p></td>
		</tr>
		<tr>
			<th align="right">Password:</th>
			<td align="left"><input type="password" name="pwd" onblur="check1()"></td>
			<td align="center"><p id="f2"></p></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="Submit" ></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><p id="f3" style="color: red;font-style: italic;">
			<%String s1=request.getParameter("m1"); 
				if(s1!=null)
				{%><%=s1%><%}
				else{s1="";}%>
				</p>
			</td>
		</tr>
		<tr>
			<td align="center"><a href="fg.jsp">Forget Password?</a></td>
			<td colspan="2" align="center"><a href="Registrationform.jsp">Sign Up</a></td>
		</tr>
		</table>
	</form>
	</fieldset>
	<table width="300">
	<tr>
		<td>
			<marquee direction="up" scrolldelay="250" onmouseover="wait()">
			<div style="color:purple;font-size:large;font-style:italic;">Events@VIZAG On 05-03-2010 <br>Food Festival @ 
			<img src="Images\dolphin_hotel_logo.jpg"/ alt="Dolphin Hotel">
			</div>
			</marquee>
		</td>
	</tr>
	</table>
	</td></table>
	<img src="Images\rgt_sep.jpg"><img src="Images\rgt_sep.jpg"><img src="Images\rgt_sep.jpg"><img src="Images\rgt_sep.jpg">     
	<div class="more" align="right"></div>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
  	<tr>
    	<td  colspan="2" bgcolor="#ded7d6"><img src="Images\spacer.gif" width="980" height="3"></td><td></td>
  	</tr>
  	<tr>
    	<td class="footer"> Copyrights © , Vishakapatnam. All Rights Reserved. </td>
    	<td align="right"><img src="Images\cards.jpg" align="absmiddle" width="178" height="32"></td>
    </tr>
	</table>
</body>
</html>