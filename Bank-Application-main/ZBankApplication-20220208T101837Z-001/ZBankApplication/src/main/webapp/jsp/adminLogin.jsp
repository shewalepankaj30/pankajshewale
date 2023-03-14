<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
#form1{ 
	margin: 200px 0px 0px 500px; 
	border:5px thick white;
	
	box-shadow: 20px 20px 10px;
	height: 250px;
	width:  350px;
}

</style>
</head>
<body style="background-color: rgb(248, 76, 76);">

	<form action="/admin/login" id="form1">
		<table >
			<tr><td>Admin ID :</td><td><input type="text" name="aid" ></td></tr>
			<tr><td>Admin Password:</td><td><input type="password" name="apassword"></td></tr>
			<tr><td colspan="2"><input type="submit" value="Login" style="background-color: skyblue; width:300px ; height:30px; text-align: center;"></td></tr>
			<tr><td colspan="2" style="text-align: center;"><a href="/admin/forgetpassword">Forget Password</a></td></tr>
			<tr><td colspan="2"><a href="/admin/new"><input type="button" value="Create new admin Account" style="background-color:lightblue; width:300px ; height:30px;text-align: center;"></a></td></tr>
			<tr><td colspan="2"><a href="/admin/home"><input type="button" value="Home Page" style="background-color:lightblue; width:300px ; height:30px;text-align: center;"></a></td></tr>
		</table>
	</form>
	
	<
	<!-- <form action="/admin/new" style="text-align: center; margin-top: 150px">
		<input type="submit" value=" ">
	</form> -->
	
	
</body>
</html>