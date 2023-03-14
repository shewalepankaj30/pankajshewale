<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: rgb(252, 213, 186) ; text-align: center; margin-top: 50px;">

		<form action="/user/deposite">
			<input type="submit" value="Deposite" style="height: 40px ; width:200px;  background-color: skyblue"><br><br>
		</form>
		<form action="/user/withdraw">
			<input type="submit" value="WithDraw" style="height: 40px ; width:200px;  background-color: skyblue"><br><br>
		</form>
		
		<form action="/user/ministatement">
			<input type="submit" value="MiniStatement" style="height: 40px ; width:200px;  background-color: skyblue"><br><br>
		</form>
		
		<form action="/user/fdaccount">
			<input type="submit" value=" FD Account" style="height: 40px ; width:200px;  background-color: skyblue"><br><br>
		</form>
		
		<form action="/user/rdaccount">
			<input type="submit" value=" RD Account" style="height: 40px ; width:200px;  background-color: skyblue"><br><br>
		</form>
		<form action="/fdrd/fdrddetails">
			<input type="submit" value=" Details of your All Account" style="height: 40px ; width:200px;  background-color: skyblue"><br><br>
		
		</form>
		<a href="/user/afterloggedin"><input type="button" value="Go Back" style="height: 40px ; width:200px;  background-color: skyblue"></a>
</body>
</html>