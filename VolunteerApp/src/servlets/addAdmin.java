package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDAO;

/**
 * Servlet implementation class addAdmin
 */
@WebServlet("/addAdmin")
public class addAdmin extends HttpServlet {
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
	
		String strId  = request.getParameter("userID");
		int id = Integer.parseInt(strId);
		
		UserDAO userDAO = new UserDAO();
		
		userDAO.addNewAdmin(id);
				
				
		
	    RequestDispatcher rd = request.getRequestDispatcher("getAllUsers");
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
