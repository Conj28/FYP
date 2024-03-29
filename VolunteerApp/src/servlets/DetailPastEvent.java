package servlets;

import java.io.IOException;
import java.text.DecimalFormat;
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
import javaClass.User;

/**
 * Servlet implementation class DetailPastEvent
 */
@WebServlet("/DetailPastEvent")
public class DetailPastEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
	 
	String strId = request.getParameter("currentEventID");
	 int id = Integer.parseInt(strId);
	  
        EventDAO eventDAO = new EventDAO();
        UserDAO userDAO = new UserDAO();
        
       Event event = eventDAO.getSpecificEvent(id);
       System.out.println("Getting Specific Event");
       request.setAttribute("specificEvent", event);
       
  
        
       Vector<User> GetAllVolunteersforEvent = userDAO.getPastEventVolunteers(id);
		request.setAttribute("volunteers", GetAllVolunteersforEvent);

		
		
		//get locations and number at each 
		Vector<Event> locEventNum = eventDAO.getLocAndNumber(id);
		request.setAttribute("numVol", locEventNum);
		
		Vector<Event> pastEventMoney= eventDAO.getEventMoney(id);
		request.setAttribute("pastAmount", pastEventMoney);
		
		//Start of small icons 
		//-------------------------------------
		//total number of volunteers
		int totalNumVolunteers = eventDAO.getTotalNumVolunteers(id);
		request.setAttribute("totalNumVolunteers", totalNumVolunteers);
		
		//number of locations
		int numberOfLocation = eventDAO.getNumerOfLocation(id);
		request.setAttribute("numberOfLocation", numberOfLocation);
		
		//duration ?
		int minEventDuration = eventDAO.getEventDuration(id);
		double eventDuration = minEventDuration/60;
		request.setAttribute("eventDuration", eventDuration);
		
		//total revenue 
		double totalRevenue = eventDAO.getTotalRevenue(id);
		request.setAttribute("totalRevenue", totalRevenue);
		
		//most profitable location
		String mostProfitableEvent = eventDAO.getMostPEvent(id);
		request.setAttribute("mostProfitableEvent", mostProfitableEvent);
		
		//least profitable loc 
		String leastProfitableEvent = eventDAO.getLeastPEvent(id);
		request.setAttribute("leasetProfitableEvent", leastProfitableEvent);
		
		//revenue per volunteer 
		double revPerPerson = Math.round(totalRevenue / totalNumVolunteers);
		request.setAttribute("revPerPerson", revPerPerson);
		
		double avgVolunteerTime = eventDAO.getAvgVolTime(id);
		request.setAttribute("avgVolunteerTime", avgVolunteerTime);
		
		
        
        RequestDispatcher rd = request.getRequestDispatcher("/detailPastEvent.jsp");
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