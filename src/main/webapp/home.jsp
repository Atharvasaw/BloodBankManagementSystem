<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="header.html"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
img{
width:100%;
height:609px;
}</style>
</head>
<body>
<br>
<div style="max-width:100%">
  <img class="mySlides"  src="welcome.jpg" >
  <img class="mySlides"  src="admin.PNG" >
   <img class="mySlides"  src="slide1.jpg" >
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>
<br>
<h3><center><marquee behavior="alternate" scrollamount="10" loop="10" width="100%" height="5%" direction="left,right"><i>The gift of blood is the gift of life. Share that precious gift today</i></marquee></center></h3>
</body>
</html>