package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/addEventServlet")
public class addEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
    		
    	
    		
    	String strNumLocs = request.getParameter("numLocs");
    	
    	int numLocs = Integer.parseInt(strNumLocs);
    	
    	//System.out.println("The number of Lcoas are " + numLocs);
    	
    
    	
 	for(int i = 1; i < numLocs + 1 ; i++){
   		System.out.println("county  is " + request.getParameter("locSelect" + i));
    		System.out.println("Location  is " + request.getParameter("locTxt" + i));
    	}
    	
    		
    		
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
