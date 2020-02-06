package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDAO;
import javaClass.User;

/**
 * Servlet implementation class updatUserDetailsServlet
 */
@WebServlet("/updatUserDetailsServlet")
public class updatUserDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	            throws Exception {
		 
		 String firstName = request.getParameter("firstName");
		 String lastName = request.getParameter("lastName");
		 String email = request.getParameter("email");
		 String phone = request.getParameter("phone");
		 String address = request.getParameter("address");
		 String town = request.getParameter("town");
		 String county = request.getParameter("countySelect");
		 //String password = request.getParameter("password");
		 
		 System.out.println("THese are the values ******************");
		 System.out.println(firstName);
		 System.out.println(lastName);
		 System.out.println(email);
		 System.out.println(phone);
		 System.out.println(address);
		 System.out.println(town);
		 System.out.println(county);
		 System.out.println("END*************************************************8");
		 
		 
		 UserDAO userDAO = new UserDAO();
		 userDAO.updateUser(firstName, lastName, email, phone, address, town, county);
		 
		 User user = userDAO.getUpdateInfo(email);
		 
		 System.out.println("The Email is ******************* "+ user.getFirstName());
		 
		 request.getSession(true).setAttribute("User", user);
		 
		 RequestDispatcher rd = request.getRequestDispatcher("getUserEventsServlet");
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

