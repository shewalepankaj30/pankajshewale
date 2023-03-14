<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import="java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- <script type="text/javascript">
 
 function calc()
	{
	 var today = new Date();
	  var day = today.getDay();
	  
	  var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
	  var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
	  var dateTime = date+', '+time;
	   
	  document.getElementById("displayDateTime").innerHTML = dateTime
	
		
	} 
  </script>  -->
</head>
<body  style=" background-image: url('https://s.yimg.com/ny/api/res/1.2/0uvt4Q8tPL2S7EBVse7vvA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyODA7aD03MjIuMTMzMzMzMzMzMzMzMw--/https://s.yimg.com/uu/api/res/1.2/TyAwdv5Qv43GTYRiUAR.Eg--~B/aD0zNzYyO3c9NjY3MDtzbT0xO2FwcGlkPXl0YWNoeW9u/https://s.yimg.com/hd/cp-video-transcode/prod/2020-04/14/5e95e33590fe357560d7043f/5e95e33590fe357560d70440_o_U_v2.jpg'); background-repeat: no-repeat; height:600px ;width: 1200px;">
<form action="/user/depositeSucess" style="margin-top:100px; color: white">
	<h3>Get Exiciting Price On This Diwali...</h3>
	<table style="text-align: center;">
		<tr><td>Enter Amount for Deposite :</td><td><input type="number" name="udeposite"></td></tr>
		<tr><td>Current Date :</td><td><input type="text" name="currentdate" value = <%= (new java.util.Date()).toLocaleString()%> readonly="readonly"></td></tr>
		<tr><td>For Security Purpose :</td><td>Always Enter Id and Password</td></tr>
		<tr><td>Enter Account Id:</td><td><input type="text" name="uemail"></td></tr>
		<tr><td>Enter Password:</td><td><input type="password" name="upassword"></td></tr>		
		
		<tr><td>Click to Deposite</td><td><input type ="submit" value="Deposite"></td></tr>
	</table>
	</form>
	<form action="/user/transcations">
	
	<input type="submit" value="Go Back to transcation Page">
	</form>
	
	
  
</body>
</html>