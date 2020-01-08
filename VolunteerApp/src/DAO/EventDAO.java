package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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

}
