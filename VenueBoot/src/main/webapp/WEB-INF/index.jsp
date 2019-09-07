<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Entertainment Venue Info center</title>
</head>
<body>
<h2>Entertainment Venue Infocenter</h2>

	<form action="getVenue.do" method="GET">
		<c:forEach items="${allVenues }" var="venue">
			<ul>
				<li><a href="getVenue.do?id=${venue.id}">${venue.name} </a></li>
			</ul>
		</c:forEach>
	</form>
	Select a Venue By Id Number:
	<form action="getVenue.do" method="GET">
		<input type="number" name="id" /> <input type="submit"
			value="Show Venue" />
	</form>
	<br>
	Add a New Venue:
	<form action="addVenueFormLink.do" method="GET">
		<button type="submit">Add Venue</button>
		<br>
	</form>
</body>
</html>