<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	#table8{
/* 		background-color: rgb(228, 100, 128);
 */		margin:100px 0px 0px 10px;
		width: 400px;
		
	}
</style>
</head>
<body style="background-image: url('http://www.nextgenerationlabs.com/wp-content/uploads/2016/06/welcome_1.png')">
<form action="/user/created" id="table8">
			<table>
				<tr><th>Welcome to Axis Current Account</th></tr>
				<tr><td><input type="text" name="ufname" placeholder="Enter First Name"></td></tr>
				<tr><td><input type="text" name="ulname" placeholder="Enter Last Name"></td></tr>
				<tr><td><input type="radio" name="ugender" value="Male">Male
						<input type="radio" name="ugender" value="FeMale">FeMale</td></tr>
				<tr><td><input type="text" name="uaadhar" placeholder="Enter Aadhar Number"></td></tr>
				<tr><td><input type="text" name="upan" placeholder="Enter Pan Number"></td></tr>
				<tr><td><input type="email" name="uemail" placeholder="Enter Email id"></td></tr>
				<tr><td><input type="text" name="uphoneno" placeholder="Enter Phone Number"></td></tr>
				<tr><td><input type="text" name="ubussinessid" placeholder="Enter Bussiness id"></td></tr>
				<tr><td><input type="password" name="upassword" placeholder="Create Password"></td></tr>
				<tr><td><input type="text" name="uaccounttype" value="Current" readonly="readonly"></td></tr>
				<tr><td><input type="number" name="ubalance"   value=20000	readonly="readonly">(minimum balance should be 20K)</td></tr>
				<tr><td><input type="submit" value="Submit Details"></td></tr>
			</table>
		</form>
</body>
</html>