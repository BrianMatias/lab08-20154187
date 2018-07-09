<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="model.entity.*"%>
<% List<Role> roles = (List<Role>)request.getAttribute("roles"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Roles</title>
<link rel="stylesheet" type="text/css" href="/Estilos/Estilo3.css">

</head>
<body>

<header> <h1> List Roles </h1></header>
	<ul> 
		<li><a href="roles/add?action=creating">CREATE</a></li>
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
		<th>Status</th>
		<th>Actions</th>

	</tr>
	</thead>
<% for (int i = 0;i<roles.size();i++){ %>
<% Role x = (Role)roles.get(i); %>
<tr>
	<td> <%= x.getId()%> </td>
	<td> <%= x.getRole()%> </td>
	<td> <%= x.isStatus()%> </td>
	<td><a href="roles/view?action=reading&roleId=<%=x.getId()%>">read</a></td>
	<td><a href="roles/update?action=updating&roleId=<%=x.getId()%>">update</a></td>
	<td><a href="roles/delete?action=deleting&roleId=<%=x.getId()%>">delete</a></td>

</tr>
<% } %>
</table>
</div>
</center>
<br><br>
</body>
</html>