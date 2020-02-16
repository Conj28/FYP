package servlets;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.EventDAO;
import javaClass.Event;

/**
 * Servlet implementation class AdminHome
 */
@WebServlet("/AdminHome")
public class AdminHome extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
	
		
		
		//Live Events 
		EventDAO eventDAO = new EventDAO();
		Vector<Event> GetLiveEvents = eventDAO.getAdminLiveEvents();
		request.setAttribute("liveEvents", GetLiveEvents);
		
		//upcoming Events
		Vector<Event> GetUpcomingEvents = eventDAO.getAdminUpcomingEvents();
		request.setAttribute("upcomingEvents", GetUpcomingEvents);
		
		
		
		
	    RequestDispatcher rd = request.getRequestDispatcher("/adminHome.jsp");
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