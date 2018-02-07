<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="JS_home.jsp">Home</a>>><a href="Resume.jsp">Resume</a>
<form action="InsertResume.jsp" method="post">
<table align="center">
<tr><td align="center" colspan="2"><div style="font-size: xx-large;font-style: italic;color: Blue;">Resume</div></td></tr>
<tr><td align="left">Name:</td><td><input type="text" name="name"></td></tr>
<tr><td align="left">Surname:</td><td><input type="text" name="sur"></td></tr>
<tr><td align="left" colspan="2">Qualifications:</td></tr>
<tr><td align="left">10<sup>th</sup>:</td><td><input type="type" name="10"></td></tr>
<tr><td align="left">Intermediate:</td><td><input type="text" name="inter"></td></tr>
<tr><td align="left">Graduation:</td><td><input type="text" name="grad"></td></tr>
<tr><td align="left">Technologies Known:</td><td><textarea cols="15" rows="3" name="tech"></textarea></td></tr>
<tr><td align="left">Strength:</td><td><textarea cols="15" rows="3" name="strength"></textarea></td></tr>
<tr><td align="left">Weakness:</td><td><textarea cols="15" rows="3" name="weaks"></textarea></td></tr>
<tr><td align="left">Hobbies:</td><td><textarea cols="15" rows="3" name="hobbies"></textarea></td></tr>
<tr><td align="left">Address:</td><td><textarea cols="15" rows="3" name="addr"></textarea></td></tr>
<tr><td align="left">Places to work @:</td><td><textarea cols="15" rows="3" name="pw"></textarea></td></tr>
<tr><td align="left">Languages:</td><td><input type="text" name="lang"></td></tr>
<tr><td align="left">Other Activities:</td><td><textarea cols="15" rows="3" name="act"></textarea></td></tr>
<tr><td align="left">E-mail:</td><td><input type="text" name="email"></td></tr>
<tr><td align="center"><input type="reset" value="Reset"></td><td align="center"><input type="submit" value="Submit"></td></tr>
</table>
</form>
</body>
</html>