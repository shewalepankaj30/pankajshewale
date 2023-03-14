<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:rgb(105, 185, 238); color: white;">
		<form action="/fdrd/fdrdshowdetails">
			Enter Login Id :<input type="email" name="loginid"><br><br>
			Click: <input type="submit" value="Show Details">
		</form>
		<form action="/fdrd/fdrdshowdetails">
			<table border="5">
				<tr><th>Account Number</th><th>Account type</th><th>Initial Amount</th><th>New Amount</th><th>Rate of Interest</th><th>Duration</th></tr>
				
			<c:forEach var="user1" items="${alluserobj}">
			<tr><td>${user1.accountno}</td><td>${user1.accounttype}</td><td>${user1.amount}</td><td>${user1.newamount}</td><td>${user1.roi}</td><td>${user1.duration}</td></tr>
			
			
			</c:forEach>
			
				<tr><th>Account Number</th><th>Account type</th><th>Balance</th><th>Account Holder Name</th><th>Phone Number</th></tr>
			<tr><td>${userobj.uaccountno }</td><td>${userobj.uaccounttype }</td><td>${userobj.ubalance }</td><td>${userobj.ufname } ${userobj.ulname }</td><td>${userobj.uphoneno }</td></tr>
			</table>
		
		</form>
		
		<form action="/user/transcations">
		<input type="submit" value="Go Back">
	</form>
</body>
</html>