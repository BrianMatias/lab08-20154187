<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.entity.*"%>
<% User users = (User)request.getAttribute("users");%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
<link rel="stylesheet" type="text/css" href="/Estilos/Estilo3.css">
</head>
<body>
	<header> <h1> ACTUALIZAR </h1></header>
	<ul> 
		<li><a  href=/users>Lista de usuarios</a></li>
	</ul>
	<br>
	<div class="centro" align="center">
	<table style="margin: 0 auto;">
	
	<table>
	
	<form method="get" action="/users/update">
	<input type="hidden" name="action" value="Updated"/>
	<input type="hidden" name="usersId" value="<%=users.getId()%>"/>

		<thead>
			<tr>
				<th>Actualizar Datos</th>
			</tr>
		</thead>
	
			<tr>
				<th>Name: <input type="text" name="name" value="<%=users.getName()%>" required ></th>
			</tr>
			<tr>
				<th>id-Roles: <input type="text" name="idRole" value="<%=users.getIdRole()%>" required ></th>
			</tr>
		
			<tr>
				<th>Mail: <input type="email" name="mail" value="<%=users.getMail()%>" required ></th>
			</tr>
			
			<tr>
				<th>Gender:
				<% String a =users.getGender(); %>
  					<% if(a.equalsIgnoreCase("Hombre")){ %>
							<label>Hombre</label><input type="radio" name="gender" value="Hombre" checked required >
							<label>Mujer</label><input type="radio" name ="gender"value="Mujer" required><% }%>
				<% if(a.equalsIgnoreCase("Mujer")){%>
					<label>Hombre</label><input type="radio" name="gender" value="Hombre"  required >
					<label>Mujer</label><input type="radio" name ="gender"value="Mujer" checked required><% }%>
				
				</th>
			</tr>
			<tr>
				<th><input type="submit" value="enviar datos"></th>
			</tr>
		
	
	</form>
	</table>
</div>
</body>
</html>