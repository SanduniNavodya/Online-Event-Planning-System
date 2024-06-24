package com.event;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EventUpdateServlet")
public class EventUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String event_Id = request.getParameter("event_Id");
		String eventName = request.getParameter("event_Name");
		String eventCategory = request.getParameter("category");
		String eventAvgQuotation = request.getParameter("avg_Quotation");
		String eventRatings = request.getParameter("ratings");
		String eventOffers = request.getParameter("offers");

		boolean isTrue;

		isTrue = EventDButil.updateEvent(event_Id, eventName, eventCategory, eventAvgQuotation, eventRatings,
				eventOffers);

		if (isTrue == true) {

			List<Event> eventDetails = EventDButil.getEvent();
			request.getSession().setAttribute("eventDetails", eventDetails);

			RequestDispatcher dis = request.getRequestDispatcher("adminmanageevent.jsp");
			dis.forward(request, response);

		} else {

			List<Event> eventDetails = EventDButil.getEvent();
			request.getSession().setAttribute("eventDetails", eventDetails);

			RequestDispatcher dis = request.getRequestDispatcher("adminmanageevent.jsp");
			dis.forward(request, response);
		}
	}

}
