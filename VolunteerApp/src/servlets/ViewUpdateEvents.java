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
 * Servlet implementation class ViewUpdateEvents
 */
@WebServlet("/ViewUpdateEvents")
public class ViewUpdateEvents extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
	 
	//get event id from menu
        
        int eventID = 3;
        
        //get the first bit of info 
        Event event = new Event();
        EventDAO eventDAO = new EventDAO();
        
        event = eventDAO.getUpdateEventInfo(eventID);
        request.setAttribute("specificEvent", event);
        
        Vector<Event> event2 = eventDAO.getUpdateLocaitons(eventID);
        request.setAttribute("eventLocations", event2);
        
        RequestDispatcher rd = request.getRequestDispatcher("/updateEvent.jsp");
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
