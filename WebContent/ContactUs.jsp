<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file = "Header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us Page</title>
<style>

@import url(https://fonts.googleapis.com/css?family=Lato:300,400,700);


body {
	background: lightblue;
	color: #fff;
	font-weight: 400;
	font-size: 1em;
	font-family: 'Lato', Arial, sans-serif;
	margin:0;
	padding:0;
	padding-bottom:60px;
	
}
.ccheader {
	margin: 0 auto;
	padding: 2em;
	text-align: center;
}

.ccheader h1 {
	margin: 0;
	font-weight: 300;
	font-size: 2.5em;
	line-height: 1.3;
	color: #2e3233;
}



/* Form CSS*/
.ccform {
   margin: 0 auto;
    width: 800px;
}
.ccfield-prepend{
	margin-bottom:10px;
	width:100%;
}

.ccform-addon{
	color:#f8ae45; 
	float:left;
	padding:8px;
	width:8%;
	background:#FFFFFF;
	text-align:center;	
}

.ccformfield {
	color:#000000; 
	background:#FFFFFF;
	border:none;
	padding:15.5px;
	width:91.9%;
	display:block;
	font-family: 'Lato',Arial,sans-serif;
	font-size:14px;
}

.ccformfield {
	font-family: 'Lato',Arial,sans-serif;
}
.ccbtn{
	display:block;
	border:none;
	background:#f8ae45;
	color:#FFFFFF;
	padding:12px 25px;
	cursor:pointer;
	text-decoration:none;
	font-weight:bold;
}
.ccbtn:hover{
	background:#096587;

}
.credit {
  width: 800px;
  clear:both;
margin:0 auto;
  line-height:25px;
 padding: 25px 50px; 
text-align: center;
}
.credit em{
margin-right:5px;
}
.credit a {
color: #000;
font-weight: bold;
text-decoration: none;
}



</style>

</head>
<body  bgcolor="lightblue">

<header class="ccheader">
<br>
<br>
<br>
<br>
<br>
    <h1>Contact Us</h1>	
</header>
<script type="text/javascript">
function Confirm(form){
alert("Thanks for Contacting us, We will definitely get back to you."); 
form.submit();
}
</script>
<div class="wrapper">
    <form action="ContactUsServlet" method="post" class="ccform">
    <div class="ccfield-prepend">
        <span class="ccform-addon"><img src="Images\fullname.JPG" style="width:50%" height="50%"></span>
        <input class="ccformfield" type="text" placeholder="Full Name" name="fullname" required>
    </div>
    <div class="ccfield-prepend">
        <span class="ccform-addon"><img src="Images\email.JPG" style="width:50%" height="50%"></span>
        <input class="ccformfield" type="text" placeholder="Email" name="email" autocomplete="off">
    </div>
    <div class="ccfield-prepend">
        <span class="ccform-addon"><img src="Images\phone.JPG" style="width:50%" height="50%"></span>
        <input class="ccformfield" type="text" placeholder="Phone" name="phone" >
    </div>
     <div class="ccfield-prepend">
        <span class="ccform-addon"><img src="Images\subject.JPG" style="width:50%" height="50%"></span>
        <input class="ccformfield" type="text" placeholder="Subject" name="sub" required>
    </div>
    <div class="ccfield-prepend">
        <span class="ccform-addon">  <img src="Images\msg.JPG" style="width:50%" height="50%"> </span>
        <textarea class="ccformfield" name="msg" rows="8" placeholder="Message" required></textarea>
    </div>
    <div class="ccfield-prepend">
        <input class="ccbtn" type="submit"  value="Submit" onclick="Confirm(this.form)">
    </div>
    </form>
</div>
<div class="credit">


</div>

</body>
</html>
<%@ include file = "Footer.jsp" %>