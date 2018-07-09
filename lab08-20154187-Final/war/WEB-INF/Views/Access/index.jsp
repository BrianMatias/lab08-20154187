<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="model.entity.*"%>
<% List<Access> access = (List<Access>)request.getAttribute("access"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Access</title>
<link rel="stylesheet" type="text/css" href="/Estilos/Estilo3.css">

</head>
<body>


<header> <h1> Access</h1></header>
	<ul> 
		<li><a href="/access/add?action=creating">Create Access</a></li>
	</ul>
	<ul> 
		<li><a href="access">List the Access</a></li>
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
		<th>Id-Role</th>
		<th>Id-Resource</th>
		<th>Status</th>
		<th>READ</th>	
		<th>UPDATE</th>	
		<th>DELETE</th>	
	</tr>
	</thead>
<% for (int i = 0;i< access.size();i++){ %>
<% Access x = (Access)access.get(i); %>
<tr>
	<td> <%= x.getId()%> </td>
	<td> <%= x.getIdRole()%> </td>
	<td> <%= x.getIdUrl()%> </td>
	<td> <%= x.isStatus() %></td>
	<td><a href="access/view?action=reading&accessId=<%=x.getId()%>">read</a></td>
	<td><a href="access/update?action=updating&accessId=<%=x.getId()%>">update</a></td>
	<td><a href="access/delete?action=deleting&accessId=<%=x.getId()%>">delete</a></td>
</tr>
<% } %>
</table>
</div>
<center>
<br><br>
</body>
</html>