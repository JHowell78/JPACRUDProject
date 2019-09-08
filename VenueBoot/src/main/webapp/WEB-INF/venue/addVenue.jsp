<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Venue</title>
</head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<body>
	<div class="container-fluid">
		<h2 style="color: green;">Add Custom Venue</h2>
		<br>
		<form action="addVenueForm.do" method="POST">

			Name: <input required type="text" name="name" /> <br> Street: <input
				required type="text" name="address" /> <br> City: <input
				required type="text" name="city" /> <br> State: <input
				required type="text" name="state" /> <br> Zip Code: <input
				required type="number" name="zip" /> <br> Description: <input
				required type="text" name="description" /> <br> Capacity: <input
				required type="number" name="capacity" /> <br> Type: <select
				name="environment">
				<option value="Amphitheater">Amphitheater</option>
				<option value="Theatre">Theatre</option>
				<option value="Stadium">Stadium</option>
				<option value="Night Club">Night Club</option>
				<option value="Convention Center">Convention Center</option>
			</select> <br> <br> <input type="submit"
				class="btn btn-success btn-lg" value="Add Venue">

		</form>
		<br>
		<form action="home.do" method="GET">
			<input type="submit" class="btn btn-primary btn-lg" value="Home">
		</form>
	</div>
</body>
</html>