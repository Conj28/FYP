package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDAO;
import javaClass.User;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
		
			String email = request.getParameter("emailAddress");
			String password = request.getParameter("password");
		
			System.out.println(email);
			System.out.println(password);
			
		UserDAO userDAO = new UserDAO();
		
		User user = userDAO.login(email, password);
		
		//Check if the user has an account!!
		
		if(user == null) {
			System.out.println("User is Null");
			//https://stackoverflow.com/questions/4912690/how-to-access-at-request-attributes-in-jsp
			request.setAttribute("Error", "True");
			RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
	        rd.forward(request, response);
	        
		} else {
			System.out.println("User is not Null!!!!");
			request.getSession(true).setAttribute("User", user);
			
			//System.out.println("Duser ID IS ********" + user.getUserID());
			
			RequestDispatcher rd = request.getRequestDispatcher("getEventsServlet");
	        rd.forward(request, response);
		}
		
	}
	
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			processRequest(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			processRequest(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
