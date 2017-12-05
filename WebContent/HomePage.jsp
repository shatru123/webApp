
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file = "Header.jsp" %>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HomePage</title>
 
</head>
<body bgcolor="#113672">



<!--  <div style="width:830; background-color:white; height:120px; overflow:scroll; overflow-x: scroll;overflow-y: hidden;">
<marquee  direction="right">
      <img style=" float:left; display:inline" src="C:\Users\Shatru\Desktop\ap.jpg" width="160" height="90" alt="one" />
 
      <img style=" float:left; display:inline"  src="C:\Users\Shatru\Desktop\rht.jpg" width="160" height="90" alt="two" />
    
      <img style=" float:left; display:inline"  src="C:\Users\Shatru\Desktop\rh.jpg" width="160" height="90" alt="three" />
      <button class="w3-button w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
	  <button class="w3-button w3-display-right" onclick="plusDivs(+1)">&#10095;</button>
</marquee>
 </div>  -->
 
 <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing:border-box}
body {font-family: Verdana,sans-serif;}
.mySlides {display:none}

/* Slideshow container */
.slideshow-container {
  max-width: 100%;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
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
}




</style>
</head>


<body >
<header class="ccheader">
    <br>
</header>
<blink dir="ltr"><marquee class="blink" behavior="scroll" direction="left" onmouseover="this.stop();" onmouseout="this.start();"><a href="RegProj.jsp">Request For Project</a></marquee></blink>
<!-- <h2>AutoSlide</h2>
<p>Change image every 2 seconds:</p> -->
<div class="wrapper">
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="Images\mouse.jpg" style="width:100%" height="30%">
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="Images\Android2.jpg" style="width:100%" height="30%">
  <div class="text">Android</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="Images\java.jpg" style="width:100%" height="30%">
  <div class="text">TECH</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">4 / 3</div>
  <img src="Images\php.jpg" style="width:100%" height="30%">
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext">5 / 3</div>
  <img src="Images\Android.jpg" style="width:100%" height="30%">
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext">6 / 3</div>
  <img src="Images\Android3.jpg" style="width:100%" height="30%">
  <div class="text"></div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 5000); // Change image every 5 seconds
}
</script>
</div>
</body>
</html>
<%@ include file = "Footer.jsp" %>

