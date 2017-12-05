<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%! 
   int pageCount = 0;
   void addCount() {
      pageCount++;
   }
%>

<% addCount(); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FooterPage</title>
<style>
 .item:hover img{
  -moz-transform: scale(1.1);
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
}
.fcl {
    background-color: black;
}

</style>
</head>
<body bottommargin="0" leftmargin="0" rightmargin="0" >
<div class="fcl">
<table cellspacing=20 bgcolor="black" align="center" width="100%" height="0%">
<tr align="center">
<td><a href="ContactUs.jsp">Contact Us</a></td>
<td><a href="AboutUs.jsp">About Us</a></td>
<td><a href="#">Privacy And Policy</a></td>
<td><a href="#">help</a></td>
</tr>
</table>



<hr>
<!-- <div class="item"> -->
<table cellspacing=20 bgcolor="black" align="center" width="30%" height="0%">
<tr align="center">

<td><div class="item"><a href="https://www.facebook.com/ItHubegin-1530689453689483/"><img src="Images\fb.png" alt="fb" width="50" height="35"></a></div></td>
<td><div class="item"><a href="https://www.linkedin.com/company/13582348/"><img src="Images\lnkdn.png" alt="linkdn" width="50" height="35"></a></div></td>
<td><div class="item"><a href="https://twitter.com/IHubegin"><img src="Images\twitter.png" alt="twit" width="50" height="35"></a></div></td>
<td><div class="item"><a href="https://www.instagram.com/ithubegin/"><img src="Images\insta.png" alt="insta" width="50" height="35" ></a></div></td>
</tr>
</table>
<!-- </div> -->

<table cellspacing=20 bgcolor="black" align="left" width="100%" height="0%">
<tr align="center">
<td><img src="Images\phone.png" alt="contact" width="35" height="20"> 	 +919604466334/+918275947059</td>
<td><a href=""><img src="Images\mail.JPG" alt="mail" width="30" height="20"> 	 ithubegin@gmail.com</a></td>

<td>This site has been visited <%= pageCount %> times.</td>
</tr>
</table>

<table>
<tr align="center">
<td></td>
<td bgcolor="white" width="100%">Copyrights @ ithubegin </a></td>
</tr>
</table>
</div>
</body>
</html>