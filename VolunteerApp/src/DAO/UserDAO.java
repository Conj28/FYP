package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import javaClass.Event;
import javaClass.User;
import utils.DBManager;

public class UserDAO {

	
	public User login(String emailInput, String passwordInput) throws Exception {
		
		int userID;
		String firstName;
		 String lastName;
		 String email;
		 String phone;
		 String address;
		 String town; 
		 String county; 
		 String vetted;
		 String role;
		
		 DBManager dbmgr = new DBManager();
			Connection conn = dbmgr.getConnection();

			String query = "Select Distinct* From Users where UPPER(Email) = UPPER('"+emailInput+"') and Password = HASHBYTES('SHA2_512','"+passwordInput+"')"; 
		
			User tempUser = new User();
			try {
				PreparedStatement stmt = conn.prepareStatement(query);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					System.out.println("get Specific Event !!!*");
					userID = (rs.getInt(1));
					firstName = (rs.getString(2));
					lastName = (rs.getString(3));
					email= (rs.getString(4));
					phone = (rs.getString(5));
					address= (rs.getString(6));
					town = (rs.getString(7));
					county = (rs.getString(8));
					vetted = (rs.getString(9));
					role = (rs.getString(10));

					tempUser.setUserID(userID);
					tempUser.setFirstName(firstName);
					tempUser.setLastName(lastName);
					tempUser.setEmail(email);
					tempUser.setPhone(phone);
					tempUser.setAddress(address);
					tempUser.setTown(town);
					tempUser.setCounty(county);
					tempUser.setVetted(vetted);
					tempUser.setRole(role);

				}

			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println("gettig Event not working :( ");
			}
			
			if(tempUser.getFirstName() == null) {
				return null;
			} else {
				
			return tempUser;}
			
	}
	
	
	public void registerUser(String firstName, String lastName, String email, String phone, String address, String town, String county, String password) throws Exception {
		
		DBManager dbmgr = new DBManager();
		Connection conn = dbmgr.getConnection();

		String query = "INSERT INTO Users(First_Name, Last_Name, Email, Phone, Address, Town, County, Vetted, User_Role, Password) Values"
				+ "('"+ firstName+"', '"+lastName+"', '" +email +"', '"+phone+"', '"+address+"', '"+ town+"', '"+ county +"', 'N', 1, HASHBYTES('SHA2_512','"+password+"') )";
	
		try {
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.execute();
            System.out.println("Register Working!!!");
        }catch(SQLException e){
            System.out.println("Register Not Working  :( ");
             e.printStackTrace();
        }
		
	}
	
	public void updateUser(String firstName,String lastName,String  email,String phone,String address,String town,String county) throws Exception {
		
		DBManager dbmgr = new DBManager();
		Connection conn = dbmgr.getConnection();
		
		String query = "Update Users set First_Name = '"+ firstName+"', Last_Name = '"+lastName+"', phone = '"+phone+"', Address = '"+address+"', Town = '"+ town+"', county = '"+ county +"' WHERE email = '" +email +"' ";
		
		try {
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.execute();
            System.out.println("Update user  Working!!!");
        }catch(SQLException e){
            System.out.println("Update user Not Working  :( ");
             e.printStackTrace();
        }
		
	}
	
	
public User getUpdateInfo(String emailInput) throws Exception {
		
		int userID;
		String firstName;
		 String lastName;
		 String email;
		 String phone;
		 String address;
		 String town; 
		 String county; 
		 String vetted;
		 String role;
		
		 DBManager dbmgr = new DBManager();
			Connection conn = dbmgr.getConnection();

			String query = "Select Distinct* From Users where UPPER(Email) = UPPER('"+emailInput+"')"; 
		
			User tempUser = new User();
			try {
				PreparedStatement stmt = conn.prepareStatement(query);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					System.out.println("get Specific Event !!!*");
					userID = (rs.getInt(1));
					firstName = (rs.getString(2));
					lastName = (rs.getString(3));
					email= (rs.getString(4));
					phone = (rs.getString(5));
					address= (rs.getString(6));
					town = (rs.getString(7));
					county = (rs.getString(8));
					vetted = (rs.getString(9));
					role = (rs.getString(10));

					tempUser.setUserID(userID);
					tempUser.setFirstName(firstName);
					tempUser.setLastName(lastName);
					tempUser.setEmail(email);
					tempUser.setPhone(phone);
					tempUser.setAddress(address);
					tempUser.setTown(town);
					tempUser.setCounty(county);
					tempUser.setVetted(vetted);
					tempUser.setRole(role);

				}
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println("gettig Event not working :( ");
			}
			
			if(tempUser.getFirstName() == null) {
				return null;
			} else {
			return tempUser;
			}
			
}


public Vector<User> GetAllVolunteersforEvent(int id) throws Exception {

	String firstName = "";
	String lastName = "";
	String email = "";
	String phone = "";
	String start = "";
	String end = "";
	String location = "";
	 
		Vector<User> eventData = new Vector();

		DBManager dbmgr = new DBManager();
		Connection conn = dbmgr.getConnection();

		//https://stackoverflow.com/questions/28872787/how-to-get-current-todays-date-data-in-sql-server
		String query = "Select u.First_Name, u.Last_Name, u.Email, u.Phone, Left(e.Available_start,5), LEFT(e.Available_End,5), l.Location\r\n" + 
				"FROM Users u \r\n" + 
				"inner join Event e on u.Users_ID = e.Users_ID \r\n" + 
				"inner join Event_Loc l on e.Event_Loc_ID = l.Event_Loc_ID \r\n"+ 
				"where e.Event_Det_ID = "+id+" ";

		try {
			PreparedStatement stmt = conn.prepareStatement(query);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				
				firstName = rs.getString(1);
				lastName = rs.getString(2);
				email = rs.getString(3);
				phone = rs.getString(4);
				start = rs.getString(5);
				end = rs.getString(6);
				location = rs.getString(7);

				User tempUser = new User();
				tempUser.setFirstName(firstName);
				tempUser.setLastName(lastName);
				tempUser.setEmail(email);
				tempUser.setPhone(phone);
				tempUser.setStart(start);
				tempUser.setEnd(end);
				tempUser.setLocation(location);
				

				eventData.add(tempUser);
			}

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("GetAllVolunteersforEvent broken :( ");
		}
		return eventData;
 
 }

public Vector<User> GetAllVolunteersforEventTime(int id, String time) throws Exception {

	String firstName = "";
	String lastName = "";
	String email = "";
	String phone = "";
	String start = "";
	String end = "";
	String location = "";
	 
		Vector<User> eventData = new Vector();

		DBManager dbmgr = new DBManager();
		Connection conn = dbmgr.getConnection();

		//https://stackoverflow.com/questions/28872787/how-to-get-current-todays-date-data-in-sql-server
		String query = "Select u.First_Name, u.Last_Name, u.Email, u.Phone, Left(e.Available_start,5), LEFT(e.Available_End,5), l.Location\r\n" + 
				"FROM Users u\r\n" + 
				"inner join Event e on u.Users_ID = e.Users_ID\r\n" + 
				"inner join Event_Loc l on e.Event_Loc_ID = l.Event_Loc_ID\r\n" + 
				"where e.Event_Det_ID = "+id+"\r\n" + 
				"and Available_Start <= '"+time+"' and '"+time+"' < Available_End  ";

		try {
			PreparedStatement stmt = conn.prepareStatement(query);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				
				firstName = rs.getString(1);
				lastName = rs.getString(2);
				email = rs.getString(3);
				phone = rs.getString(4);
				start = rs.getString(5);
				end = rs.getString(6);
				location = rs.getString(7);

				User tempUser = new User();
				tempUser.setFirstName(firstName);
				tempUser.setLastName(lastName);
				tempUser.setEmail(email);
				tempUser.setPhone(phone);
				tempUser.setStart(start);
				tempUser.setEnd(end);
				tempUser.setLocation(location);
				

				eventData.add(tempUser);
			}

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("gettig Event not working :( ");
		}
		return eventData;
 
 }

public Vector<User> GetAllVolunteersforEventLoc(int id, int loc) throws Exception {

	String firstName = "";
	String lastName = "";
	String email = "";
	String phone = "";
	String start = "";
	String end = "";
	String location = "";
	 
		Vector<User> eventData = new Vector();

		DBManager dbmgr = new DBManager();
		Connection conn = dbmgr.getConnection();

		//https://stackoverflow.com/questions/28872787/how-to-get-current-todays-date-data-in-sql-server
		String query = "Select u.First_Name, u.Last_Name, u.Email, u.Phone, Left(e.Available_start,5), LEFT(e.Available_End,5), l.Location\r\n" + 
				"FROM Users u\r\n" + 
				"inner join Event e on u.Users_ID = e.Users_ID\r\n" + 
				"inner join Event_Loc l on e.Event_Loc_ID = l.Event_Loc_ID\r\n" + 
				"where e.Event_Det_ID = "+id+"\r\n" + 
				"and e.event_Loc_ID = "+loc+" ";

		try {
			PreparedStatement stmt = conn.prepareStatement(query);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				
				firstName = rs.getString(1);
				lastName = rs.getString(2);
				email = rs.getString(3);
				phone = rs.getString(4);
				start = rs.getString(5);
				end = rs.getString(6);
				location = rs.getString(7);

				User tempUser = new User();
				tempUser.setFirstName(firstName);
				tempUser.setLastName(lastName);
				tempUser.setEmail(email);
				tempUser.setPhone(phone);
				tempUser.setStart(start);
				tempUser.setEnd(end);
				tempUser.setLocation(location);
				

				eventData.add(tempUser);
			}

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("gettig Event not working :( ");
		}
		return eventData;
 
 }


public Vector<User> GetAllVolunteersforEventLocTime(int id, int loc, String time) throws Exception {

	String firstName = "";
	String lastName = "";
	String email = "";
	String phone = "";
	String start = "";
	String end = "";
	String location = "";
	 
		Vector<User> eventData = new Vector();

		DBManager dbmgr = new DBManager();
		Connection conn = dbmgr.getConnection();

		//https://stackoverflow.com/questions/28872787/how-to-get-current-todays-date-data-in-sql-server
		String query = "Select u.First_Name, u.Last_Name, u.Email, u.Phone, Left(e.Available_start,5), LEFT(e.Available_End,5), l.Location\r\n" + 
				"FROM Users u\r\n" + 
				"inner join Event e on u.Users_ID = e.Users_ID\r\n" + 
				"inner join Event_Loc l on e.Event_Loc_ID = l.Event_Loc_ID\r\n" + 
				"where e.Event_Det_ID = "+id+"\r\n" + 
				"and e.event_Loc_ID = "+loc+"\r\n" +
				"and Available_Start <= '"+time+"' and '"+time+"' < Available_End ";

		try {
			PreparedStatement stmt = conn.prepareStatement(query);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				
				firstName = rs.getString(1);
				lastName = rs.getString(2);
				email = rs.getString(3);
				phone = rs.getString(4);
				start = rs.getString(5);
				end = rs.getString(6);
				location = rs.getString(7);

				User tempUser = new User();
				tempUser.setFirstName(firstName);
				tempUser.setLastName(lastName);
				tempUser.setEmail(email);
				tempUser.setPhone(phone);
				tempUser.setStart(start);
				tempUser.setEnd(end);
				tempUser.setLocation(location);
				

				eventData.add(tempUser);
			}

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("gettig Event not working :( ");
		}
		return eventData;
 
 }


}
