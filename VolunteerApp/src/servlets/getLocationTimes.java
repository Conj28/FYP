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
 * Servlet implementation class getLocationTimes
 */
@WebServlet("/getLocationTimes")
public class getLocationTimes extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		
			String strId = request.getParameter("currentEventID");
			int id = Integer.parseInt(strId);
		  
	        EventDAO eventDAO = new EventDAO();
	        
	       Event event = eventDAO.getSpecificEvent(id);
	       System.out.println("Getting Specific Event");
	       request.getSession(true).setAttribute("specificEvent", event);
	       
	       Vector<Event> event2 = eventDAO.getSpecificEventLocation(id);
	        request.getSession(true).setAttribute("specificEventLocation", event2);
		
		//Event_ID
		//String strId = request.getParameter("LcurrentEventID");
		//int id = Integer.parseInt(strId);

		//Event_Loaction
		String strLocation = request.getParameter("LevetLocation");
	if(strLocation.equals("default")) {	
	//System.out.println("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^6"+strLocation);
		RequestDispatcher rd = request.getRequestDispatcher("/eventDetails.jsp");
		rd.forward(request, response);
		
	}else {
		int location = Integer.parseInt(strLocation);

		//Get the start and end times 
		String startTime = request.getParameter("LeventStartTime");
		String endTime = request.getParameter("LeventEndTime");
		
		//System.out.println("id " + id + "location " + location + startTime + "" + endTime );
		
		TimeCalc timeCalc = new TimeCalc();

		timeCalc.calcStartTimes(startTime,endTime);
		

		List<String> listStart = timeCalc.calcStartTimes(startTime, endTime);
		List<String> listEnd = timeCalc.calcEndTimes(startTime, endTime);
		
		EventDAO eventDAO1 = new EventDAO();
		
		Vector<Event> allLocationVect =	eventDAO1.getAvailability(location, listStart, listEnd);	

		//request.setAttribute("listStartTimes", listStart);
		// request.setAttribute("listEndTimes", listEnd);

		System.out.println("it got all of the location timeslots successfully");
		
		 request.setAttribute("locationTimes", allLocationVect);
		
		 //request to make list stay the same 
		 request.setAttribute("selectedLocation", location);
		 
		RequestDispatcher rd = request.getRequestDispatcher("/eventDetails.jsp");
		rd.forward(request, response);
	}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			processRequest(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			processRequest(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
