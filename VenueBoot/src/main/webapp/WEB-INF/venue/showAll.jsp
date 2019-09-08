<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid">
		<div class="p-3 mb-2 bg-light text-dark">
			<h1>
				<strong><p style="text-align: center;">Entertainment
						Venue Information</p>
			</h1>
			<form action="showAll.do" method="GET">
				<c:forEach items="${allVenues }" var="venue">
					<p>
						<a href="getVenue.do?id=${venue.id}">${venue.name} </a>
					</p>
				</c:forEach>
			</form>
			<form action="home.do" method="GET">
				<input type="submit" class="btn btn-primary btn-lg" value="Home">
			</form>
		</div>
	</div>
</body>
</html>