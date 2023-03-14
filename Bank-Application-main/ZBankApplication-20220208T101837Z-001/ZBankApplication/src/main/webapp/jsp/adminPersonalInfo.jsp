<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	 <table>
		<tr><td>Admin Id:</td><td>${aobj.aid }</td></tr>
		<tr><td>Admin Mail:</td><td>${aobj.aemail }</td></tr>
		<tr><td>First Name :</td><td>${aobj.afname } </td></tr>
		<tr><td>Last Name:</td><td>${aobj.alname }</td></tr>
		<tr><td>Gender :</td><td>${aobj.agender }</td></tr>
		<tr><td>Phone Number:</td><td>${aobj.aphoneno }</td></tr>
		<tr><td>Address :</td><td>${aobj.address }</td></tr>
	</table> 
	
	<form action="/admin/goback">
		<input type="submit" value="Go Back">
	</form>
	 <form action="/admin/page">
		<input type="submit" value="logout">
	</form>
</body>
</html>


