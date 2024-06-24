<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Update Events</title>
<link rel="shortcut icon" type="image/png"
	href="assets/images/Logo PNG.png" />
<link rel="stylesheet" href="assets/css/styles.min.css" />

<%
String eventId = request.getParameter("eventId");
String eventName = request.getParameter("eventName");
String eventCategory = request.getParameter("category");
String eventAvgQuotation = request.getParameter("avgQuotation");
String eventRatings = request.getParameter("ratings");
String eventOffers = request.getParameter("offers");
%>

</head>
<body>
<body>
	<div class="container-fluid">
		<div class="container-fluid">
			<div class="card">
				<div class="card-body">
					<h4 class="card-title fw-semibold mb-4">Update Events</h4>
					<div class="card">
						<div class="card-body">
							<form action="EventUpdateServlet" method="post">

								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Event
										Id</label> <input type="text" class="form-control" id="event_Id"
										name="event_Id" value="<%=eventId%>"
										aria-describedby="emailHelp" required readonly>
								</div>
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Event
										Name</label> <input type="text" class="form-control" id="event_Name"
										name="event_Name" value="<%=eventName%>"
										aria-describedby="emailHelp" required>
								</div>
								<div class="mb-3">
									<label for="disabledSelect" class="form-label">Event
										Category</label> <select class="form-select" id="category"
										aria-label="Default select example" name="category"
										value="<%=eventCategory%>">
										<option selected>Select Event Category</option>
										<option value="Wedding Ceremony">Wedding Ceremony</option>
										<option value="Birthday Party">Birthday Party</option>
										<option value="Graduation Ceremony">Graduation
											Ceremony</option>
										<option value="Music Event">Music Event</option>
										<option value="Batch Reunions">Batch Reunions</option>
										<option value="Corporate Conference">Corporate
											Conference</option>
									</select>
								</div>
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Average
										Quotation</label> <input type="number" class="form-control"
										id="avg_Quotation" name="avg_Quotation"
										value="<%=eventAvgQuotation%>" aria-describedby="emailHelp"
										required>
								</div>
								<div class="mb-3">
									<label for="disabledSelect" class="form-label">Ratings</label>
									<select class="form-select" id="ratings"
										aria-label="Default select example" name="ratings"
										value="<%=eventRatings%>">
										<option selected>Select Ratings</option>
										<option value="Excellent">Excellent</option>
										<option value="Good">Good</option>
										<option value="Bad">Bad</option>
									</select>
								</div>
								<div class="mb-3">
									<label for="disabledSelect" class="form-label">Offers</label> <select
										class="form-select" id="offers"
										aria-label="Default select example" name="offers"
										value="<%=eventOffers%>">
										<option selected>Select offers</option>
										<option value="Available">Available</option>
										<option value="Not Available">Not Available</option>
									</select>
								</div>

								<button type="submit" class="btn btn-primary">Update
									Event</button>
							</form>
							<br>
							<a href="dashboard.jsp"><input type="submit"
								class="btn btn-primary" name="events" Value="Back"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="assets/libs/jquery/dist/jquery.min.js"></script>
	<script src="assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/app.min.js"></script>
	<script src="assets/libs/apexcharts/dist/apexcharts.min.js"></script>
</body>
</html>