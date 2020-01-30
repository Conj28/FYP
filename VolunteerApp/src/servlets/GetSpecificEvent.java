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
import javaClass.Event;
import javaClass.TimeCalc;

/**
 * Servlet implementation class GetSpecificEvent
 */
@WebServlet("/GetSpecificEvent")
public class GetSpecificEvent extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	            throws Exception {
		 
		String strId = request.getParameter("currentEventID");
		 int id = Integer.parseInt(strId);
		  
	        EventDAO eventDAO = new EventDAO();
	        
	       Event event = eventDAO.getSpecificEvent(id);
	       System.out.println("Getting Specific Event");
	       request.getSession(true).setAttribute("specificEvent", event);
	       
	       Vector<Event> event2 = eventDAO.getSpecificEventLocation(id);
	        request.getSession(true).setAttribute("specificEventLocation", event2);
	        
	        //TimeCalc timeCalc = new TimeCalc();
	        
	        //timeCalc.calcStartTimes(event.getStartTime(), event.getEndTime());
	        //timeCalc.calcEndTimes(event.getStartTime(), event.getEndTime());
	        
	       // List<String> listStart = timeCalc.calcStartTimes(event.getStartTime(), event.getEndTime()); 	
	      //  List<String> listEnd = timeCalc.calcEndTimes(event.getStartTime(), event.getEndTime()); 
	        //System.out.println("Start time is" + listStart);
	       //System.out.println(" end Times are" +timeCalc.calcEndTimes(event.getStartTime(), event.getEndTime()));
	        
	       // request.setAttribute("listStartTimes", listStart);
	      //  request.setAttribute("listEndTimes", listEnd);
	        
	        
	        
	        RequestDispatcher rd = request.getRequestDispatcher("/eventDetails.jsp");
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
