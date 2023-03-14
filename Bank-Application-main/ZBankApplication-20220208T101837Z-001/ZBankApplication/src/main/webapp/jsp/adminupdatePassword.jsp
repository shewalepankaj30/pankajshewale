<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	
	function validation(){
		
	}
</script>

<style>
	#table3 {
	border: 5px solid black;
	border-radius: 7px;
	height: 200px;
	width: 200px;
	margin-left: 450px;
}

</style>
</head>
<body>

	<form action="/admin/upadatepassword">
	<table id="table3">
		<tr><td>Enter Your ID:</td> <td>	<input type="text" name="aid" ></td></tr>
		<tr><td>Enter your New Password:</td><td><input type="password" name="apassword"></td></tr>
		<tr><td>Enter your Confirm Password:</td><td><input type="password" ></td></tr>
		<tr><td colspan="2"><input type="submit" value="Change Password" style="text-align: center;"></td></tr>
		<tr><td><a href="/admin/page"><input type="button" value="Go Back" style="text-align: center;"></a></td></tr>
			</table></form>
	 <!-- <form action="/admin/page">
		<input type="submit" value="logout">
	</form> -->
</body>
</html>




</html> 