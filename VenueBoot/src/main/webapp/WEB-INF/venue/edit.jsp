<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Venue</title>
</head>
<body>
<h2>Edit a Venue</h2>
 <form action="edit.do" method="POST">
    
        Name: <input type="text" name="name" value="${venue.name}"/> <br>      
        Street: <input type="text" name="address" value="${venue.address}"/> <br>      
        City: <input type="text" name="city" value="${venue.city}"/> <br>      
        State: <input type="text" name="state" value="${venue.state}"/> <br>      
        Zip Code: <input type="text" name="zip" value="${venue.zip}"/> <br>      
        Description: <input type="text" name="description" value="${venue.description}"/> <br> 
        Type: <input type="text" name="environment" value="${venue.environment}"/> <br>
        Capacity: <input type="text" name="capacity" value="${venue.capacity}"/> <br>
        <br>
		<button type="submit">Update</button>
                		<input type="hidden" name="id" value="${venue.id}" />
        </form>
        <br>
        <form action="home.do" method="GET">
		<button type="submit">Home</button>
		</form>
</body>
</html>