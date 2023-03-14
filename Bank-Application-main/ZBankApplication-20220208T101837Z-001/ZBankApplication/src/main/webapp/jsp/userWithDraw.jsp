<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image: url('https://media.brstatic.com/2018/02/27135207/how-the-fdic-backs-up-your-bank-desposits.jpg');  background-repeat: no-repeat; height:600px ;width: 1200px;">
<form action="/user/withdrawSucess" style=" margin-top:100px; color: white ">
	<h3>Get Exiciting Price On This Diwali...</h3>
	<table style="text-align: center;">
		<tr><td>Enter Amount for Withdraw :</td><td><input type="number" name="uwithdraw"></td></tr>
		<tr><td>Current Date :</td><td><input type="text" name="currentdate" value = <%= (new java.util.Date()).toLocaleString()%> readonly="readonly"></td></tr>
		<tr><td>For Security Purpose :</td><td>Always Enter Id and Password</td></tr>
		<tr><td>Enter Account Id :</td><td><input type="email" name="uemail"></td></tr>
		<tr><td>Enter Password:</td><td><input type="password" name="upassword"></td></tr>
		<tr><td>Click to Deposite</td><td><input type ="submit" value="WithDraw"></td></tr>
	</table>
	</form>
	<form action="/user/transcations">
	
	<input type="submit" value="Go Back to transcation Page">
	</form>
	<!-- <script type="text/javascript">
  var today = new Date();
  var day = today.getDay();
  
  var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
  var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
  var dateTime = date+' '+time;
   
  document.getElementById("displayDateTime").innerHTML = dateTime ;
 
  </script> -->
</body>
</html>