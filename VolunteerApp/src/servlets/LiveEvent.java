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
 * Servlet implementation class LiveEvent
 */
@WebServlet("/LiveEvent")
public class LiveEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
	 
	String strId = request.getParameter("currentEventID");
	 int id = Integer.parseInt(strId);
	  
        EventDAO eventDAO = new EventDAO();
        
       Event event = eventDAO.getSpecificEvent(id);
       System.out.println("Getting Specific Event");
       request.setAttribute("specificEvent", event);
       
       Vector<Event> event2 = eventDAO.getSpecificEventLocation(id);
        request.setAttribute("specificEventLocation", event2);
        
        Vector<Event> GetAllVolunteersforEvent = eventDAO.getAdminUpcomingEvents();
		request.setAttribute("upcomingEvents", GetAllVolunteersforEvent);
        
        RequestDispatcher rd = request.getRequestDispatcher("/AdminLiveEvent.jsp");
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