package servlets;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.EventDAO;

/**
 * Servlet implementation class deleteLocation
 */
@WebServlet("/deleteLocation")
public class deleteLocation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String sid = request.getParameter("id");
		int id = Integer.parseInt(sid);
		
		EventDAO eventDAO = new EventDAO();
		
		eventDAO.deleteLocation(id);
		
		RequestDispatcher rd = request.getRequestDispatcher("ViewUpdateEvents");
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
