package servlets;

import java.io.IOException;
import java.util.List;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.EventDAO;
import DAO.UserDAO;
import javaClass.Event;
import javaClass.TimeCalc;
import javaClass.User;

/**
 * Servlet implementation class getAllUsers
 */
@WebServlet("/getAllUsers")
public class getAllUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
	     
        UserDAO userDAO = new UserDAO();	
		
        Vector<User> GetAllVolunteersforEvent = userDAO.getAllUsers();
    	request.setAttribute("volunteers", GetAllVolunteersforEvent);
        
        RequestDispatcher rd = request.getRequestDispatcher("/allUsers.jsp");
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