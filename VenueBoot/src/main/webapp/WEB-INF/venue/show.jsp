<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<meta charset="UTF-8">
<title><strong>Venue Information</strong></title>
</head>
<body>
	<div class="container-fluid">
		<div>
			<h1 style="color: blue;">${venue.name}</h1>

			<p>
				<strong>Venue ID# </strong>${venue.id}</p>
			<p>
				<strong>Address: </strong>${venue.address} ${venue.city}
				${venue.state} ${venue.zip}
				</p.>
			<p>
				<strong>Type: </strong>${venue.environment}</p>
			<p>
				<strong>Seating Capacity: </strong>${venue.capacity}</p>
			<p>
				<strong>Description: </strong>${venue.description}</p>
		</div>
		<br>
		<form action="editLink.do" method="GET">
			<input type="submit" class="btn btn-success btn-lg" value="Edit">
			<br> <input type="hidden" name="id" value="${venue.id}" />
		</form>
		<br>
		<form action="delete.do" method="POST">
			<input type="submit" class="btn btn-danger btn-lg" value="Delete">
			<br> <input type="hidden" name="id" value="${venue.id}" />
		</form>
		<br>
		<form action="home.do" method="GET">
			<input type="submit" class="btn btn-primary btn-lg" value="Home">
		</form>
	</div>
</body>
</html>