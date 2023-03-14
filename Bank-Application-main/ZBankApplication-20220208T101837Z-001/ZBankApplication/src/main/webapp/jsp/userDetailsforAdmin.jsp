<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr><td>User ID :</td><td>${uobj.uemail }</td></tr>
		<tr><td>User first Name : </td><td>${uobj.ufname }</td></tr>
		<tr><td>User last Name :</td><td>${uobj.ulname }</td></tr>
		<tr><td>Account Balance:</td><td>${uobj.ubalance }</td></tr>
		<tr><td>User Gender :</td><td>${uobj.ugender }</td></tr>
		<tr><td>User phone Number :</td><td> ${uobj.uphoneno }</td></tr>
		<tr><td>User Aadhar Number :</td><td>${uobj.uaadhar }</td></tr>
		<tr><td>User Pan Number :</td><td>${uobj.upan }</td></tr>
		<tr><td>User Account type :</td><td>${uobj.uaccounttype }</td></tr>
		<tr><td>User Account Number:</td><td>${uobj.uaccountno }</td></tr>
		<tr><td>User Account IFSC :</td><td>${uobj.uifsc }</td></tr>
		<tr><td>User Address :</td><td>${uobj.uaddress }</td></tr>
		<tr><td>User Bussiness ID :</td><td>${uobj.ubussinessid }</td></tr>
		<tr><td>User Company ID :</td><td>${uobj.ucompanyid }</td></tr>
	</table>
	
	<form action="/user/updatepage">
			<h3>If All data Of User is Okay then give him Account Number and IfSC code</h3>
			<input type="submit" value="Click ">
	</form>
	<form action="/admin/goback">
		<input type="submit" value="Go Back">
	</form>
</body>
</html>