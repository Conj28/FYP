package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.EventDAO;


@WebServlet("/addEventServlet")
public class addEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
    		
    		
    	
    		
    	String strNumLocs = request.getParameter("numLocs");
    	
    	int numLocs = Integer.parseInt(strNumLocs);
    	
    	
    	
    	//System.out.println("The number of Lcoas are " + numLocs);	
    	
    	//https://www.javacodeexamples.com/java-arraylist-of-arrays-example/1003
    	//create an arraylist of Arrays 

    		ArrayList<List<String>> aList = new ArrayList<List<String>>();
    		
 	
    for(int i = 1; i < numLocs + 1 ; i++){
//   		System.out.println("county  is " + request.getParameter("locSelect" + i));
//    		System.out.println("Location  is " + request.getParameter("locTxt" + i));
    	
    	ArrayList<String> arr  = new ArrayList<String>();
    	
    	String county = request.getParameter("locSelect" + i);
    	String location = request.getParameter("locTxt" + i);
    		
    	arr.add(location);
    	arr.add(county);
    	
    	aList.add(arr);
    		
    	}
    
    	
//    for(int i = 0; i < aList.size(); i++){
//		for(int j = 0; j < 2 ; j++){
//			System.out.print(aList.get(i).get(j));
//		}
//	System.out.println("");
//    }
    
    
    //MAin code commented out********************************************************
    	 
    
    
    	//get the event Details bar location 
 		String eventName = request.getParameter("eventName");
 		String eventDate = request.getParameter("date");
 		String strcreatedBy = request.getParameter("loggedInUser");
 		int createdBy  =Integer.parseInt(strcreatedBy);
 		String startTime = request.getParameter("startTime");
 		String endTime = request.getParameter("endTime");
 		String img = request.getParameter("img");
 		String description = request.getParameter("description");
 		
 		//get the fist two values for loc and county 
 		
 		
 		
    
 		String countyN = request.getParameter("countyN");
		String locN = request.getParameter("locationN");
		
 		
 		EventDAO eventDAO = new EventDAO();
 	
 		
 		///Importan t*********************************************************
 		int primaryKey = eventDAO.addEventDets(eventName,createdBy, eventDate, startTime, endTime, img, description);
    
 	
 	
 	
 	//System.out.println("Primary Key is " + primaryKey);
 	//int primaryKey, String county, String location, ArrayList<List<String>> aList
 	
 	eventDAO.setEventLocations(primaryKey,countyN, locN, aList);
// 		
// 		System.out.println(eventName);	
// 		System.out.println(eventDate);
// 		System.out.println(startTime);
// 		System.out.println(endTime);
// 		System.out.println(img);
// 		System.out.println(description);
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
