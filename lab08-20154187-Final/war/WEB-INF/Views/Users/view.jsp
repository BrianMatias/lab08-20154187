<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.entity.*"%>
<% User x = (User)request.getAttribute("users");%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Read</title>
<link rel="stylesheet" type="text/css" href="/Estilos/Estilo3.css">

</head>
<body>

<header> <h2> USUARIO</h2></header>
	
	<ul> 
		<li><a  href=/users> Lista de usuarios</a></li>
	</ul>
	
	<div class="centro" align="center">
<table style="margin: 0 auto;">
	<thead>
<table >
	<tr>	  	
		<th>ID</th>
		<th> <%= x.getId()%> </th>
	</tr>
	<tr>
		<th>Name</th>
		<th> <%= x.getName()%> </th>
	</tr>
	<tr>
		<th>Email</th>
		<th> <%= x.getMail()%> </th>
	</tr>
	<tr>
		<th>ID-Role's</th>
		<th> <%= x.getIdRole()%> </th>
	</tr>
	<tr>
		<th>Status</th>
		<th> <%= x.isStatus()%> </th>
	</tr>
	
	<tr>
		<th>Gender</th>
		<th> <%= x.getGender()%> </th>
	</tr>
	
	

</table>

</div>
</body>
</html>