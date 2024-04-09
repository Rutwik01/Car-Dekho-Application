<%@page import="com.rbprojects.springmvc.dto.CarDTO"%>
<jsp:include page="nav_bar.jsp" />
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Page</title>
<style type="text/css">
h1 {
	margin-top: 100px;
	color: whitesmoke;
}

#h1 {
	margin: 10px;
}

h3 {
	color: brown;
	margin:10px auto;
}

#box1 {
	background-color: burlywood;
	color:brown;
	font-size: 20px;
	font-weight: bold;
	height: 50px;
	border: 2px solid;
	margin-top: 20px;
}
table {
	margin: 10px;
	font-weight: bold;
	text-align: center;
}

table th {
	padding: 10px;
}

td {
	color: white;
	padding: 8px;
}

form {
	height: 200px;
	width: 320px;
	background-color: brown;
	margin:30px auto;
}

input {
	height: 25px;
	width: 180px;
	outline: none;
	border: none;
	
}

input[type="submit"] {
	width: 100px;
	height: 30px;
	background-color: burlywood;
	margin-top: -10px;
	color: brown;
	font-weight: bold;
	margin-bottom:25px;
}

input[type="submit"]:hover {
	background-color: rgba(231, 192, 140, 0.5);
}

#message{
	font-size:20px;
	color:white;
	text-align:center;
	margin-top:45px;
	margin-bottom:60px;
}
</style>
</head>
<body>
	<%
	CarDTO car = (CarDTO) request.getAttribute("car");
	%>
	<div id="box1" align="center">
		<h3 id="head">Update Car Details</h3>
		<form action="update_car" method="post">
			<table>
				<tr>
					<td class="label">Id</td>
					<td><input class="input" type="text" name="id"
						value="<%=car.getId()%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td class="label">Name</td>
					<td><input class="input" type="text" name="name"
						value="<%=car.getName()%>" required="required"></td>
				</tr>
				<tr>
					<td class="label">Brand</td>
					<td><input class="input" type="text" name="brand"
						value="<%=car.getBrand()%>" required="required"></td>
				</tr>
				<tr>
					<td class="label">Price</td>
					<td><input class="input" type="text" name="price"
						value="<%=car.getPrice()%>" required="required"></td>
				</tr>
			</table>
			<input id="button" type="submit" value="UPDATE">
		</form>
		
	</div>
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center">
		<h3 id="message"><%=message%></h3>
	</div>
	<%
	}
	%>
</body>
</html>