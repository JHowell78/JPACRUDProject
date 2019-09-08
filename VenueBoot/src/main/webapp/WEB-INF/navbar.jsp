<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<nav class="navbar fixed-top navbar-light bg-light">
	<!-- <a href="/"><button class="btn btn-primary">
		<i class="fa fa-home"></i>Show All</button></a> -->
	<form action="showAll.do" method="GET">
		<br> <input type="submit" class="btn btn-primary"
			value="Show All" />
	</form>
	<form action="getVenue.do" method="GET">
		Search by ID:<br> <input type="number" Min='1' name="id" required>
		<input type="submit" class="btn btn-warning" value="Search ID" />
	</form>
	<form action="addVenueFormLink.do" method="GET">
		<br> <input type="submit" class="btn btn-success"
			value="Add Venue" />
	</form>
</nav>