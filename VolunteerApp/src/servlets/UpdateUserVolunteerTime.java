package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.EventDAO;
import javaClass.Email;

/**
 * Servlet implementation class UpdateUserVolunteerTime
 */
@WebServlet("/UpdateUserVolunteerTime")
public class UpdateUserVolunteerTime extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String strUserId =  request.getParameter("userId");
		int userId = Integer.parseInt(strUserId);
		
	
		
System.out.println(strUserId);

		
		String strEventDetId = request.getParameter("eventId");
		int eventDetId = Integer.parseInt(strEventDetId);
		
		System.out.println("id is *********" + strEventDetId);
		

		
		String startTime = request.getParameter("optionStartTime");
		String endTime = request.getParameter("optionEndTime");	
		String seventID = request.getParameter("optionEventID");
		int eventID = Integer.parseInt(seventID);
		
		//System.out.println(startTime);		
		System.out.println("*****************************************888 ending at" + endTime);
		//System.out.println("Loc is" + location);
		
		//System.out.println(strUserId);
		//System.out.println(strEventDetId);
		
//		
EventDAO eventDAO = new EventDAO();
		eventDAO.updateUserVolunteerHours(eventID, startTime, endTime);
	
		RequestDispatcher rd = request.getRequestDispatcher("getUserEventsServlet");
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