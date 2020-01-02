package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogoutServlet
 */
@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	            throws Exception {
		 
		 
		 //https://stackoverflow.com/questions/10036187/java-servlet-session-cleanup-httpservletrequest/10043220
		 HttpSession session = request.getSession(false);
		 if (session != null) {
		     session.invalidate();
		 }
		 
		 RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
	        rd.forward(request, response);
	        
		 
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
