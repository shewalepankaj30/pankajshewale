<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
#table6{
	 
	border:5px thick light;
	background-color:rgb(147, 166, 194);
	box-shadow: 20px 20px 10px;
	height: 250px;
	width:  350px;
	text-align: center;
}


</style>
</head>
<body style="background-color: rgb(4, 129, 167)">
 <marquee><h1>Welcome To Axis Bank Wish You Many Many Happy Diwali</h1></marquee>
 
<form style="float:left ;padding: 100px 0px 0px 10px;">
<img  src="https://updatedyou.com/wp-content/uploads/2018/04/2000px-axis_bank_logo-svg.png" style="height: 200px; width: 300px;">
</form>
	<form action="/user/loggedin" style="float: right;margin: 0px 20px 0px 800px;">
		<table id="table6">
			<tr><td>Login Id: </td><td><input type="email" name="uemail"></td></tr>
			<tr><td>Password :</td><td><input type="password" name="upassword"></td></tr>
			<tr><td>Clck On Button:</td><td><input type="submit" value="Login"></td></tr>
			<tr><td>Forget Password:</td><td><a href="/user/forget"><input type="button" value="Forget Password"></a></td></tr>
			<tr><td>New Applicatnt: </td><td><a href="/user/new"><input type="button" value="New Applicant"></a></td></tr>
			<tr><td colspan="2"><a href="/admin/home"><input type="button" value="Home Page" style="background-color:lightblue; width:300px ; height:30px;text-align: center;"></a></td></tr>
			
		</table>
	</form>
	
	<!-- <form action="">
		<input type="submit" value="New Applicant">
	</form> -->
</body>
</html>