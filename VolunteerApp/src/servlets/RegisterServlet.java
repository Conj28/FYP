

package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDAO;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	            throws Exception {
		 
		 String firstName = request.getParameter("firstName");
		 String lastName = request.getParameter("lastName");
		 String email = request.getParameter("email");
		 String phone = request.getParameter("phone");
		 String address = request.getParameter("address");
		 String town = request.getParameter("town");
		 String county = request.getParameter("location");
		 String password = request.getParameter("password");
		 
		 
		 UserDAO userDAO = new UserDAO();
		 userDAO.registerUser(firstName, lastName, email, phone, address, town, county, password);
		 
		 RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
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
