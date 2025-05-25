<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:35%;
	padding:15px;
	width:33%;	
	border-radius: 25px;
}

.button {
  
  background-color: black;
  border: solid;
  border-radius:30px;
  border-color:silver;
  color: #FFFFFF;
  text-align: center;
  font-size: 23px;
  padding: 5px;
  width: 140px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span:after  {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}
</style>
</head>
<body>
<div class="header">
  <a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
  <div class="header-right">
    <a href="index.jsp">Home</a>
    <a class="active" href="adminLogin.jsp">Admin Login</a>
  </div>
</div>
<body>
<div class="container">
<br>
	<br>
	

<%
String msg=request.getParameter("msg");
if("invalid".equals(msg))
{
%>
<center><font color="red" size"5">Invalid Username/Password</font></center>
<%} %>

<form action="adminLoginAction.jsp" method="post">
<div class="form-group">
<center><h2>Username</h2></center>
<input type="text" placeholder="Enter Username" name="username" required>
<center><h2>Password</h2></center>
<input type="password" placeholder="Enter Password" name="password" required>
<center><button type="submit" class="button">Submit</button></center>
</div>
</form>
	
	
	
</div>
<br>
<br>
<br>
<br>
<h3><center><marquee behavior="alternate" scrollamount="10" loop="10" width="100%" height="5%" direction="left,right"><i>The gift of blood is the gift of life. Share that precious gift today</i></marquee></center></h3>
</body>
</html>
