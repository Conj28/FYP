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
 * Servlet implementation class SetAmountRaised
 */
@WebServlet("/SetAmountRaised")
public class SetAmountRaised extends HttpServlet {
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String strId = request.getParameter("updateEventID");
		int id = Integer.parseInt(strId);
		
		EventDAO eventDAO = new EventDAO();
		
		Vector<Event> event2 = eventDAO.getLocationMoney(id);
        request.setAttribute("specificEventLocation", event2);
        

		RequestDispatcher rd = request.getRequestDispatcher("/amountRaised.jsp");
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