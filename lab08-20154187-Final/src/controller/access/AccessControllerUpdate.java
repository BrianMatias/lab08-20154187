package controller.access;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.users.UserServiceFactory;

import controller.PMF;
import model.entity.*;

public class AccessControllerUpdate extends HttpServlet {
public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	
	com.google.appengine.api.users.User uGoogle =UserServiceFactory.getUserService().getCurrentUser();
	
	// Vefiricando Login
	if(uGoogle==null){
		RequestDispatcher dp =getServletContext().getRequestDispatcher("/WEB-INF/Views/Errores/error1.jsp");
		dp.forward(request, response);
		
	}else{
		System.out.println(uGoogle.getEmail()+"j");
		//PMF para consultas
		PersistenceManager pm=PMF.get().getPersistenceManager();
		//buscando usuarios registrado   activo con el email
		String query ="select from " + User.class.getName() +
				" where mail=='" + uGoogle.getEmail() + "'" +
				" && status==true";
		
		System.out.println(query);
		List<User> uSearch =(List<User>) pm.newQuery(query).execute();
		//Verificando Usuario registrado
		if(uSearch.isEmpty()){
			RequestDispatcher dp =getServletContext().getRequestDispatcher("/WEB-INF/Views/Errores/error2.jsp");
			dp.forward(request, response);
		}else{
			System.out.println(request.getServletPath());
			//Buscando resource registrado activo de acuerdo a la URL
			String query2= "select from " + Resource.class.getName() +
					" where Url=='"+ request.getServletPath() + "'" +
					" && status==true";
			List<Resource> rSearch =(List<Resource>) pm.newQuery(query2).execute();
			//verificando recurso registrado
			if(rSearch.isEmpty()){
				RequestDispatcher dp =getServletContext().getRequestDispatcher("/WEB-INF/Views/Errores/error3.jsp");
				dp.forward(request, response);
			}else{
				System.out.println(request.getServletPath());
				String query3="select from "+Access.class.getName()+
						" where idRole=="+ uSearch.get(0).getIdRole()+
						" && idUrl=="+ rSearch.get(0).getId()+
						" && status==true";
				List<Access> aSearch =(List <Access>)pm.newQuery(query3).execute();
				//verificando acceso registrado//
				if(aSearch.isEmpty()){
					RequestDispatcher dp =getServletContext().getRequestDispatcher("/WEB-INF/Views/Errores/error4.jsp");
					dp.forward(request, response);
					
				}else{
					
					if(request.getParameter("action").equals("updating")){
						
						
						String query5 = "select from " + Role.class.getName();
						List<Role> roles = (List<Role>)pm.newQuery(query5).execute();
						
						
						String query6 = "select from " + Resource.class.getName();
						List<Resource> resources = (List<Resource>)pm.newQuery(query6).execute();
						
						
						String query7 = "select from " + Access.class.getName();
						List<Access> access = (List<Access>)pm.newQuery(query7).execute();
						for(int i = 0;i<access.size() && access.get(i) != null;i++){	
							System.out.println("for 1"+(request.getParameter("accessId")));
							 if(access.get(i).getId()== Long.parseLong((request.getParameter("accessId")))){
								 System.out.println("if 1");
								 	request.setAttribute("roles", roles);
									request.setAttribute("resources", resources);
									request.setAttribute("access",access.get(i) );
									RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/Views/Access/update.jsp");
									dispatcher.forward(request, response);
								 break;
							 }
						 }		
						 
					
					}
					
					else{
						Access aux;

						 String query8 = "select from " + Access.class.getName();
						 List<Access> access = (List<Access>)pm.newQuery(query8).execute();				 
						 for(int i = 0;i<access.size() && access.get(i) != null;i++){
							 System.out.println(request.getParameter("accessId")+"algo");
							 if(access.get(i).getId()==(Long.parseLong((request.getParameter("accessId"))))){
								 System.out.println("if");
								 aux = access.get(i);
								 aux.setIdRole(Long.parseLong(request.getParameter("roleId")));	
								 aux.setIdUrl(Long.parseLong(request.getParameter("urlId")));
								 break;
							
							 }
						 }
						 pm.close();
						 response.sendRedirect("/access");
				}
					
				}
			}
		}
		
	}
		

			/*if(request.getParameter("action").equals("updating")){
				
				PersistenceManager pm = PMF.get().getPersistenceManager();
				
				String query = "select from " + Role.class.getName();
				List<Role> roles = (List<Role>)pm.newQuery(query).execute();
				
				
				String query2 = "select from " + Resource.class.getName();
				List<Resource> resources = (List<Resource>)pm.newQuery(query2).execute();
				
				
				String query3 = "select from " + Access.class.getName();
				List<Access> access = (List<Access>)pm.newQuery(query3).execute();
				for(int i = 0;i<access.size() && access.get(i) != null;i++){	
					System.out.println("for 1"+(request.getParameter("accessId")));
					 if(access.get(i).getId()== Long.parseLong((request.getParameter("accessId")))){
						 System.out.println("if 1");
						 	request.setAttribute("roles", roles);
							request.setAttribute("resources", resources);
							request.setAttribute("access",access.get(i) );
							RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/Views/Access/update.jsp");
							dispatcher.forward(request, response);
						 break;
					 }
				 }		
				 
			
			}
			
			else{
				Access aux;

				 PersistenceManager pm = PMF.get().getPersistenceManager();
				 String query3 = "select from " + Access.class.getName();
				 List<Access> access = (List<Access>)pm.newQuery(query3).execute();				 
				 for(int i = 0;i<access.size() && access.get(i) != null;i++){
					 System.out.println(request.getParameter("accessId")+"algo");
					 if(access.get(i).getId()==(Long.parseLong((request.getParameter("accessId"))))){
						 System.out.println("if");
						 aux = access.get(i);
						 aux.setIdRole(Long.parseLong(request.getParameter("roleId")));	
						 aux.setIdUrl(Long.parseLong(request.getParameter("urlId")));
						 break;
					
					 }
				 }
				 pm.close();
				 response.sendRedirect("/access");
		}	*/
	}
}
