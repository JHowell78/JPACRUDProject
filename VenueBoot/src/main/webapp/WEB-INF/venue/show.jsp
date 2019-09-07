<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Venue Information</title>
</head>
<body>
<div>
<h2>Venue Details</h2>

<p>Venue Name: ${venue.name}</p>
<p>Description: ${venue.description} </p>
<p>Seating Capacity: ${venue.capacity} </p>
<p>Type: ${venue.environment}</p>
 <p>Address: ${venue.address} ${venue.city} ${venue.state} ${venue.zip} </p.>
</div>
<br>
<form action="editLink.do" method="GET">
		<button type="submit">Update Venue</button>
		<br>
		<input type="hidden" name="id" value="${venue.id}" />
	</form>
<br>
<form action="delete.do" method="POST">
		<button type="submit">Delete Venue</button>
		<br>
		<input type="hidden" name="id" value="${venue.id}" />
	</form>
<br>
<form action="home.do" method="GET">
		<button type="submit">Home</button>
		</form>
</body>
</html>