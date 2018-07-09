<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="model.entity.*"%>
<% List<User> users = (List<User>)request.getAttribute("users"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Usuarios</title>
<link rel="stylesheet" type="text/css" href="/Estilos/Estilo3.css">

</head>
<body>

<header> <h1> Users </h1></header>
	<ul> 
		<li><a href="/users/add?action=creating">Create Users</a></li>
	</ul>
	<ul> 
		<li><a href="/roles/add?action=creating">Create Roles</a></li>
	</ul>
	
	<ul> 
		<li><a href='../'>BEHIND</a></li>
	</ul>
	<br>
	<center>
	<div class="centro">
<table style="margin: 0 auto;">
	<thead>
<table>
	<thead>
	<tr>	  	
		<th>Id </th>
		<th>Name</th>
		<th>Mail</th>
		<th>Roles</th>
		<th>Gender</th>
		<th>Status</th>
		<th>READ</th>	
		<th>UPDATE</th>	
		<th>DELETE</th>	
	</tr>
	</thead>
<% for (int i = 0;i<users.size();i++){ %>
<% User x = (User)users.get(i); %>
<tr>
	<td> <%= x.getId()%> </td>
	<td> <%= x.getName()%> </td>
	<td> <%= x.getMail()%> </td>
	<td> <%= x.getIdRole()%> </td>
	<td> <%= x.getGender()%> </td>
	<td> <%= x.isStatus() %></td>
	<td><a href="users/view?action=reading&userId=<%=x.getId()%>">read</a></td>
	<td><a href="users/update?action=updating&userId=<%=x.getId()%>">update</a></td>
	<td><a href="users/delete?action=deleting&userId=<%=x.getId()%>">delete</a></td>
</tr>
<% } %>
</table>
</div>
</center>
<br><br>
</body>
</html>