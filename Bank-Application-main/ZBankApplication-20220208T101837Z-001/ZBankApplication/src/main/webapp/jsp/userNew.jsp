<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
#table7{
			background-color: rgb(233, 233, 120);
			margin:130px 0px 0px 500px;
			border-radius: 10px;
			

}
#b1, #b2, #b3{
	height: 50px;
	width: 200px;
	background-color: yellow;
	border: 2px dotted pink;
	border-radius: 5px; 
	
}
</style>
</head>
<body style="background-color: lightpink">
	<form>
	<marquee><h1>Create Account....</h1></marquee>
		<table id="table7">
		
			<tr><th>Which Type of Account you want to create </th></tr>
			<tr></tr>
			<tr><td><a href="/user/saving"><input type="button" value="Saving Account" id="b1"></a></td></tr>
			<tr></tr>
			<tr><td><a href="/user/salary"><input type="button" value="Salary Account" id="b2"></a></td></tr>
			<tr></tr>
			<tr><td><a href="/user/current"><input type="button" value="Current Account" id="b3"></a></td></tr>
			<tr></tr>
		
		</table>
	
	
	</form>

</body>
</html>