<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-img:url('https://www.wishfin.com/blog/wp-content/uploads/2016/05/Flexi-Fixed-Deposit-Best-for-Short-Term-Investments.png');  ">
	<form action="/fdrd/created" >
			<h2>For more than 1 year interest is 6% per year</h2>
			<h2>for more than 2 years interest is 6.5%</h2>
			<h2>for more than 5 years interest is 7%</h2>
			
		<table>
			
			<tr><td>Enter Your Login Id:</td><td><input type="email" name="user.uemail" value="${uobj.uemail}" readonly="readonly"></td></tr>
			<tr><td>Enter Amount For Fd:</td><td><input type="number" name="amount"></td></tr>
			<tr><td>Enter Duration in month</td><td><input type="number" name="duration"></td></tr>
<!-- 			<tr><td>Create Account Number:</td><td><input type="text" name="accountno"></td></tr>
 -->			<tr><td>Account type :</td><td><input type="text" name="accounttype" value="FD" readonly="readonly"></td></tr>
			<tr><td>click to create Fd:</td><td><input type="submit" value="Create"></td></tr>
		
		</table>
	</form>
	<form action="/user/transcations">
	
	<input type="submit" value="Go Back to transcation Page">
	</form>
</body>
</html>