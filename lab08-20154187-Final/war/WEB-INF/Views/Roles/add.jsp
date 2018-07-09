<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/Estilos/Estilo2.css">
</head>
<body>
	<ul> 
		<li><a  href="employeeControllerIndex">INDEX</a></li>
	</ul>
	
	<ul> 
		<li><a href='../'>BEHIND</a></li>
	</ul>
	<br>

<header> <h2> Add Role</h2></header>
   
    <section class="cuerpo">
    	<form action="/roles/add" method ="Get">
    	<input type="hidden" name="action" value="Created"/>
 			<h3>
    		<label >Name</label>
    		<input type ="text" name ="role" id="itName" required> 

    		<input type ="submit" value="submit" >
    		 </h3>
    	</form>
	</section>	
    		<footer>				
    		</footer>
</body>
</html>