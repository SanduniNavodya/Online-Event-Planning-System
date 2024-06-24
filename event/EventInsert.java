package com.event;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EventInsert")
public class EventInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		String EventName = request.getParameter("event_Name");
		String eventCategory = request.getParameter("category");
		String eventAvgQuotation = request.getParameter("avg_Quotation");
		String eventRatings = request.getParameter("ratings");
		String eventOffers = request.getParameter("offers");

		boolean isTrue;
		isTrue = EventDButil.addEvent(EventName, eventCategory, eventAvgQuotation, eventRatings, eventOffers);

		if (isTrue == true) {

			List<Event> eventDetails = EventDButil.getEvent();
			request.getSession().setAttribute("eventDetails", eventDetails);

			RequestDispatcher dis = request.getRequestDispatcher("adminmanageevent.jsp");
			dis.forward(request, response);

		} else {

			List<Event> eventDetails = EventDButil.getEvent();
			request.getSession().setAttribute("evengtDetails", eventDetails);

			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
