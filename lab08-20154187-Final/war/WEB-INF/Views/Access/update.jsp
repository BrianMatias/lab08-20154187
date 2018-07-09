<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="model.entity.*"%>
<% Access access = (Access)request.getAttribute("access");%>
<% List<Role> roles = (List<Role>)request.getAttribute("roles"); %>
<% List<Resource> resources = (List<Resource>)request.getAttribute("resources"); %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
<link rel="stylesheet" type="text/css" href="/Estilos/Estilo2.css">
</head>
<body>
	<header> <h1> ACTUALIZAR </h1></header>
	<ul> 
		<li><a  href=/access> BEHIND</a></li>
	</ul>
	<br>

<header> <h2> Actualizar Datos</h2></header>
   
    <section class="cuerpo">
    	<form action="/access/update" method ="Get">
    	<input type="hidden" name="action" value="Updated"/>
    	<input type="hidden" name="accessId" value="<%=access.getId()%>"/>
 			<h3>

				<h3>
				<label >Roles</label>
				<select  name="roleId" > 
				<%int a=0;  %>
				<% for (int i = 0;i< roles.size();i++){ %>				
				<% Role x = (Role)roles.get(i); %>
				<option value="<%=x.getId() %>"> <%=x.getRole() %></option>
				<% } %>
		
	    		</select>
				<label >Reources</label>
					<select  name="urlId" > 
					<% for (int i = 0;i< resources.size();i++){ %>
					<% Resource y = (Resource)resources.get(i); %>
					<option value="<%=y.getId() %>"> <%=y.getUrl() %></option>
					<% } %>
			
		    		</select>
    		
			<input type="submit" value="enviar datos">
			</h3>
		</form>

	</section>


		<footer>				
    		</footer>
</body>
</html>