package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import javaClass.Event;
import utils.DBManager;

public class EventDAO {

	// change exc
	public Vector<Event> getAllEvents() throws Exception {

		int eventDetID = 0;
		String name = "";
		int createdBy = 0;
		String eventDate = "";
		String startTime = "";
		String endTime = "";
		int numberDays = 0;
		String img = "";
		String details = "";

		Vector<Event> eventData = new Vector();

		DBManager dbmgr = new DBManager();
		Connection conn = dbmgr.getConnection();

		// https://stackoverflow.com/questions/9126246/date-conversion-issue-yyyy-mm-dd-to-dd-mm-yyyy/9126277
		String query = "SELECT [Event_Det_ID]\r\n" + "      ,[Name]\r\n" + "      ,[Created_By]\r\n"
				+ "      ,CONVERT(VARCHAR(10), [Event_Date], 103)\r\n" + "      ,LEFT([Start_Time],5)\r\n"
				+ "      ,LEFT([End_Time],5)\r\n" + "      ,[Number_Days]\r\n" + "      ,[img]\r\n"
				+ "      ,[Details]\r\n" + "  FROM [app].[dbo].[Event_Det]";

		try {
			PreparedStatement stmt = conn.prepareStatement(query);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				System.out.println("it got here !!!");
				eventDetID = (rs.getInt(1));
				name = (rs.getString(2));
				createdBy = (rs.getInt(3));
				eventDate = (rs.getString(4));
				startTime = (rs.getString(5));
				endTime = (rs.getString(6));
				numberDays = (rs.getInt(7));
				img = (rs.getString(8));
				details = (rs.getString(9));

				Event tempEvent = new Event();
				tempEvent.setEventDetID(eventDetID);
				tempEvent.setName(name);
				tempEvent.setCreatedBy(createdBy);
				tempEvent.setEventDate(eventDate);
				tempEvent.setStartTime(startTime);
				tempEvent.setEndTime(endTime);
				tempEvent.setNumberDays(numberDays);
				tempEvent.setImg(img);
				// tempEvent.setDetails(details);

				eventData.add(tempEvent);
			}

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("gettig Event not working :( ");
		}
		return eventData;

	}

	// show Filtered Events
	public Vector<Event> getFilteredEvents(String loc) throws Exception {

		int eventDetID = 0;
		String name = "";
		int createdBy = 0;
		String eventDate = "";
		String startTime = "";
		String endTime = "";
		int numberDays = 0;
		String img = "";
		String details = "";

		Vector<Event> eventData = new Vector();

		DBManager dbmgr = new DBManager();
		Connection conn = dbmgr.getConnection();

		//conveting date
		//https://www.mssqltips.com/sqlservertip/1145/date-and-time-conversions-using-sql-server/
		String query = "Select Distinct(E.Event_Det_ID), E.Name, E.Created_By, CONVERT(VARCHAR(10), E.Event_Date, 103), LEFT(E.Start_Time,5), LEFT(E.End_Time,5), E.Number_Days, E.img, E.Details From Event_Det E \r\n"
				+ "Inner join Event_Loc L on E.Event_Det_ID = L.Event_Det_ID\r\n" + "where L.County = '" + loc + "' ";

		try {
			PreparedStatement stmt = conn.prepareStatement(query);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				System.out.println("it got here !!!");
				eventDetID = (rs.getInt(1));
				name = (rs.getString(2));
				createdBy = (rs.getInt(3));
				eventDate = (rs.getString(4));
				startTime = (rs.getString(5));
				endTime = (rs.getString(6));
				numberDays = (rs.getInt(7));
				img = (rs.getString(8));
				details = (rs.getString(9));

				Event tempEvent = new Event();
				tempEvent.setEventDetID(eventDetID);
				tempEvent.setName(name);
				tempEvent.setCreatedBy(createdBy);
				tempEvent.setEventDate(eventDate);
				tempEvent.setStartTime(startTime);
				tempEvent.setEndTime(endTime);
				tempEvent.setNumberDays(numberDays);
				tempEvent.setImg(img);
				tempEvent.setDetails(details);

				eventData.add(tempEvent);
			}

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("gettig Event not working :( ");
		}
		return eventData;

	}

	// get the specific events
	public Event getSpecificEvent(int id) throws Exception {

		//keep start ans end time in place add to end of list only vector used 
		
		int eventDetID = 0;
		String name = "";
		int createdBy = 0;
		String eventDate = "";
		String startTime = "";
		String endTime = "";
		int numberDays = 0;
		String img = "";
		String details = "";

		DBManager dbmgr = new DBManager();
		Connection conn = dbmgr.getConnection();

		String query = "SELECT [Event_Det_ID]\r\n" + "      ,[Name]\r\n" + "      ,[Created_By]\r\n"
				+ "      ,CONVERT(VARCHAR(10), [Event_Date], 103)\r\n" + "      ,LEFT([Start_Time],5)\r\n"
				+ "      ,LEFT([End_Time],5)\r\n" + "      ,[Number_Days]\r\n" + "      ,[img]\r\n"
				+ "      ,[Details]\r\n" + "  FROM [app].[dbo].[Event_Det] Where Event_Det_ID = " + id + " ";

		Event tempEvent = new Event();
		try {
			PreparedStatement stmt = conn.prepareStatement(query);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				System.out.println("get Specific Event !!!*");
				eventDetID = (rs.getInt(1));
				name = (rs.getString(2));
				createdBy = (rs.getInt(3));
				eventDate = (rs.getString(4));
				startTime = (rs.getString(5));
				endTime = (rs.getString(6));
				numberDays = (rs.getInt(7));
				img = (rs.getString(8));
				details = (rs.getString(9));

				tempEvent.setEventDetID(eventDetID);
				tempEvent.setName(name);
				tempEvent.setCreatedBy(createdBy);
				tempEvent.setEventDate(eventDate);
				tempEvent.setStartTime(startTime);
				tempEvent.setEndTime(endTime);
				tempEvent.setNumberDays(numberDays);
				tempEvent.setImg(img);
				tempEvent.setDetails(details);

			}

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("gettig Event not working :( ");
		}
		return tempEvent;
	}

	public Vector<Event> getSpecificEventLocation(int id) throws Exception {
		int eventLocID = 0;
		String county = "";
		String location = "";

		Vector<Event> eventData = new Vector();

		DBManager dbmgr = new DBManager();
		Connection conn = dbmgr.getConnection();

		String query = "Select Event_Loc_ID, County, Location from Event_Loc where Event_Det_Id = '" + id + "' ";

		try {
			PreparedStatement stmt = conn.prepareStatement(query);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				System.out.println("it got here !!!");
				eventLocID = (rs.getInt(1));
				county = (rs.getString(2));
				location = (rs.getString(3));

				Event tempEvent = new Event();
				tempEvent.setEventLocID(eventLocID);
				tempEvent.setCounty(county);
				tempEvent.setLocation(location);

				eventData.add(tempEvent);
			}

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("gettig Event not working :( ");
		}
		return eventData;

	}

	public Vector<Event> getSpecificEventFilterLocation(int id, String counte) throws Exception {
		String county = "";
		String location = "";

		Vector<Event> eventData = new Vector();

		DBManager dbmgr = new DBManager();
		Connection conn = dbmgr.getConnection();

		String query = "Select County, Location from Event_Loc where Event_Det_Id = '" + id + " and County = '" + counte
				+ "' ";

		try {
			PreparedStatement stmt = conn.prepareStatement(query);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				System.out.println("it got here !!!");
				county = (rs.getString(1));
				location = (rs.getString(2));

				Event tempEvent = new Event();
				tempEvent.setCounty(county);
				tempEvent.setLocation(location);

				eventData.add(tempEvent);
			}

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("gettig Event not working :( ");
		}
		return eventData;

	}

	public Vector<Event> getUserEvents(int id) throws Exception {

		int eventDetID = 0;
		String name = "";
		String eventDate = "";
		String startTime = "";
		String endTime = "";
		String img = "";
		String details = "";
		String location = "";
		String county = "";
		String userStart = "";
		String userEnd = "";
		int eventID = 0;

		Vector<Event> eventData = new Vector();

		DBManager dbmgr = new DBManager();
		Connection conn = dbmgr.getConnection();

		// https://stackoverflow.com/questions/9126246/date-conversion-issue-yyyy-mm-dd-to-dd-mm-yyyy/9126277
		String query = "Select d.Event_Det_ID, d.Name, d.Event_Date, d.Start_Time, d.End_Time, d.Img, d.Details, l.Location, l.County, e.Available_Start, e.Available_END, e.Event_ID"
				+ " from Event e " + " inner join Event_Det d on e.Event_Det_ID = d.Event_Det_ID"
				+ " inner join Event_Loc l on e.Event_Loc_ID = l.Event_Loc_ID";

		try {
			PreparedStatement stmt = conn.prepareStatement(query);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				System.out.println("getting Specific User Events");
				eventDetID = (rs.getInt(1));
				name = (rs.getString(2));
				eventDate = (rs.getString(3));
				startTime = (rs.getString(4));
				endTime = (rs.getString(5));
				img = (rs.getString(6));
				details = (rs.getString(7));
				location = (rs.getString(8));
				county = (rs.getString(9));
				userStart = (rs.getString(10));
				userEnd = (rs.getString(11));
				eventID = (rs.getInt(12));

				Event tempEvent = new Event();
				tempEvent.setEventDetID(eventDetID);
				tempEvent.setName(name);
				tempEvent.setEventDate(eventDate);
				tempEvent.setStartTime(startTime);
				tempEvent.setEndTime(endTime);
				tempEvent.setImg(img);
				tempEvent.setDetails(details);
				tempEvent.setLocation(location);
				tempEvent.setCounty(county);
				tempEvent.setUserStart(userStart);
				tempEvent.setUserEnd(userEnd);
				tempEvent.setEventID(eventID);

				// tempEvent.setDetails(details);

				eventData.add(tempEvent);
			}

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("User Events Not Working ");
		}
		return eventData;

	}
	
	public void eventSignUp(int eventDetId, int userId, String startTime,String endTime,int locId) throws Exception{
		
		DBManager dbmgr = new DBManager();
		Connection conn = dbmgr.getConnection();
		
		//logic taken from 3rd year project
		String query = "Insert into Event(Event_Det_ID, Users_ID, Available_Start, Available_End, Event_Loc_ID)\r\n" + 
				"Values(" + eventDetId + ", " + userId + " , '"+ startTime +"' , '"+ endTime +"' , "+ locId +" )";
		
		 try {
	            PreparedStatement stmt = conn.prepareStatement(query);
	            stmt.execute();
	        }catch(SQLException e){
	            System.out.println("Error - Not able to sigup for event");
	             e.printStackTrace();
	        }
		
		
	}
	
	 public int addEventDets(String name, int createdBy, String date, String startTime, String endTime, String img, String description) throws Exception {
		 
		DBManager dbmgr = new DBManager();
		Connection conn = dbmgr.getConnection();
		 
		int primaryKey = 0;
 
		 String query = " INSERT INTO Event_Det (Name, Created_By, Event_Date, Start_Time, End_Time, img, Details) Output Inserted.Event_Det_ID "
				+ "Values('"+ name+"', "+ createdBy +" , '"+ date  +"', '"+ startTime +"', '"+endTime+"', '"+ img +"', '"+ description+"' )";
		 
		 try {
				PreparedStatement stmt = conn.prepareStatement(query);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					System.out.println("getting Specific User Events");
					primaryKey = (rs.getInt(1));
				}
		 } catch (SQLException e) {
				e.printStackTrace();
				System.out.println("ading Event Broken :( ");
				
			
			}
		 
		 return primaryKey;
		 
		 
		 
	 }
	 
	 public void setEventLocations(int primaryKey, String county, String location,int spaces, ArrayList<List<String>> aList) throws Exception  {
		 
		 StringBuilder sb = new StringBuilder("  Insert Into Event_Loc(Location, County, Event_Det_ID, Location_Manager, Available_Spaces)\r\n" + 
		 		"  Values('"+location+"', '"+county+"', "+primaryKey+", 3, "+spaces+" )");
		 
		 //https://stackoverflow.com/questions/47443404/how-to-iterate-through-an-arraylist-of-an-arraylist-of-strings
		 for(int i = 0; i < aList.size(); i++){
				for(int j = 0; j < 1 ; j++){
					
				String loc= aList.get(i).get(j);
				String con = aList.get(i).get(j + 1);
				String space = aList.get(i).get(j+2);
					
				sb.append(",('"+loc+"', '"+con+"', "+primaryKey+", 3, "+space+")");
				}
		}
		 
		 DBManager dbmgr = new DBManager();
		 Connection conn = dbmgr.getConnection();
		 
		 String query = sb.toString();
		 
		 try {
	            PreparedStatement stmt = conn.prepareStatement(query);
	            stmt.execute();
	        }catch(SQLException e){
	            System.out.println("Error - Not Adding locations for Event");
	             e.printStackTrace();
	        }
		 
		 
		 
		 
	 }

	 
	 public Vector<Event> getAvailability(int Event_id, List<String> timeList, List<String> endList) throws Exception{
		 
		 Vector<Event> availList = new Vector();
		 
		 DBManager dbmgr = new DBManager();
		Connection conn = dbmgr.getConnection();
		
		
		 
		 for(int i = 0; i < timeList.size(); i++) {
			 
			// String query = "Select Count(e.Users_ID) as Volunteers, l.Available_Spaces from Event e inner join Event_Loc l on e.Event_Loc_ID = l.Event_Loc_ID where e.Event_Loc_Id = "+Event_id+" and '"+timeList.get(i)+"' between e.Available_Start and e.Available_End group by l.Available_Spaces";
			 
			 
			String query ="Select (Select Count(Users_ID) from Event where event_Loc_ID = "+Event_id+" and Available_Start <= '"+timeList.get(i)+"' and '"+timeList.get(i)+"' < Available_End), Available_Spaces From Event_Loc where event_Loc_ID = "+Event_id+" ";
			 
			 try {
				 
				 Event tempAvail = new Event();
				 
					PreparedStatement stmt = conn.prepareStatement(query);
					ResultSet rs = stmt.executeQuery();
					while (rs.next()) {
						
						tempAvail.setAvailableSpaces(rs.getInt(1));
						tempAvail.setNumberSpaces(rs.getInt(2));
						tempAvail.setStartTime(timeList.get(i));
						tempAvail.setEndTime(endList.get(i));
					
						System.out.println(rs.getInt(1));
						System.out.println(timeList.get(i));
						
						availList.add(tempAvail);
					}
					
					
			 } catch (SQLException e) {
					e.printStackTrace();
					System.out.println("ading Event Broken :( ");
					 
		 }
		 
			 
	 }
		 return availList;
	 }
	 
	 
	 public Event getUpdateEventInfo(int id) throws Exception {
		 
		 Event tempEvent = new Event();
		 
		 DBManager dbmgr = new DBManager();
		Connection conn = dbmgr.getConnection();
			
		String query = "Select Name, Created_By, Event_Date, LEFT(Start_Time,5), LEFT(End_Time,5), img, Details from Event_Det where Event_Det_Id = "+ id +" ";

		PreparedStatement stmt = conn.prepareStatement(query);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			tempEvent.setName(rs.getString(1));
			tempEvent.setCreatedBy(rs.getInt(2));
			tempEvent.setEventDate(rs.getString(3));
			tempEvent.setStartTime(rs.getString(4));
			tempEvent.setEndTime(rs.getString(5));
			tempEvent.setImg(rs.getString(6));
			tempEvent.setDetails(rs.getString(7));
		
		}
		
		return tempEvent; 
	 }
	 
	 public Vector<Event> getUpdateLocaitons(int id) throws Exception{
		 
		 Vector<Event> eventData = new Vector();

			DBManager dbmgr = new DBManager();
			Connection conn = dbmgr.getConnection();
			
		
			
			
			String county = "";
			String loc = "";
			int avail = 0;
			
			
			int i = 0;
			
			String query = "Select lower(County), Location, Available_Spaces from Event_Loc where Event_Det_Id = " +id+ " ";
			

			PreparedStatement stmt = conn.prepareStatement(query);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				
				county = rs.getString(1);
				loc = rs.getString(2);
				avail = rs.getInt(3);
				
				Event tempEvent = new Event();
				
				tempEvent.setCounty(county);
				tempEvent.setLocation(loc);
				tempEvent.setAvailableSpaces(avail);
				tempEvent.setNumberDays(i);
				
				i++;
				
				System.out.println(county);
				System.out.println(loc);
				System.out.println(avail);
				
				eventData.add(tempEvent);
			}
		 return eventData;
	 }
}
