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
        UserDAO userDAO = new UserDAO();
        
       Event event = eventDAO.getSpecificEvent(id);
       System.out.println("Getting Specific Event");
       request.setAttribute("specificEvent", event);
       
       Vector<Event> event2 = eventDAO.getSpecificEventLocation(id);
        request.setAttribute("specificEventLocation", event2);
        
        
        int location=-1;
        String eStart = "default";
        
        
        //get the location variable 
        if(request.getParameter("optionLocation") != null) {
        	String strLocation = request.getParameter("optionLocation");
        	location = Integer.parseInt(strLocation);
        	System.out.println("the Loc ID*****IS****"+ location);
        	request.setAttribute("selectedLocation", location);
        }
	
        
        
        //get start Time
        if(request.getParameter("optionStartTime") != null) {
        	eStart = request.getParameter("optionStartTime");
        	System.out.println("the time*****IS****"+ eStart);
        	request.setAttribute("selectedTime", eStart);
     
        }
		
        
        System.out.println("");
        
        if(location == -1 && eStart.equals("default")) {
        	
        	Vector<User> GetAllVolunteersforEvent = userDAO.GetAllVolunteersforEvent(id);
    		request.setAttribute("volunteers", GetAllVolunteersforEvent);
    		 System.out.println("1111111111111111111111111111111");
    		
    		
        }else if(location != -1 && eStart.equals("default")){
        	
        	Vector<User> GetAllVolunteersforEvent = userDAO.GetAllVolunteersforEventLoc(id, location);
    		request.setAttribute("volunteers", GetAllVolunteersforEvent);
    		System.out.println("22222222222222222222222222");
    		
        }else if(location == -1 && !eStart.equals("default")) {
        	Vector<User> GetAllVolunteersforEvent = userDAO.GetAllVolunteersforEventTime(id, eStart);
    		request.setAttribute("volunteers", GetAllVolunteersforEvent);
    		System.out.println("33333333333333333333333333");
    		
        }else if(location != -1 && !eStart.equals("default")){
        	Vector<User> GetAllVolunteersforEvent = userDAO.GetAllVolunteersforEventLocTime(id, location, eStart);
    		request.setAttribute("volunteers", GetAllVolunteersforEvent);
    		System.out.println("44444444444444444444444444444444444444444");
        }
        
        
        
        
		
		
		//System.out.println("time is *************"+event.getStartTime());
		
		TimeCalc timeCalc = new TimeCalc();
		//time logic 
		List<String> listStart = timeCalc.calcStartTimes(event.getStartTime(), event.getEndTime()); 	
        List<String> listEnd = timeCalc.calcEndTimes(event.getStartTime(), event.getEndTime()); 
        
        request.setAttribute("listStartTimes", listStart);
        request.setAttribute("listEndTimes", listEnd);
        
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