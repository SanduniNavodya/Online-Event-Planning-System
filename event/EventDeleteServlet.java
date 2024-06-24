package com.event;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EventDeleteServlet")
public class EventDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String event_Id = request.getParameter("id");

		boolean isTrue = false;

		isTrue = EventDButil.deleteEvent(event_Id);

		if (isTrue == true) {

			List<Event> eventDetails = EventDButil.getEvent();
			request.getSession().setAttribute("eventDetails", eventDetails);

			RequestDispatcher dis = request.getRequestDispatcher("dashboard.jsp");
			dis.forward(request, response);
		} else {

			List<Event> eventDetails = EventDButil.getEvent();
			request.getSession().setAttribute("eventDetails", eventDetails);

			RequestDispatcher dis = request.getRequestDispatcher("dashboard.jsp");
			dis.forward(request, response);
		}
	}

}
