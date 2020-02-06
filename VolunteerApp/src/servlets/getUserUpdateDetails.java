package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javaClass.Event;

/**
 * Servlet implementation class getUserUpdateDetails
 */
@WebServlet("/getUserUpdateDetails")
public class getUserUpdateDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
	
		String loc = request.getParameter("userCounty");
		Event event = new Event();
		event.setCounty(loc);	
		
		System.out.println("the locaion th ************" + loc);
		 request.setAttribute("loc", event);
		
		RequestDispatcher rd = request.getRequestDispatcher("updateUserDetails.jsp");
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