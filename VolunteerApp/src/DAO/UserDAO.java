package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
				
			return tempUser;}
}
}
