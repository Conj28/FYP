package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDAO;
import javaClass.Email;
import javaClass.User;

/**
 * Servlet implementation class SendEventEmail
 */
@WebServlet("/SendEventEmail")
public class SendEventEmail extends HttpServlet {
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String strId = request.getParameter("currentEventID");
		int id = Integer.parseInt(strId);

		String EventName = request.getParameter("eventName");

		String title = request.getParameter("title");
		String heading = request.getParameter("heading");
		String message = request.getParameter("message");

		String locId = request.getParameter("optionLocation");
		int lID = Integer.parseInt(locId);

		System.out.println(lID);

		Email email = new Email();
		UserDAO userDAO = new UserDAO();

		if (lID == -1) {

			ArrayList<User> users = userDAO.getEmailAllEvents(id);

			// users.forEach((u) -> System.out.println(u.getFirstName()));
			/*
			 * for(User u: users) { System.out.println(u.getFirstName());
			 * System.out.println(u.getEmail()); }
			 */

			email.sendAllEmail(users, id, title, heading, message);

		} else {
			ArrayList<User> users = userDAO.getEmailLocEvents(id, lID);
			email.sendAllEmail(users, id, title, heading, message);
		}
		// email.sendEmail();

		RequestDispatcher rd = request.getRequestDispatcher("AdminHome");
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