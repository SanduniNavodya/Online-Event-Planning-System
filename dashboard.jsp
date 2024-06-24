<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="shortcut icon" type="image/png"
	href="assets/images/Logo PNG.png" />
<link rel="stylesheet" href="assets/css/styles.min.css" />
</head>
<body>

	<h1>View Event</h1>

	<form action="AddEventServlet" method="post">
		<input type="submit" name="events" Value="View Events"
			class="btn btn-primary">

	</form>

	<br>
	<a href="add.jsp"><input type="submit" name="events"
		Value="Add Event" class="btn btn-primary"></a>

	<script src="assets/libs/jquery/dist/jquery.min.js"></script>
	<script src="assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/app.min.js"></script>
	<script src="assets/libs/apexcharts/dist/apexcharts.min.js"></script>
</body>
</html>