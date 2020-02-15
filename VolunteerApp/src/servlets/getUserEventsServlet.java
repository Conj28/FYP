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
 * Servlet implementation class getUserEventsServlet
 */
@WebServlet("/getUserEventsServlet")
public class getUserEventsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
		
		
	
		
		//String strUserID = request.getParameter("userID");
		//int userID = Integer.parseInt(strUserID);
		
		int userID = 9;
		
		EventDAO eventDAO = new EventDAO();
		Vector<Event> allUserEventVect = eventDAO.getUserEvents(userID);
		
		
		int hourVol = eventDAO.calcUserVolunteerHours(userID);
		int hoursVol = (hourVol/60);
		
		int numVolEvents = eventDAO.calculateNumberUserPastEvents(userID);
		
		request.setAttribute("volHours", hoursVol);
		request.setAttribute("volNum", numVolEvents);
		
		//System.out.println("**********NUM***********" + hoursVol);
		 
		request.getSession(true).setAttribute("UserEvents", allUserEventVect);
		
	    RequestDispatcher rd = request.getRequestDispatcher("/userHome.jsp");
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
