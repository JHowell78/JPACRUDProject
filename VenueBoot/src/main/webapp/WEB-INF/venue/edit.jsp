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
<h2>Edit a Venue</h2>
 <form action="edit.do" method="POST">
    
        Name: <input required type="text" name="name" value="${venue.name}"/> <br>      
        Street: <input required type="text" name="address" value="${venue.address}"/> <br>      
        City: <input required type="text" name="city" value="${venue.city}"/> <br>      
        State: <input required type="text" name="state" value="${venue.state}"/> <br>      
        Zip Code: <input required type="number" name="zip" value="${venue.zip}"/> <br>      
        Description: <input required type="text" name="description" value="${venue.description}"/> <br> 
        Capacity: <input required type="number" name="capacity" value="${venue.capacity}"/> <br>
       Type: <select name="environment" >
 		<option value="Amphitheater">Amphitheater</option>
 		<option value="Theatre">Theatre</option>
 		<option value="Stadium">Stadium</option>
 		<option value="Night Club">Night Club</option>
 		<option value="Convention Center">Convention Center</option>
 		</select>
        <br>
        <br>
				<input type="submit" class="btn btn-success btn-lg" value="Update">
		
                		<input type="hidden" name="id" value="${venue.id}" />
        </form>
        <br>
        <form action="home.do" method="GET">
                	<input type="submit" class="btn btn-primary btn-lg" value="Home">
		</form>
		</div>
</body>
</html>