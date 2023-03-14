<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="text-align: center; background-color:rgb(245, 148, 83);">
	<h1>Login sucessfully...</h1>
	<form action="/user/displayuserforuser">
		<h3>want to see acount Account Details :</h3><br><br>
		Enter Your Id:<input type="email" name="uemail"><br><br>
		<input type="submit" value="show">
	</form>
	
	<form action="/user/updatepagebyuser">
		<h3>Want to Update your Details </h3>
		<h3>Enter your Id Again..</h3>
		<input type="email" name="uemail"><br><br>
		<input type="submit" value="Update Profile">
	</form>
	
	<form action="/user/transcations">
		<h3>Do Your Transcation Hurry...!</h3>
		<input type="submit" value="Transcation">
	
	</form>
	<br></br>
	<form action="/user/page">
		<input type="submit" value="logout">
	</form>
</body>
</html>