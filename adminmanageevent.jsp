<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Manage Events</title>
<link rel="shortcut icon" type="image/png"
	href="assets/images/Logo PNG.png" />
<link rel="stylesheet" href="assets/css/styles.min.css" />
</head>
<body>
	<br>
	<br>
	<br>
	<div class="row">

		<div class="card w-100">
			<div class="card-body p-4">
				<h5 class="card-title fw-semibold mb-4">Manage Events</h5>
				<div class="table-responsive">

					<table class="table text-nowrap mb-0 align-middle">

						<thead class="text-dark fs-4">
							<tr>
								<th class="border-bottom-0">
									<h6 class="fw-semibold mb-0">Event Id</h6>
								</th>
								<th class="border-bottom-0">
									<h6 class="fw-semibold mb-0">Event Name</h6>
								</th>
								<th class="border-bottom-0">
									<h6 class="fw-semibold mb-0">Category</h6>
								</th>
								<th class="border-bottom-0">
									<h6 class="fw-semibold mb-0">Average Quotation</h6>
								</th>
								<th class="border-bottom-0">
									<h6 class="fw-semibold mb-0">Ratings</h6>
								</th>
								<th class="border-bottom-0">
									<h6 class="fw-semibold mb-0">Offers</h6>
								</th>
								<th class="border-bottom-0">
									<h6 class="fw-semibold mb-0">Action</h6>
								</th>
							</tr>

							<c:forEach var="eve" items="${eventDetails}">
								<c:set var="eventId" value="${eve.eventId}" />
								<c:set var="eventName" value="${eve.eventName}" />
								<c:set var="category" value="${eve.category}" />
								<c:set var="avgQuotation" value="${eve.avgQuotation}" />
								<c:set var="ratings" value="${eve.ratings}" />
								<c:set var="offers" value="${eve.offers}" />
								<tr>
									<td class="border-bottom-0"><h6 class="fw-semibold mb-0">${eve.eventId}</h6></td>
									<td class="border-bottom-0"><h6 class="fw-semibold mb-0">${eve.eventName}</h6></td>
									<td class="border-bottom-0"><h6 class="fw-semibold mb-0">${eve.category}</h6></td>
									<td class="border-bottom-0"><h6 class="fw-semibold mb-0">${eve.avgQuotation}</h6></td>
									<td class="border-bottom-0"><h6 class="fw-semibold mb-0">${eve.ratings}</h6></td>
									<td class="border-bottom-0"><h6 class="fw-semibold mb-0">${eve.offers}</h6></td>



									<c:url value="updateevent.jsp" var="eupdate">

										<c:param name="eventId" value="${eve.eventId}" />
										<c:param name="eventName" value="${eve.eventName}" />
										<c:param name="category" value="${eve.category}" />
										<c:param name="avgQuotation" value="${eve.avgQuotation}" />
										<c:param name="ratings" value="${eve.ratings}" />
										<c:param name="offers" value="${eve.offers}" />

									</c:url>

									<th><a href="${eupdate}"><input type="submit"
											name="update" class="btn btn-primary" Value="Update"></a></th>

									<form action="EventDeleteServlet" method="post">

										<input type="hidden" name="id" value="${eventId}">

										<th><input type="submit" name="delete"
											class="btn btn-primary" Value="Delete"></th>
									</form>
								</tr>
							</c:forEach>

						</thead>
						<tbody>

						</tbody>
					</table>
				</div>
			</div>
		</div>

	</div>
	<a href="dashboard.jsp"><input type="submit" name="events"
		class="btn btn-primary" Value="Back"></a>
	<script src="assets/libs/jquery/dist/jquery.min.js"></script>
	<script src="assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/app.min.js"></script>
	<script src="assets/libs/apexcharts/dist/apexcharts.min.js"></script>

</body>
</html>