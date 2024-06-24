package com.event;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EventDButil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static List<Event> getEvent() {

		List<Event> events = new ArrayList<>();

		try {

			Connection con = EventDBConnect.getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM event");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				int eventId = rs.getInt(1);
				String eventName = rs.getString(2);
				String category = rs.getString(3);
				int avgQuotation = rs.getInt(4);
				String ratings = rs.getString(5);
				String offers = rs.getString(6);

				System.out.println("Redy to Update event DB util add event name Val  = '" + eventName + "'");
				System.out.println("Redy to Update event DB util add event category Val  = '" + category + "'");
				Event eve = new Event(eventId, eventName, category, avgQuotation, ratings, offers);
				events.add(eve);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return events;
	}

	public static boolean addEvent(String eventName, String eventCategory, String eventAvgQuotation,
			String eventRatings, String eventOffers) {

		boolean isitSuccess = false;

		try {
			con = EventDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into events.event values (0,'" + eventName + "','" + eventCategory + "','"
					+ eventAvgQuotation + "','" + eventRatings + "','" + eventOffers + "')";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isitSuccess = true;
			} else {
				isitSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isitSuccess;
	}

	public static boolean deleteEvent(String event_Id) {

		boolean isSuccess = false;
		System.out.println("Delete Class String Id val  = '" + event_Id + "'");
		int event_Ids = Integer.parseInt(event_Id);
		System.out.println("Delete Class Converted INT Id val  =  '" + event_Ids + "'");

		try {

			con = EventDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from events.event where eventId='" + event_Ids + "'";
			int r = stmt.executeUpdate(sql);

			if (r > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	public static boolean updateEvent(String event_Id, String eventName, String eventCategory, String eventAvgQuotation,
			String eventRatings, String eventOffers) {

		boolean isSuccess = false;
		try {

			int event_Idn = Integer.parseUnsignedInt(event_Id);

			con = EventDBConnect.getConnection();
			stmt = con.createStatement();
			System.out.println("Passed Value to Update UTIL Servlet = '" + event_Id + "'");
			System.out.println("Passed Value to Update UTIL Servlet = '" + eventName + "'");
			String sql = "UPDATE event SET " + "eventName = '" + eventName + "', " + "category = '" + eventCategory
					+ "', " + "avgQuotation = '" + eventAvgQuotation + "', " + "ratings = '" + eventRatings + "', "
					+ "offers = '" + eventOffers + "' " + "WHERE eventId = '" + event_Idn + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
				System.out.println("Display If Update Sucsess = '" + event_Id + "'");
			} else {
				System.out.println("Display If Update UnSucsess FAIL = '" + event_Id + "'");
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

}
