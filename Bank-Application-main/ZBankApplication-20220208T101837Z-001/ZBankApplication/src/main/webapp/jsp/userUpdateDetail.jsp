<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: skyblue; text-align: center;">
	<form action="/user/updatedbyuser">
		<table>
			<tr><th colspan="2">Enter Only those thinks you want to update</th></tr>
			<tr><td>Your Id:</td><td><input type="email" name="uemail" value=${uobj.uemail } readonly="readonly"></td></tr>
			<tr><td>Enter First Name:</td><td><input type="text" name="ufname" value=${uobj.ufname }></td></tr>
			<tr><td>Enter Last Name:</td><td><input type="text" name="ulname" value=${uobj.ulname }></td></tr>
			<tr><td>Enter Password:</td><td><input type="password" name="upassword" value=${uobj.upassword }></td></tr>
			<tr><td>Enter Aadhar Number:</td><td><input type="text" name="uaadhar" value=${uobj.uaadhar }></td></tr>
			<tr><td>Enter Pan Number:</td><td><input type="text" name="upan" value=${uobj.upan }></td></tr>
			<tr><td>Enter Phone number:</td><td><input type="text" name="uphoneno" value=${uobj.uphoneno }></td></tr>
			<tr><td>Enter Address :</td><td><input type="text" name="uaddress" value=${uobj.uaddress }></td></tr>
			<tr><td>Click to Update Data :</td><td><input type="submit" value="Update Profile"></td></tr>	
			
	</table>
	</form>
	</body>
	</html>