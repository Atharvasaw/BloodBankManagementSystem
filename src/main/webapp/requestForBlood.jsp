<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.ResultSet" %>
<%@include file="header.html"%>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>
<br>
<center>
<table id="customers">
<tr>
<th>Name</th>
<th>Mobile Number</th>
<th>Email</th>
<th>Blood Group</th>
<th>Done</th>
<th>Delete</th>
</tr>
<tr>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from bloodrequest where status='pending'");
	while(rs.next())
	{
%>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><a href="requestForBloodDone.jsp?mobilenumber=<%=rs.getString(2) %>">Done</a></td>
<td><a href="requestForBloodDelete.jsp?mobilenumber=<%=rs.getString(2) %>">Delete</a></td>
</tr>
<%
	}
}
catch(Exception e)
{
	System.out.print(e);
}
%>
</table>



</center>
<br>
<br>
<br>
<br>
<h3><center><marquee behavior="alternate" scrollamount="10" loop="10" width="100%" height="5%" direction="left,right"><i>The gift of blood is the gift of life. Share that precious gift today</i></marquee></center></h3>
</body>
</html>