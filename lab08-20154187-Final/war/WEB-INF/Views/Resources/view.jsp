<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.entity.*"%>
<% Resource x = (Resource)request.getAttribute("resource");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Read</title>
<link rel="stylesheet" type="text/css" href="/Estilos/Estilo3.css">

</head>
<body>

<header> <h2> Resource</h2></header>
	
	<ul> 
		<li><a  href=/resources> List the Recources</a></li>
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
		<th>URL</th>
		<th> <%= x.getUrl()%> </th>
	</tr>
	<tr>
		<th>Status</th>
		<th> <%= x.isStatus()%> </th>
	</tr>
	

</table>

</div>
</body>
</html>