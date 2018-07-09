<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="model.entity.*"%>
<% List<Resource> resources = (List<Resource>)request.getAttribute("resources"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Resources</title>
<link rel="stylesheet" type="text/css" href="/Estilos/Estilo3.css">

</head>
<body>

<header> <h1> List the Resources</h1></header>
	<ul> 
		<li><a href="/resources/add?action=creating">Create Resource</a></li>
	</ul>
	
	<ul> 
		<li><a href='../'>BEHIND</a></li>
	</ul>
	<br>
	<div class="centro">
	<center>
<table style="margin: 0 auto;">
	<thead>
<table>
	<thead>
	<tr>	  	
		<th>Id </th>
		<th>URL</th>
		<th>Status</th>
		<th>Actions</th>

	</tr>
	</thead>
<% for (int i = 0;i<resources.size();i++){ %>
<% Resource x = (Resource)resources.get(i); %>
<tr>
	<td> <%= x.getId()%> </td>
	<td> <%= x.getUrl()%> </td>
	<td> <%= x.isStatus()%> </td>
	<td><a href="resources/view?action=reading&resourceId=<%=x.getId()%>">read</a></td>
	<td><a href="resources/update?action=updating&resourceId=<%=x.getId()%>">update</a></td>
	<td><a href="resources/delete?action=deleting&resourceId=<%=x.getId()%>">delete</a></td>

</tr>
<% } %>
</table>
</div>
</center>
<br><br>
</body>
</html>