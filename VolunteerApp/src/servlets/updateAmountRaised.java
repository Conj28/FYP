package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.EventDAO;

/**
 * Servlet implementation class updateAmountRaised
 */
@WebServlet("/updateAmountRaised")
public class updateAmountRaised extends HttpServlet {
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		int i = 0;	
		ArrayList<List<String>> upList = new ArrayList<List<String>>();
		
		EventDAO eventDAO  = new EventDAO();
		
		while(request.getParameter("locationID" + i) != null) {
				
			ArrayList<String> arry = new ArrayList<String>();
			
						
						String locID = request.getParameter("locationID" + i);
						String amt = request.getParameter("raised"+ i);
			
					
						arry.add(locID);
						arry.add(amt);
			
						System.out.println(arry);
						
						upList.add(arry);
			
			i++;
		}
		
		eventDAO.updateLoactionAmount(upList);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("getPastEvents");
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