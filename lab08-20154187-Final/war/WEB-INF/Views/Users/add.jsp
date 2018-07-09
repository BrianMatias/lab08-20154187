<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="model.entity.Role;"%>
<% List<Role> roles = (List<Role>)request.getAttribute("roles"); %>

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

<header> <h2> CREATE USERS</h2></header>
   
    <section class="cuerpo">
    	<form action="/users/add" method ="Get">
    	<input type="hidden" name="action" value="Created"/>
 			<h3>
    		<label >Name</label>
    		<input type ="text" name ="name" id="itName" required> 
    		

    		<label >Mail</label>
    		<input type ="email" name ="mail"  id="itMail" required>

 			<label >Role's</label>
    		<select  name="idRole" > 
    		<% for (int i = 0;i<roles.size();i++){ %>
			<% Role x = (Role)roles.get(i); %>
				<option value="<%=x.getId() %>"> <%=x.getRole() %></option>
			<% } %>
	
    		</select>
	
    		Hombre <input type="radio" name="gender" id="itGender"value="Hombre" required />Mujer<input type="radio" name="gender"  id="itGender"value="Mujer" required />

    		<input type ="submit" value="submit" >
    		 </h3>
    	</form>
	</section>	
    		<footer>				
    		</footer>
</body>
</html>