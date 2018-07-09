package controller.users;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

public class UsersControllerLogin extends HttpServlet {
	public void doGet(HttpServletRequest request ,HttpServletResponse response) throws IOException, ServletException{
		UserService us =UserServiceFactory.getUserService();
		User user =us.getCurrentUser();
		if(user==null){
			response.sendRedirect(us.createLoginURL(request.getServletPath()));
		}else{
			response.getWriter().println("sdfsdfsdf");
	  	request.setAttribute("user", user);
		 RequestDispatcher dp=getServletContext().getRequestDispatcher("/WEB-INF/views/Users/login.jsp");
			dp.forward(request, response);
		}
	
	}

}