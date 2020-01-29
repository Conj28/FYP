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

		
		//Get the necessary Variables 
		//Event_det_ID
		//Event_loc_ID
		//Start & End Times
		
		//Event_ID
		String strId = request.getParameter("LcurrentEventID");
		int id = Integer.parseInt(strId);

		//Event_Loaction
		String strLocation = request.getParameter("LevetLocation");
		int location = Integer.parseInt(strLocation);

		//Get the start and end times 
		String startTime = request.getParameter("LeventStartTime");
		String endTime = request.getParameter("LeventEndTime");
		
		//System.out.println("id " + id + "location " + location + startTime + "" + endTime );
		
		TimeCalc timeCalc = new TimeCalc();

		timeCalc.calcStartTimes(startTime,endTime);
		

		List<String> listStart = timeCalc.calcStartTimes(startTime, endTime);
		
		EventDAO eventDAO = new EventDAO();
		
		Vector<Event> allLocationVect =	eventDAO.getAvailability(location, listStart);	

		//request.setAttribute("listStartTimes", listStart);
		// request.setAttribute("listEndTimes", listEnd);

		System.out.println("it got all of the location timeslots successfully");
		
		 request.getSession(true).setAttribute("locationTimes", allLocationVect);
		
		RequestDispatcher rd = request.getRequestDispatcher("/eventDetails.jsp");
		rd.forward(request, response);

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
