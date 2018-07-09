package controller.users;
import java.io.IOException;
import javax.servlet.http.*;
import java.util.Date;
import java.util.List;
import java.text.DateFormat;
import javax.servlet.*;
import javax.jdo.PersistenceManager;
import model.entity.*;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import controller.PMF;
import model.entity.User;
import model.entity.Role;

public class UsersControllerIndex extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		 PersistenceManager pm = PMF.get().getPersistenceManager();
		 String query = "select from " + User.class.getName();
		 List<User> users = (List<User>)pm.newQuery(query).execute();
		 request.setAttribute("users", users);
		 RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/Views/Users/index.jsp");
		 dispatcher.forward(request, response); 


	}
}
