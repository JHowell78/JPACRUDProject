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
<title>Venue Information</title>
</head>
<body>
<div class="container-fluid">
	<div>
		<h2>${venue.name}</h2>

		<p>Address: ${venue.address} ${venue.city} ${venue.state} ${venue.zip}</p.>
		<p>Type: ${venue.environment}</p>
		<p>Seating Capacity: ${venue.capacity}</p>
		<p>Description: ${venue.description}</p>
	</div>
	<br>
	<form action="editLink.do" method="GET">
		<input type="submit" class="btn btn-success btn-lg" value="Update">
		<br> <input type="hidden" name="id" value="${venue.id}" />
	</form>
	<br>
	<form action="delete.do" method="POST">
		<input type="submit" class="btn btn-danger btn-lg" value="Delete"> <br>
		<input type="hidden" name="id" value="${venue.id}" />
	</form>
	<br>
	<form action="home.do" method="GET">
		<input type="submit" class="btn btn-primary btn-lg" value="Home">
	</form>
	</div>
</body>
</html>