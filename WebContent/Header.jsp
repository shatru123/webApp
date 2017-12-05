<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
td{  
color:#c6866d;  
background-color:BLACK;  
padding:5px;  
} 

table{  
 
background-color:BLACK;  
padding:0px;  
} 
body{  
 
background-color:;  
padding:0px;  
position: inherit;
left: 0;
} 

a{  
color:white;  
background-color:BLACK;  
text-decoration:  none;
} 

a.mainNav:link    {
  /* Applies to unvisited links of class mainNav */
  text-decoration: none;
  font-weight:      bold;
  background-color: #ddd;
  color:            black;
  } 
a.mainNav:visited {
  /* Applies to visited links of class mainNav */
  text-decoration:  none;
  font-weight:      bold;
  background-color: black;
  color:            white;
  } 
a.mainNav:hover   {
  /* Applies to links under the pointer of class mainNav */
  text-decoration:  none;
  font-weight:      bold;
  background-color: #3D1006;
  -moz-transform: scale(1.1);
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
   border: none;
  color:    #fff;
  } 
a.mainNav:active  {
  /* Applies to activated links of class mainNav */
  text-decoration:  underline;
  font-weight:      bold;
  background-color: black;
  border: none;
  color: white;
  
  }
  
   .item:hover{
  -moz-transform: scale(1.5);
  -webkit-transform: scale(2.1);
  transform: scale(1.1);
} 
  
.navbar {
  overflow: hidden;
  background-color: #333;
  position: fixed;
  top: 0;
  width: 100%;
}

 
 
</style>
<title>ItHubegin</title>
</head>
<div class="navbar" align="left">
<table cellspacing=10  align="center" width="100%" >
<body topmargin="0"  leftmargin="0" marginheight="20">

<tr align="center" cellpadding="2%">
<div><td><img src="Images\logo.png" alt="LOGO" width="100" height="75"></td>
<td width="5"><h3 ><font size="6">ItHubegin</font></h3></td></div>
<td><div class="item"><a class="mainNav" href="HomePage.jsp" >HOME </a></div> </td>
<td><div class="item"><a class="mainNav" href="Innovations.jsp" >INNOVATIONS </a></div></td>
<td><div class="item"><a class="mainNav" href="Services.jsp" >SERVICES </a></div></td>
<td><div class="item"><a class="mainNav" href="ContactUs.jsp" >CONTACT US </a></div></td>
<td><div class="item"><a class="mainNav" href="AboutUs.jsp" >ABOUT US </a></div></td>
<td><div class="item"><a class="mainNav" href="Login1.jsp" >LOGIN </a></div></td>
</tr>
</body>
</table>
</div>
</html>
