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
 * Servlet implementation class updateEventServlet
 */
@WebServlet("/updateEventServlet")
public class updateEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// get the event Details bar location
		String eventName = request.getParameter("eventName");
		String eventDate = request.getParameter("date");
		String strcreatedBy = request.getParameter("loggedInUser");
		int createdBy = 3;
		String startTime = request.getParameter("startTime");
		String endTime = request.getParameter("endTime");
		String img = request.getParameter("img");
		String description = request.getParameter("description");
		
		String srrEventDetID = request.getParameter("EventID");
		int eventID = Integer.parseInt(srrEventDetID);
		
		/*System.out.println("***********************"+eventName);
		System.out.println(eventDate);
		System.out.println(startTime);
		System.out.println(endTime);
		System.out.println(img);
		System.out.println(description + "*******************************"); */
		
		
		EventDAO eventDAO = new EventDAO();
		eventDAO.updateEventInfo(eventName, eventDate, startTime, endTime, img, description, eventID);
		
		int i = 0;
		
		ArrayList<List<String>> upList = new ArrayList<List<String>>();
		
		while(request.getParameter("county" + i) != null) {
				
			ArrayList<String> arry = new ArrayList<String>();
			
						String county = request.getParameter("county" + i);
						String location = request.getParameter("location" + i);
						String spaces = request.getParameter("spaces" + i);
						String locID = request.getParameter("locID" + i);
			
						arry.add(location);
						arry.add(county);
						arry.add(spaces);
						arry.add(locID);
			
						System.out.println(arry);
						
						upList.add(arry);
			
			i++;
		}
		
		eventDAO.updateLoactionInfo(upList);
		
		//Add new Locations
		String strNumLocs = request.getParameter("numLocs");
		int numLocs = Integer.parseInt(strNumLocs);

		 System.out.println("The number of Lcoas are " + numLocs);
		// https://www.javacodeexamples.com/java-arraylist-of-arrays-example/1003
		// create an arraylist of Arrays

		ArrayList<List<String>> aList = new ArrayList<List<String>>();

		for(int a = 1; a < numLocs + 1; a++) {
   		//System.out.println("county  is " + request.getParameter("locSelect" + a));
    	//	System.out.println("Location  is " + request.getParameter("locTxt" + a));

			ArrayList<String> arr = new ArrayList<String>();

			String county = request.getParameter("locSelect" + a);
			String location = request.getParameter("locTxt" + a);
			String spaces = request.getParameter("locSpaces" + a);

			arr.add(location);
			arr.add(county);
			arr.add(spaces);

			aList.add(arr);

			System.out.println(arr);
		}

		if(numLocs >= 1) {
			eventDAO.addNewUpdateEvent(eventID, aList);
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("AdminHome");
	    rd.forward(request, response);
	    
//    for(int i = 0; i < aList.size(); i++){
//		for(int j = 0; j < 2 ; j++){
//			System.out.print(aList.get(i).get(j));
//		}
//	System.out.println("");
//    }

		// MAin code commented
		// out********************************************************

		// get the fist two values for loc and county

//		String countyN = request.getParameter("countyN");
//		String locN = request.getParameter("locationN");
//		String strSpacesN = request.getParameter("spacesN");
//		int spacesN = Integer.parseInt(strSpacesN);
//
//		
		/// Importan t*********************************************************
		// int primaryKey = eventDAO.addEventDets(eventName,createdBy, eventDate,
		/// startTime, endTime, img, description);

		// System.out.println("Primary Key is " + primaryKey);
		// int primaryKey, String county, String location, ArrayList<List<String>> aList

		// eventDAO.setEventLocations(primaryKey,countyN, locN, spacesN, aList);
// 		
// 		System.out.println(eventName);	
// 		System.out.println(eventDate);
// 		System.out.println(startTime);
// 		System.out.println(endTime);
// 		System.out.println(img);
// 		System.out.println(description);
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
