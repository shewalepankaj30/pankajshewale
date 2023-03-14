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
	<form action="/user/ministatementsucess">
	<table>
		<tr><td>Enter Your Login Id:</td><td><input type="email" name="uemail"></td></tr>
		<tr><td>Click on Button :</td><td><input type="submit" value="Mini Statement"></td></tr> 
	</table>
	</form>
	
	<form action="/user/ministatementsucess">
		<table border="5">
			<tr><th>Serial Number</th> <th>Balance</th><th>Deposite</th> <th>Withdraw</th> <th>Date n Time</th></tr>
				<c:forEach var="u11" items="${u11obj }">
					<tr><td>${u11.seno }</td> <td> ${u11.ubalance } </td> <td>${u11.udeposite }</td><td>${u11.uwithdraw}</td> <td >${u11.currentdate }</td></tr>
				
				</c:forEach>
				
			
		</table>
		<a href="/user/transcations"><input type="button" value="Go Back"></a>
	</form>
	
	
</body>
</html>