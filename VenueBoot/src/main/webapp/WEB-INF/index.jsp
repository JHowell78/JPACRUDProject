<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<meta charset="UTF-8">
</head>
<body>
	<jsp:include page="navbar.jsp" />
	<title>Entertainment Venue Info center</title>

	<div class="container-fluid">
		<div class="p-3 mb-2 bg-light">
			<img src="WEB-INF/venue/um.jpg"> <br>
			<form action="getVenue.do" method="GET">
					<br>
					<br>
				<c:forEach items="${allVenues }" var="venue">
					<p>
						<a href="getVenue.do?id=${venue.id}">${venue.name} </a>
					</p>
				</c:forEach>
			</form>

		</div>
	</div>
</body>

</html>