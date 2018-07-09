<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="model.entity.*;"%>

<% List<Role> roles = (List<Role>)request.getAttribute("roles"); %>
<% List<Resource> resources = (List<Resource>)request.getAttribute("resources"); %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Creating Users</title>
<link rel="stylesheet" type="text/css" href="/Estilos/Estilo2.css">
</head>
<body>
	<ul> 
		<li><a  href="">INDEX</a></li>
	</ul>
	
	<ul> 
		<li><a href='../'>BEHIND</a></li>
	</ul>
	<br>

<header> <h2> Create Access</h2></header>
   
    <section class="cuerpo">
    	<form action="/access/add" method ="Get">
    	<input type="hidden" name="action" value="Created"/>
 			<h3>
 			
    		<label >Role's</label>
    		<select  name="idRole" > 
    		<% for (int i = 0;i<roles.size();i++){ %>
			<% Role x = (Role)roles.get(i); %>
				<option value="<%=x.getId() %>"> <%=x.getRole() %></option>
			<% } %>
	
    		</select>
	
    	
 			
 			<label >Resources</label>
    		<select  name="idResource" > 
    		<% for (int i = 0;i<resources.size();i++){ %>
			<% Resource x = (Resource)resources.get(i); %>
				<option value="<%=x.getId() %>"> <%=x.getUrl() %></option>
			<% } %>
	
    		</select>
    		
    		
 			
    		<input type ="submit" value="submit" >
    		 </h3>
    	</form>
	</section>	
    		<footer>				
    		</footer>
</body>
</html>