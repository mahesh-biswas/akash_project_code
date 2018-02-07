<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Vizag photogallery page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="Images\style.css" rel="stylesheet" type="text/css">
<script> 
function OpenFrame(num)
 {
	url="PhotoFrame.jsp?imgIndex="+num;						
    var b=window.open(url,"new2","width=233,height=280 left=275 top=150",addressbar=1);
							
 }
 </script> 
<style type="text/css"> 
 
#dropmenudiv{
position:absolute;
border:1px solid #474747;
border-bottom-width: 0;
font:normal 10px Verdana; font color:#000000;
line-height:18px;
z-index:1;
}
 
#dropmenudiv a{
width: 100%;
display: block;
text-indent: 3px;
border-bottom: 1px solid #474747;
font color:#000000;
padding: 1px 0;
text-decoration: none;
font-weight: bold;
}
 
#dropmenudiv a:hover{ /*hover background color*/
background-color: 4FA13D;
}
 
#content {
font:normal 10px Verdana;
font-family: verdana;
font-color: #000000;
text-decoration: none;
}
 
body {
        font-family: verdana;
		color: #000000 } 
       a:link { color: #000000 } 
       a:visited { color: #000000 } 
       a:active { color: #000000 }
  
 
</style> 

  <style type="text/css">
<!--
.style1 {color: Yellow}
-->
</style>
</head>
<body background="Images\2.jpg">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tbody><tr>
    <td style="background-repeat: repeat-z;" background="Images\header_bg.jpg" valign="top"><table align="center" border="0" cellpadding="0" cellspacing="0" width="980">
      <tbody><tr>
        <td height="54">&nbsp;</td>
        <td><table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tbody><tr>
            <td width="25%"><h1 class="style1" align="center">SmartCity Vizag Guider</h1></td>
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
         <tr>
        <td background="Images\link_bg.jpg">&nbsp;</td>
        <td style="background-repeat: repeat-x;" class="headermenu" background="Images\link_bg.jpg" bgcolor="#ffffff">
        <div align="center">
        <a href="JS_home.jsp">HOME</a>
        <img src="Images\link_sep.jpg" align="absmiddle" width="10" height="60" hspace="30">
        <a href=""> PROFILE</a>
        <img src="Images\link_sep.jpg" align="absmiddle" width="10" height="60" hspace="30">
        <a href="hydphotogallery1.jsp">PHOTOGALLERY</a>
        <img src="Images\link_sep.jpg" align="absmiddle" width="10" height="60" hspace="30">
        <a href="Education.jsp">EDUCATION</a>
        <img src="Images\link_sep.jpg" align="absmiddle" width="10" height="60" hspace="30">
        <a href="Downloads.jsp">DOWNLOADS</a>
        <img src="Images\link_sep.jpg" align="absmiddle" width="10" height="60" hspace="30">
        <a href="flightstimings3.jsp" target="_self">TRAVELS</a>
        <img src="Images\link_sep.jpg" align="absmiddle" width="10" height="60" hspace="30">
        <a href="Cityview.jsp">VIZAG MAP</a>
        <img src="Images\link_sep.jpg" align="absmiddle" width="10" height="60" hspace="30">
        <a href="home1.html">LOGOUT</a> </div></td>
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
<tr><td valign="top">
<div class="sidenav A">
<fieldset><legend>View</legend>
<a href="ATMlocations3.jsp" target="_self">ATM Locations</a><br>
<a href="Banklocations3.jsp">Banks</a><br>
<a href="#">Beauty Parlors</a><br>
<a href="Bloodbanks3.jsp">Blood Banks</a><br>
<a href="Cardealers3.jsp">Car Dealers</a><br>
<a href="#">Consultants</a><br>
<a href="#">Emergency</a><br>
<a href="Functionhalls3.jsp">Function Halls</a><br>
<a href="Gasdealers3.jsp">Gas Dealers</a><br>
<a href="Healthline3.jsp">Health Line</a><br>
<a href="#">Movie Theaters</a><br>
<a href="#">Shopping Malls</a><br>
<a href="#">Temples</a><br>
<a href="Indu4.jsp">Indutries</a>
</fieldset>
</div>
<table width="300"><tr><td><marquee direction="up" scrolldelay="250" onmouseover="wait()"><div style="color:purple;font-size:large;font-style:italic;">Events@VIZAG On 05-03-2010 <br>Food Festival @ <img src="Images\dolphin_hotel_logo.jpg"/ alt="Dolphin Hotel"></div></marquee></td></tr></table>
</td>
<td align="center">  
  
    <form name="hydphotogallery">
        <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
                    <tr align="center" valign="top"> 
                      <td width="33%" height="60" valign="middle">&nbsp;</td> 
                      <td width="33%" valign="middle"><div align="center"><img src="./Images/pt.jpg" width="148" height="34"></div></td> 
                      <td width="34%">&nbsp;</td> 
                    </tr> 
                    <tr align="center" valign="top"> 
                      <td height="20" colspan="3" valign="middle">&nbsp;</td> 
                    </tr> 
                  </table> 
                  <table width="100%" border="0" cellspacing="6" cellpadding="0"> <tr> <td width="6%">&nbsp;</td><td width="93%" class=descText align="left" valign="top"> 
<table width="100%" border="0" cellspacing="0" cellpadding="0"> <tr> <td> 
<a href="javascript:OpenFrame(0)" class=dd><img src="./Images/vizaghistory_img.jpg" width="110" height="53" BORDER="0"></a></td><td> 
<a href="javascript:OpenFrame(1)" class=dd><img src="./Images/12-Vizaga2z-Vizag Port.jpg" width="110" height="53" BORDER="0"></a></td><td> 
<a href="javascript:OpenFrame(2)" class=dd><img src="./Images/kailasagiri-visakhapatnam.jpg" width="110" height="53" BORDER="0"></a></td><td> 
<a href="javascript:OpenFrame(3)" class=dd><img src="./Images/Vizag old.jpg" width="110" height="53" BORDER="0"></a></td></tr> 
</table> 
                        <table width="100%" border="0" cellspacing="4" cellpadding="0"> 
                          <tr valign="middle"> 
                            <td align="center" width="15%"><div align="left"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><b><font color="#000000"> 
                                <a href="javascript:OpenFrame(0)" class=dd> Vizag Upperview 
                                Palace</a></font></b></font></div></td> 
                            <td align="center" width="11%"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">&nbsp;</font></td> 
                            <td align="center" width="12%"><div align="left"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><strong><font color="#808040"> 
                                <a href="javascript:OpenFrame(1)" class=dd>Golconda 
                                Fort</a></font></strong></font></div></td> 
                            <td align="center" width="13%"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">&nbsp;</font></td> 
                            <td width="25%" align="center"><div align="left"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><b><font color="#808040"> 
                                <a href="javascript:OpenFrame(2)" class=dd>Birla 
                                Planetarium</a></font></b></font></div></td> 
                            <td width="24%" align="center"><div align="left"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><b><font color="#808040"> 
                                <a href="javascript:OpenFrame(3)" class=dd>Birla 
                                Mandir</a></font></b></font></div></td> 
                          </tr> 
                        </table></td><td width="1%">&nbsp;</td></tr> 
</table><div align="center"></div><table width="100%" border="0" cellspacing="6" cellpadding="0"> 
<tr> <td width="6%">&nbsp;</td><td width="93%" class=descText align="left" valign="top"> 
<table width="100%" border="0" cellspacing="0" cellpadding="0"> <tr> <td> 
<a href="javascript:OpenFrame(4)" class=dd><img src="./Images/meccaSmall.gif" width="110" height="53" BORDER="0"></a></td><td> 
<a href="javascript:OpenFrame(5)" class=dd><img src="./Images/gandipetSmall.gif" width="110" height="53" BORDER="0"></a></td><td> 
<a href="javascript:OpenFrame(6)" class=dd><img src="./Images/charminarSmall.gif" width="110" height="53" BORDER="0"></a></td><td> 
<a href="javascript:OpenFrame(7)" class=dd><img src="./Images/hussainsagarSmall.gif" width="110" height="53" BORDER="0"></a></td></tr> 
</table> 
                        <table width="100%" border="0" cellspacing="4" cellpadding="0"> 
                          <tr valign="middle"> 
                            <td align="center" width="11%"><font size="1" face="Verdana"><b><font color="#808040" face="Verdana, Arial, Helvetica, sans-serif"> 
                              <a href="javascript:OpenFrame(4)" class=dd>Mecca 
                              Masjid</a></font></b></font></td> 
                            <td align="center" width="8%"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">&nbsp;</font></td> 
                            <td align="center" width="22%"><font face="Verdana" size="1"><b><font color="#808040" face="Verdana, Arial, Helvetica, sans-serif"> 
                              <a href="javascript:OpenFrame(5)" class=dd>Gandipet</a></font></b></font></td> 
                            <td align="center" width="10%"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">&nbsp;</font></td> 
                            <td width="24%" align="center"><div align="left"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><b><font color="#808040"> 
                                <a href="javascript:OpenFrame(6)" class=dd>Charminar</a></font></b></font></div></td> 
                            <td width="25%" align="center"><div align="left"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><b><font color="#808040"> 
                                <a href="javascript:OpenFrame(7)" class=dd>Hussain 
                                Sagar</a></font></b></font></div></td> 
                          </tr> 
                        </table></td><td width="1%">&nbsp;</td></tr> </table><table width="100%" border="0" cellspacing="6" cellpadding="0"> 
<tr> <td width="6%">&nbsp;</td><td width="93%" class=descText align="left" valign="top"> 
<table width="100%" border="0" cellspacing="0" cellpadding="0"> <tr> <td><a href="javascript:OpenFrame(8)" class=dd><img src="./Images/qutubtombSmall.gif" width="110" height="53" BORDER="0"></a></td><td><a href="javascript:OpenFrame(9)" class=dd><img src="./images/salarjungmusSmall.gif" width="110" height="53" BORDER="0"></a></td><td><a href="javascript:OpenFrame(10)" class=dd><img src="./images/ramojifilmcitySmall.gif" width="110" height="53" BORDER="0"></a></td><td><a href="javascript:OpenFrame(11)" class=dd><IMG src="./images/lumbiniSmall.gif" WIDTH="110" HEIGHT="53" BORDER="0"></a></td></tr> 
</table> 
                        <table width="100%" border="0" cellspacing="4" cellpadding="0"> 
                          <tr valign="middle"> 
                            <td align="center" width="17%"><div align="left"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><b><font color="#808040"><a href="javascript:OpenFrame(8)" class=dd>Qutub 
                                Shahi Tombs</a></font></b></font></div></td> 
                            <td align="center" width="5%"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">&nbsp;</font></td> 
                            <td align="center" width="18%"><div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="1"><b><font color="#808040"><a href="javascript:OpenFrame(9)" class=dd>Salarjung 
                                Museum</a></font></b></font></div></td> 
                            <td width="10%" align="center"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">&nbsp;</font></td> 
                            <td width="25%" align="center"><div align="left"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><b><font color="#808040"><a href="javascript:OpenFrame(10)" class=dd>Ramoji 
                                Film City</a></font></b></font></div></td> 
                            <td width="25%" align="center"><div align="left"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><b><font color="#808040"><a href="javascript:OpenFrame(11)" class=dd>Lumbini 
                                Park</a></font></b></font></div></td> 
                          </tr> 
                        </table></td><td width="1%">&nbsp;</td></tr> </table><table width="100%" border="0" cellspacing="6" cellpadding="0"> 
<tr> <td width="6%">&nbsp;</td><td width="93%" class=descText align="left" valign="top"> 
<table width="100%" border="0" cellspacing="0" cellpadding="0"> <tr> <td><a href="javascript:OpenFrame(12)" class=dd><img src=".Images/qutubtombSmall1.gif" width="110" height="53" BORDER="0"></a></td><td><a href="javascript:OpenFrame(13)" class=dd><img src="./Images/gandipetSmall1.gif" width="110" height="53" BORDER="0"></a></td><td><a href="javascript:OpenFrame(14)" class=dd><img src="./Images/shilparamamSmall.gif" width="110" height="53" BORDER="0"></a></td><td><a href="javascript:OpenFrame(15)" class=dd><img src="./Images/tankbundSmall.gif" width="110" height="53" BORDER="0"></a></td></tr> 
</table> 
                        <table width="100%" border="0" cellspacing="4" cellpadding="0"> 
                          <tr valign="middle"> 
                            <td align="center" width="19%"><div align="left"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><b><font color="#808040"><a href="javascript:OpenFrame(12)" class=dd>Qutub 
                                Shahi Tombs</a></font></b></font></div></td> 
                            <td align="center" width="21%"><font face="Verdana" size="1"><b><font color="#808040" face="Verdana, Arial, Helvetica, sans-serif"><a href="javascript:OpenFrame(13)" class=dd>Gandipet</a></font></b></font></td> 
                            <td align="center" width="11%"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">&nbsp;</font></td> 
                            <td width="25%" align="center"><div align="left"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><b><font color="#808040"><a href="javascript:OpenFrame(14)" class=dd>Shilparamam</a></font></b></font></div></td> 
                            <td width="24%" align="center"><div align="left"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><b><font color="#808040"><a href="javascript:OpenFrame(15)" class=dd>Tank 
                                Bund</a></font></b></font></div></td> 
                          </tr> 
                        </table></td><td width="1%">&nbsp;</td></tr> </table> 
        <table width="100%" border="0" cellspacing="6" cellpadding="0"> 
          <tr> 
            <td width="6%">&nbsp;</td> 
            <td width="93%" class=descText align="left" valign="top"> 
              <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
                <tr> 
                  <td><a href="javascript:OpenFrame(16)"><img src="./Images/admn.staffcollegesmall.gif" width="110" height="53" border="0"></a></td> 
                  <td><a href="javascript:OpenFrame(17)"><img src="./Images/andhrapradesh%20high%20courtsmall.gif" width="110" height="53" border="0"></a></td> 
                  <td><a href="javascript:OpenFrame(18)"><img src="./Images/asman%20ghar%20palacesmall.gif" width="110" height="53" border="0"></a></td> 
                  <td><a href="javascript:OpenFrame(19)"><img src="./Images/asman%20mahalsmall.gif" width="110" height="53" border="0"></a></td> 
                </tr> 
              </table> 
                        <table width="100%" border="0" cellspacing="4" cellpadding="0"> 
                          <tr valign="middle"> 
                            <td align="center" width="18%"><div align="left"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><b><font color="#808040"><a href="javascript:OpenFrame(16)" class=dd>Admn.Staff 
                                College</a></font></b></font></div></td> 
                            <td align="center" width="22%"><div align="center"><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:OpenFrame(17)" class=dd>AP 
                                High Court</a></b></font></div></td> 
                            <td align="center" width="8%"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">&nbsp;</font></td> 
                            <td width="16%" align="center"><font size="1" face="Verdana"><b><font color="#808040" face="Verdana, Arial, Helvetica, sans-serif"><a href="javascript:OpenFrame(18)" class=dd>Asman 
                              Ghar Palace</a></font></b></font></td> 
                            <td width="11%" align="center"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">&nbsp;</font></td> 
                            <td width="25%" align="center"><div align="left"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><b><font color="#808040"><a href="javascript:OpenFrame(19)" class=dd>Asman 
                                Mahal </a></font></b></font></div></td> 
                          </tr> 
                        </table> 
            </td> 
            <td width="1%">&nbsp;</td> 
          </tr> 
        </table> 
        <table width="100%" border="0" cellspacing="6" cellpadding="0"> 
          <tr> 
            <td width="6%">&nbsp;</td> 
            <td width="93%" class=descText align="left" valign="top"> 
              <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
                <tr> 
                  <td><a href="javascript:OpenFrame(20)"><img src="./Images/chiran%20fort%20clubsmall.gif" width="110" height="53" border="0"></a></td> 
                  <td><a href="javascript:OpenFrame(21)"><img src="./Images/directorate%20of%20industriessmall.gif" width="110" height="53" border="0"></a></td> 
                  <td><a href="javascript:OpenFrame(22)"><img src="./Images/golden%20thresholdsmall.gif" width="110" height="53" border="0"></a></td> 
                  <td><a href="javascript:OpenFrame(23)"><img src="./Images/govt%20unani%20hospitalsmall.gif" width="110" height="53" border="0"></a></td> 
                </tr> 
              </table> 
                        <table width="100%" border="0" cellspacing="4" cellpadding="0"> 
                          <tr valign="middle"> 
                            <td align="center" width="19%"><div align="left"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><b><font color="#808040"><a href="javascript:OpenFrame(20)" class=dd>Chiran 
                                Fort Club</a></font></b></font></div></td> 
                            <td align="center" width="31%"><font face="Verdana" size="1"><b><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif"><a href="javascript:OpenFrame(21)" class=dd>Directorate 
                              of Industries</a></font></b></font></td> 
                            <td width="25%" align="center"><div align="left"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><b><font color="#808040"><a href="javascript:OpenFrame(22)" class=dd>Golden 
                                Threshold</a></font></b></font></div></td> 
                            <td width="25%" align="center"><div align="left"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><b><font color="#808040"><a href="javascript:OpenFrame(23)" class=dd>Govt 
                                Unani Hospital</a>&nbsp;&nbsp;&nbsp;&nbsp;</font></b></font></div></td> 
                          </tr> 
                        </table> 
            </td> 
            <td width="1%">&nbsp;</td> 
          </tr> 
        </table> 
      
    </form>
    </td>
</tr></table> 

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