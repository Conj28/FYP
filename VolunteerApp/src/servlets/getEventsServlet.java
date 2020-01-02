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
 * Servlet implementation class getEventsServlet
 */
@WebServlet("/getEventsServlet")
public class getEventsServlet extends HttpServlet {
	
	  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	            throws Exception {
	      
		  String location = request.getParameter("location");
		  System.out.println(location);
		  
	        EventDAO eventDAO = new EventDAO();
	        
	        if(location == null) {
	        	System.out.println("Its Nulll!!");
	       
	        	location = null;
	        	 request.getSession(true).setAttribute("location", location);
	        Vector<Event> allEventVect = eventDAO.getAllEvents();
	        
	        request.getSession(true).setAttribute("Events", allEventVect);
	        RequestDispatcher rd = request.getRequestDispatcher("/eventsPage.jsp");
	        rd.forward(request, response);
	        
	        
	    }else {
	    	System.out.println("Its Not Null Wooo");
		      
	        Vector<Event> allEventVect = eventDAO.getFilteredEvents(location);
	        
	        request.getSession(true).setAttribute("Events", allEventVect);
	        request.getSession(true).setAttribute("location", location);
	        
	        
	        RequestDispatcher rd = request.getRequestDispatcher("/eventsPage.jsp");
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
