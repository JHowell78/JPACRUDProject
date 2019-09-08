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
<title>Edit Venue</title>
</head>
<body>
	<div class="container-fluid">
		<h2 style="color: blue;">Edit a Venue</h2>
		<form action="edit.do" method="POST">

			<strong> Name: </strong><input required type="text" name="name"
				value="${venue.name}" /> <br> <strong> Street: </strong><input
				required type="text" name="address" value="${venue.address}" /> <br>
			<strong> City: </strong><input required type="text" name="city"
				value="${venue.city}" /> <br> <strong> State: </strong><input
				required type="text" name="state" value="${venue.state}" /> <br>
			<strong> Zip Code: </strong><input required type="number" name="zip"
				value="${venue.zip}" /> <br> <strong> Description: </strong><input
				required type="text" name="description" value="${venue.description}" />
			<br> <strong> Capacity: </strong><input required type="number"
				name="capacity" value="${venue.capacity}" /> <br> <strong>Type:
			</strong><select name="environment">
				<option value="Amphitheater">Amphitheater</option>
				<option value="Theatre">Theatre</option>
				<option value="Stadium">Stadium</option>
				<option value="Night Club">Night Club</option>
				<option value="Convention Center">Convention Center</option>
			</select> <br> <br> <input type="submit"
				class="btn btn-success btn-lg" value="Update"> <input
				type="hidden" name="id" value="${venue.id}" />
		</form>
		<br>
		<form action="home.do" method="GET">
			<input type="submit" class="btn btn-primary btn-lg" value="Home">
		</form>
	</div>
</body>
</html>