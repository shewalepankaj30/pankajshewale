%--
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
#table4 {
	margin: 200px 0px 0px 500px;
	border: 5px thick whites;
	box-shadow: 20px 20px 10px;
	height: 50px;
	width: 200px;
	text-align: center;
}

#table5 {
	margin: 60px 0px 0px 500px;
	border: 5px thick whites;
	box-shadow: 20px 20px 10px;
	height: 300px;
	width: 200px;
	text-align: center;
}
</style>
</head>
<body
	style="background-image: url('https://image.shutterstock.com/image-photo/office-desk-admin-paperwork-other-600w-409147795.jpg');">
	<form action="/admin/admindetail">
		<table id="table4">
			<tr>
				<td><input type="text" name="aid" placeholder="enter id first"></td>
			</tr>
			<tr>
				<td><input type="submit"
					value="Admin personal Information Details"
					style="background-color: DarkGrey; width: 300px; height: 30px; text-align: center;"></td>
			</tr>
			
		</table>
	</form>
	<form action="/user/displayuserforadmin">
		<table id="table5">
			<tr>
				<td><input type="email" name="uemail"
					placeholder="enter id of User"></td>
			</tr>
			<tr>
				<td><input type="submit" value="User profile"
					style="background-color: DarkGrey; width: 300px; height: 30px; text-align: center;">
				</td>
			</tr>

			<tr></tr>
			<tr>
				<td><a href="/user/showall"><input type="button"
						value="Show All Users"
						style="background-color: DarkGrey; width: 300px; height: 30px; text-align: center;"></a></td>
			</tr>
			<tr></tr>
			<tr>
				<td><a href="/admin/page"><input type="button"
						value="logout"
						style="background-color: DarkGrey; width: 300px; height: 30px; text-align: center;"></a></td>
			</tr>
		</table>
	</form>
	<!-- 
		<form  action="/user/displayuserforadmin">
			<table>
				<tr><td><input type="email" name="uemail" placeholder="enter id of User"></td></tr>
				<tr><td><input type="submit" value="User profile"></td></tr>
			
			</table>
		</form> -->
	<!-- 
		<form  action="/user/showall">
			<input type = "submit" value="SHow All Users">
			
		</form>
	 <form action="/admin/page">
		<input type="submit" value="logout">
	</form> -->
</body>
</html>