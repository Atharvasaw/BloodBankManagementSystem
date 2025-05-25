<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
.mySlides {display:none;}

input[type="text"], input[type="mail"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:2%;
	padding:15px;	
}
</style>
</head>
<body>

<div class="header">
  <a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
  <div class="header-right">
    <a class="active" href="index.jsp">Home</a>
    <a href="adminLogin.jsp">Admin Login</a>
  </div>
</div>

<div style="max-width:100%">
  <img class="mySlides"  src="blood3.jpg" >
  <img class="mySlides"  src="blood4.png" >
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


<body>
  <br>
  <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
  %>
  <center><font color="red" size="5">Form Submitted Successfully. You Will get notified within 24 hours.</font></center>
  <%} %>
  
  <%
  if("invalid".equals(msg))
  {
  %>
  <center><font color="red" size="5">Invalid Data! Try Again</font></center>
  <%} %>
 <center><h1>Enter Your Details to Request for blood</h1></center>
 <form action="indexFormAction.jsp" method="post">
 
 <center>
 <input type="text" name="name" placeholder="Enter Name" required
>
<input type="text" name="mobilenumber" placeholder="Enter Mobile Number" required
>
<input type="mail" name="email" placeholder="Enter Email Address" required
>
<input type="text" name="bloodgroup" placeholder="Enter Blood Group" required>
<button class="button1"><span>Submit</span></button>
 </center>
 </form>
 
 
 
 
 
  <br>
  <br>
  </div>
</div>

<div class="row1"> 
<div class="container"> 
<br>         
<br>
    </tbody>
  </table>
</div>
</div>
<h3><center><marquee behavior="alternate" scrollamount="10" loop="10" width="100%" height="5%" direction="left,right"><i>The gift of blood is the gift of life. Share that precious gift today</i></marquee></center></h3>

</body>
</html>

