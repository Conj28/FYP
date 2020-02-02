package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.EventDAO;
import javaClass.Email;



@WebServlet("/eventSignUpServlet")
public class eventSignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String strUserId =  request.getParameter("userId");
		int userId = Integer.parseInt(strUserId);
		
	
		
System.out.println(strUserId);

		
		String strEventDetId = request.getParameter("eventId");
		int eventDetId = Integer.parseInt(strEventDetId);
		
		System.out.println("id is *********" + strEventDetId);
		
		String strLocation = request.getParameter("optionLocation");
		int location = Integer.parseInt(strLocation);
		
		System.out.println("Loc is "+ strLocation);
		
		String startTime = request.getParameter("optionStartTime");
		String endTime = request.getParameter("optionEndTime");	
		
		//System.out.println(startTime);		
		System.out.println("*****************************************888 ending at" + endTime);
		//System.out.println("Loc is" + location);
		
		//System.out.println(strUserId);
		//System.out.println(strEventDetId);
		
		//get some info for for confirmation email
		
		
		String userEmail = request.getParameter("userEmail");
		String eventName = request.getParameter("eventName");
		String setLocation = request.getParameter("setLocation");
		String firstName  = request.getParameter("firstName");
		
		//System.out.println(userEmail + " || " + eventName + " || " + setLocation + " || "  + firstName);
		
		EventDAO eventDAO = new EventDAO();
		eventDAO.eventSignUp(eventDetId, userId, startTime, endTime, location);
		
		Email email = new Email();
		email.emailConfirmSignUp(userEmail, setLocation, startTime, endTime, firstName );
		
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
