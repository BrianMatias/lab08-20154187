<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.entity.*"%>
<% Role role = (Role)request.getAttribute("role");%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Role</title>
<link rel="stylesheet" type="text/css" href="/Estilos/Estilo3.css">
</head>
<body>
	<header> <h1> ACTUALIZAR </h1></header>
	<ul> 
		<li><a  href=/employeeControllerIndex> BEHIND</a></li>
	</ul>
	<br>
	<div class="centro" align="center">
	<table style="margin: 0 auto;">
	
	<table>
	
	<form method="get" action="/roles/update">
	<input type="hidden" name="action" value="Updated"/>
	<input type="hidden" name="roleId" value="<%=role.getId()%>"/>
		<thead>
			<tr>
				<th>Actualizar Datos</th>
			</tr>
		</thead>
	
			<tr>
				<th>Name: <input type="text" name="name" value="<%=role.getRole()%>" required ></th>
			</tr>

			<tr>
				<th><input type="submit" value="enviar datos"></th>
			</tr>
		
	
	</form>
	</table>
</div>
</body>
</html>