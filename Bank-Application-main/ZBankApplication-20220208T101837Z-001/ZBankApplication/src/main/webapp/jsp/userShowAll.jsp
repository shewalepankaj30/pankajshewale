<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table border="10">
		<tr>
			<th>First Name</th>
			<th>last Name</th>
			<th>Email</th>
			<th>Gender</th>
			<th>Aadhar Number</th>
			<th>Pan Number</th>
			<th>Phone Number</th>
			<th>Account Type</th>
			<th>Account Number</th>
			<th>IFSC Code</th>
			<th>Account Balance</th>
			<c:forEach var="all" items="${allobj}">

				<tr>
					<td>${all.ufname }</td>
					<td>${all.ulname }</td>
					<td>${all.uemail }</td>
					<td>${all.ugender }</td>
					<td>${all.uaadhar }</td>
					<td>${all.upan }</td>
					<td>${all.uphoneno }</td>
					<td>${all.uaccounttype }</td>
					<td>${all.uaccountno}</td>
					<td>${all.uifsc }
					<td>${all.ubalance }</td>
				</tr>
			</c:forEach>
	</table>
	<form action="/admin/goback">
		<input type="submit" value="Go Back">
	</form>
</body>
</html>