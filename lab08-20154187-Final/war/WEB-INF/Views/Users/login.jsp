<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.List"%>  
<%@ page import ="com.google.appengine.api.users.User" %>  
<% User a = (User) request.getAttribute("user"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bienvenido</title>
<link rel="stylesheet" type="text/css" href="/Estilos/Estilo3.css">
</head>
<body>
		<header> <h1> User </h1></header>
			
			<ul> 
				<li><a href="/users">Users</a></li>
			</ul>
			<ul> 
				<li><a href="/roles">Roles</a></li>
			</ul>
			<ul> 
				<li><a href="/resources">Resources</a></li>
			</ul>
			
			<ul> 
				<li><a href="/access">Access</a></li>
			</ul>
			<ul> 
				<li><a href="/employees">Employee</a></li>
			</ul>
			<ul> 
				<li><a href="/users/login">Login</a></li>
			</ul>
			<ul> 
				<li><a href="/users/logout">Logout</a></li>
			</ul>
			<br>
			<center>
			<div class="centro">
				<table style="margin: 0 auto;">
					<thead>
					<table>
				<thead>
				<tr>	  	
					<th>Usuario</th>
				</tr>
					</thead>
					
					
				<tr>
					<td> <%=a.getEmail()%> </td>
	
				</tr>
				</table>
		</div>
		</center>
		<br><br>
			

</body>
</html>