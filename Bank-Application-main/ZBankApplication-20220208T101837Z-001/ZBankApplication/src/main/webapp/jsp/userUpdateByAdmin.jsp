<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="/user/updateAccountByAdmin">
		Enter Id of user :<input type="email" name="uemail">
		<input type="submit" value="Click">
		
	</form>
	
	<form action="/user/updatedUserProfile">
		<table>
			<tr><td>Id of User :</td><td><input type="email" name="uemail" value="${uobj1.uemail}" readonly="readonly"></td></tr>
			<tr><td>Enter Account Number :</td><td><input type="text" name="uaccountno" ></td></tr>
			<tr><td>Enter Ifsc Code :</td><td><input type="text" name="uifsc"></td></tr>
			<tr><td>Click :</td><td><input type="submit" value="Update"></td></tr>
		
		</table>
	</form>
	<form action="/admin/goback">
		<input type="submit" value="Go Back">
	</form>
</body>
</html>