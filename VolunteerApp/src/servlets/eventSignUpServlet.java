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
		
		String strEventDetId = request.getParameter("eventId");
		int eventDetId = Integer.parseInt(strEventDetId);
		
		String strLocation = request.getParameter("optionLocation");
		int location = Integer.parseInt(strLocation);
		
		String startTime = request.getParameter("optionStartTime");
		String endTime = request.getParameter("optionEndTime");	
		
		//System.out.println(startTime);		
		//System.out.println("ending at" + endTime);
		//System.out.println("Loc is" + location);
		
		//System.out.println(strUserId);
		//System.out.println(strEventDetId);
		
		EventDAO eventDAO = new EventDAO();
		eventDAO.eventSignUp(eventDetId, userId, startTime, endTime, location);
		
		Email email = new Email();
		email.emailConfirmSignUp("116376836@umail.ucc.ie", "Cork Place", "12:00", "14:30");
		
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
