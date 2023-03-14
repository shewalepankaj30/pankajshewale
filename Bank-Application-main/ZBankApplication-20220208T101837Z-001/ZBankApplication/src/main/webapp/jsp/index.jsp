<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Axis Bank</title>

<style>
body {
	background-image:
		url('https://entrackr.com/wp-content/uploads/2017/12/axis-bank-image-1-1200x600.jpg');
	background-repeat: no-repeat;
	height: 700px;
	width: 1200px;
}

#user {
	background-color: green;
	font: white; width : 130px;
	height: 40px;
	border: solid 2px;
	border-bottom-color: black;
	border-radius: 10px;
	width: 130px;
}

#admin {
	background-color: green;
	font: white;
	width: 130px;
	height: 40px;
	border:solid 2px;
	border-bottom-color: black;
	border-radius: 10px;
}
</style>
</head>
<body style="">
	<img
		src="https://www.freshersvoice.com/wp-content/uploads/2017/03/Axis-Bank-Recruitment.png"
		style="width: 70px; height: 70px; float: left;">
	<form style="margin: 150px 0px 0px 500px">

		<table>
			<tr>
				<td><a href="/user/page"><input type="button" value="User"
						id="user"></a></td>
				<td><a href="/admin/page"><input type="button"
						value="Admin" id="admin"></a></td>
			</tr>
		</table>

	</form>


</body>
</html>