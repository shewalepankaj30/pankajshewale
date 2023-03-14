<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="/fdrd/created">
			<h2>For Rd Account interest is 6.5%</h2>
		<table>
			<tr><td>Enter Your Login Id:</td><td><input type="email" name="user.uemail" value="${uobj.uemail}" readonly="readonly"></td></tr>
			<tr><td>Enter Amount For Rd:</td><td><input type="number" name="amount"></td></tr>
			<tr><td>Enter Duration in month</td><td><input type="number" name="duration"></td></tr>
<!-- 			<tr><td>Create Account Number:</td><td><input type="text" name="accountno"></td></tr>
 -->			<tr><td>Account type :</td><td><input type="text" name="accounttype" value="RD" readonly="readonly"></td></tr>
			<tr><td>click to create Rd:</td><td><input type="submit" value="Create"></td></tr>
		
		</table>
	</form>
	<form action="/user/transcations">
	
	<input type="submit" value="Go Back to transcation Page">
	</form>
</body>
</html>


