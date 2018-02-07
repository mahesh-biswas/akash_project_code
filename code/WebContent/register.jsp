	<html>
		<head>
			<title>Registration Page</title>
			<script type="text/javascript">
var r=false;	
function valid()
{
	fn=document.getElementById("fn").value;
	ln=document.getElementById("ln").value;
	uid=document.getElementById('uid').value;
	pwd=document.getElementById('pwd').value;
	cpwd=document.getElementById('cpwd').value;
	email=document.getElementById("email");
	mob=document.getElementById("mob").value;
	pin=document.getElementById("pin").value;
	if((fn=="")||(ln=="")||(uid=="")||(pwd=="")||(cpwd=="")||(email=="")||(mob=="")||(pin==""))
	{	last.innerText="Enter the data to all the fields ";
		r=false;
	}
	else
		{ 
		last.innerText=""; r=true;
		}
		return r;
}		
function check()
{
	fname=document.getElementById("fn").value;
	lname=document.getElementById("ln").value;
	if((fname=="")||(lname==""))
		f2.innerText="Enter Ur Name";
	else
		f2.innerText="";
}

function rand()
{
w.innerText=Math.floor(Math.random()*1521342);
}
function validuser()
{
	str=document.getElementById('uid').value;
	alert(str);
	re2= RegExp("[\d]");
	re1= RegExp("[^A-Z]");
	
	if(str=="")
		f3.innerText="Enter user_id";
	else if(str.length<8)
			f3.innerText="Enter more than 8 characters";
	else if(re2.exec(str))
			f3.innerText="String contains Numerical values";
	else if(!re1.exec(str))
			f3.innerText="Capitals are not accepted";
	else f3.innerText="";
	
}

function password()
{
	str=document.getElementById('pwd').value;
	str1=document.getElementById('cpwd').value;
	re1=RegExp("/^A-Z/");
	re2=RegExp("\d");
	if(str=="")
		f4.innerText="Enter password";
	else if(str.length<8)
		f4.innerText="Password must be  more than 8 characters";
	else if(re2.exec(str))
		f4.innerText="password contains numeric values";
	else if(str1=="")
		f4.innerText="Enter Confrim password";
	else if(str1.length<6)
		f4.innerText="Confirm Password must be more than 6 characters";
	else if(re2.exec(str1))
		f4.innerText="confirm password contains numeric values";
	else if(str!=str1)
		f4.innerText="Passwords Mismatch, Retype Passwords";
	else f4.innerText="";
}
function echeck(str) {

		var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1){
		   f8.innerText="Invalid E-mail ID";

		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		   f8.innerText="Invalid E-mail ID";

		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		    f8.innerText="Invalid E-mail ID";

		}

		 if (str.indexOf(at,(lat+1))!=-1){
		f8.innerText="Invalid E-mail ID";

		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		 f8.innerText="Invalid E-mail ID";

		 }

		 if (str.indexOf(dot,(lat+2))==-1){
f8.innerText="Invalid E-mail ID";

		 }
		
		 if (str.indexOf(" ")!=-1){
f8.innerText="Invalid E-mail ID";

		 }

 		
	}

function ValidateForm(){
	var emailID=document.getElementById("email");
	
	if ((emailID.value==null)||(emailID.value=="")){
f8.innerText="Please Enter your Email ID";
		}
	if (echeck(emailID.value)==false){
		f8.innerText="Valid E-mail";
		}
	return true
 }
 
 function mobile()
 {	//var e= ^(A-Z|a-z);
 	mob=document.getElementById("mob").value;
                       // alert(mob);
 	if(mob=="")
 		f9.innerTeext="Enter ur mobile no.";
 	//else if(mob.exec(e))
 	//	f9.innerText="Strings not allowed";
 	else if(mob.length<9)
 		f9.innerText="No. should be 10digits";
 	else f9.innerText="";
 }             


				</script>
		</head>
	
			<body onLoad="rand()">
			<form action="retrive.jsp" onsubmit="return valid()">
				<table border="2">
				<tr>
						<th align="right">First Name:</th>
						<td align="left"><input type="text" name="fn" ></td>
						<td><p id="f1" style="font-style: italic;color: fuchsia;"></p></td><td></td>
				</tr>
				<tr>
						<th align="right">Last Name:</th>
						<td align="left"><input type="text" name="ln" onblur="check()"></td>
						<td><p id="f2" style="font-style: italic;color: fuchsia;"></p></td><td></td>
				</tr>
				<tr>
						<th align="right">Userid:</th>
						<td align="left"><input type="text" name="uid" onblur="validuser()"></td>
						<td><p id="f3" style="font-style: italic;color: fuchsia;"></p></td><td></td>	
				</tr>
				<tr>
						<th align="right">password: </th>
						<td align="left"><input type="password" name="pwd" ></td>
						<td><p id="f4" style="font-style: italic;color: fuchsia;"></p></td><td></td>
				</tr>
				<tr>
						<th align="right">Confirm password:</th>
						<td align="left"><input type="password" name="cpwd" onblur="password()" ></td>
						<td><p id="f5" style="font-style: italic;color: fuchsia;"></p></td><td></td>
				</tr>
				<tr>
						<th align="right">Gender: </th>
						<td><input type="Radio" name="male" value="male" checked>Male&nbsp; <input type="Radio" value="female" name="male">Female</td>
				</tr>
				<tr>
						<th align="right">User Type:</th>
						<td align="left"><input type="radio" name="r1" value="Student" checked>Student&nbsp;<input type="radio" value="tourist" name="r1">Tourist&nbsp;</td>
						<td></td>
				</tr>
				<tr>
					<td></td>
						<td align="left"><input type="radio" name="r1" value="Job">Job Seeker&nbsp;<input type="radio" name="r1" value="business">Business Person</td>
						<td><p id="f7" style="font-style: italic;color: fuchsia;"></td>
				</tr>
				<tr>
					<th align="right">E-mail: </th>
					<td><input type="text" name="email" onblur="ValidateForm()"></td><td><p id="f8" style="font-style: italic;color: fuchsia;"></td>
				</tr>
				<tr>
					<th align="right">Mobile No:</th>
					<td><input type="text" name="mob" onblur="mobile()"></td>
					<td><p id="f9" style="font-style: italic;color: fuchsia;"></p></td>
				</tr>
					<tr><td align="right">Enter</td><td><input type="text" name="pin" ></td>
					<td><p style="text-decoration:line-through;color: fuchsia;font-size: xx-large;border: double;" id="w"></p></td></tr>
				<tr>
					<td align="right"><input type="reset" name="reset" value="Reset">
					<td align="left"><input type="submit" name="submit" value="Submit"></td>
					<td align="center"><p style="font-style: italic;color: fuchsia;" id="last"></td>
				</tr>
		</table>
</form>
</body>
</html>