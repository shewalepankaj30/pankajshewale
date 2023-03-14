<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
#table2 {
	border: 5px solid black;
	border-radius: 7px;
	height: 500px;
	width: 300px;
	margin-left: 450px;
}

#one {
	background-image:
		url('https://image.shutterstock.com/z/stock-vector-woman-with-headphone-and-computer-call-center-customer-service-and-support-flat-vector-1724521849.jpg');
		background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}
</style>
</head>
<body id="one">
	<form action="/admin/insertnew">
		<table id="table2">
			<tr>
				<td>Enter Id:</td>
				<td><input type="text" name="aid"></td>
			</tr>
			<tr>
				<td>Enter first Name :</td>
				<td><input type="text" name="afname"></td>
			</tr>
			<tr>
				<td>Enter Last Name :</td>
				<td><input type="text" name="alname"></td>
			</tr>
			<tr>
				<td>Enter gender :</td>
				<td><input type="radio" name="agender" value="Male">Male
					<input type="radio" name="agender" value="Female">FeMale</td>
			</tr>
			<tr>
				<td>Enter MailId :</td>
				<td><input type="email" name="aemail"></td>
			</tr>
			<tr>
				<td>Enter phoneno</td>
				<td><input type="text" name="aphoneno"></td>
			</tr>
			<tr>
				<td>Enter address</td>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<td>Enter Password</td>
				<td><input type="password" name="apassword"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Create"
					style="background-color: lightgreen; width: 300px; height: 30px; text-align: center;"></td>
			</tr>
			<tr>
				<td colspan="2"><a href="/admin/page"><input type="button"
						value="Go Back"></a></td>
			</tr>
		</table>
	</form>

	<!-- <form action="" id="form3">
		
	</form> -->
</body>
</html>