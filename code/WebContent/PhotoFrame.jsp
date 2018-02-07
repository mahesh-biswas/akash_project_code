<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'PhotoFrame.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script language="javascript"> 
var imgNum;
imgNum=;
</script> 
<script language="javascript" src="./scripts/photoframe.js"></script> 
  </head>
  
  <body bgcolor="#006699" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onload="javascript:setText()">
  <form name="Photos"> 
    <table width="224" border="0" cellspacing="0" cellpadding="0" align="center"> 
 <%
   String num=request.getParameter("imgIndex");
    %>
  <tr align="center"> 
    <td><img src="./Images/phototitle<%=num %>.gif" width="200" height="22" name="phtitle" ></td> 
  </tr> 
  <tr> 
    <td><img src="./Images/photogal<%=num %>.gif" width="224" height="224" name="phimage"></td> 
  </tr> 

</table> 
<table width="224" border="0" cellspacing="0" cellpadding="0" align="center"> 
  <tr> 
    <td align="right" width="108"><a href="javascript:changePrev()"><img src="./Images/previousBut.gif" width="72" height="15" border=0></a></td> 
    <td width="138" align="center"><a href="javascript:changeNext()"><img src="./Images/nextBut.gif" width="64" height="15" border=0></a></td> 
  </tr> 
</table> 
  </body>
</html>
