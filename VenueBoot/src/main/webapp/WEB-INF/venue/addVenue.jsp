<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Venue</title>
</head>
<body>
<h2>Add Custom Venue</h2>
 <form action="addVenueForm.do" method="POST">
    
        Name: <input type="text" name="name" /> <br>      
        Street: <input type="text" name="address" /> <br>      
        City: <input type="text" name="city" /> <br>      
        State: <input type="text" name="state" /> <br>      
        Zip Code: <input type="text" name="zip" /> <br>      
        Description: <input type="text" name="description" /> <br> 
        Type: <input type="text" name="environment" /> <br>
        Capacity: <input type="text" name="capacity" /> <br>
        
                <input type="submit" name="Add New Venue" />
        </form>
        <br>
        <form action="home.do" method="GET">
		<button type="submit">Home</button>
		</form>
</body>
</html>