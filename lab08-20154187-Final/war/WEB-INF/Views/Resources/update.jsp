<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.entity.*"%>
<% Resource resource = (Resource)request.getAttribute("resource");%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Role</title>
<link rel="stylesheet" type="text/css" href="/Estilos/Estilo3.css">
</head>
<body>
	<header> <h1> Update Resource </h1></header>
	<ul> 
		<li><a  href=/resources> List the Resources</a></li>
	</ul>
	<br>
	<div class="centro" align="center">
	<table style="margin: 0 auto;">
	
	<table>
	
	<form method="get" action="/resources/update">
	<input type="hidden" name="action" value="Updated"/>
	<input type="hidden" name="resourceId" value="<%=resource.getId()%>"/>
		<thead>
			<tr>
				<th>Update Resource</th>
			</tr>
		</thead>
	
			<tr>
				<th>Name: <input type="text" name="url" value="<%=resource.getUrl()%>" required ></th>
			</tr>

			<tr>
				<th><input type="submit" value="enviar datos"></th>
			</tr>
		
	
	</form>
	</table>
</div>
</body>
</html>