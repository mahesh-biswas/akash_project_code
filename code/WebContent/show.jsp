<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function check()
{
	r=document.getElementById("user").value;
	alert(r);
	if(r==""){alert("Enter value");
		return false;}
	else
		return true;	
}
</script>
</head>
<body>
<form action="profle.jsp" onsubmit="return check()">
<input type="text" name="user">
<input type="Submit" value="Submit"></form>
</body>
</html>