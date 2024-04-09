<%@page import="com.rbprojects.springmvc.dto.CarDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Cars Page</title>
<style type="text/css">
#box {
	
	height: 50px;
	background-color: burlywood;
	border: 3px solid brown;
	position:fixed;
	width: 98.2%;
	top:10px;
	
}

a {
	height: 30px;
	width: 60px;
	background-color: brown;
	color: Whitesmoke;
	margin-left: 30px;
	border-radius: 5px;
	padding: 10px;
	font-size: 20px;
	text-decoration: none;
}

nav {
	
	margin-top: 13px;
}





#message {
	font-size: 40px;
}

.head {
	width: 150px;
	font-size: 25px;
	padding: 10px;
	font-weight: bold;
	font-size: 25px;
	border: 1px solid;
	text-align: center;
}

.data {
	width: 150px;
	font-size: 20px;
	padding: 15px;
	border: 1px solid;
	text-align: center;
}

#table {
	background-color: brown;
	margin-top: 30px;
	border: 3px solid;
	color:white;
}

a {
	text-decoration: none
}

#box1 {
	background-color: burlywood;
	color:brown;
	font-size: 20px;
	font-weight: bold;
	height: 50px;
	border: 2px solid;
	margin-top: 70px;
}

form {
	margin-left: 25%;
	margin-top: 7px;
}

#button {
	height: 35px;
	width: 100px;
	background-color: brown;
	color:white;
	border-radius: 5px;
	font-size: 15px;
	text-decoration: none;
}

input {
	height: 25px;
	width: 200px;
	background-color: brown;
	border: 1px solid;
}
</style>
</head>
<body>
<div id="box" align="center">
		<nav>
			<a href="home">HOME</a> 
			<a href="add_page">ADD</a> 
			<a href="cars">ALL CARS</a>
			<a href="my_cars">MY CARS</a> 
			<a href="sign_out">SIGN OUT</a>
			<a href="delete_user">DELETE ACCOUNT</a>
		</nav>
	</div>
	
	<div id="box1">
		<form action="search" method="post">
			<label>Low price</label> 
			<input type="text" name="low" required="required"> 
			<label>High price</label> 
			<input type="text" name="high" required="required"> 
			<input id="button" type="submit" value="SEARCH">
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
	@SuppressWarnings("unchecked")
	List<CarDTO> cars = (List<CarDTO>) request.getAttribute("cars");
	if (cars != null) {
	%>
	<div align="center">
		<table id="table">
			<tr>
				<td class="head">Id</td>
				<td class="head">Name</td>
				<td class="head">Brand</td>
				<td class="head">Price</td>
			</tr>
			<%
			for (CarDTO car : cars) {
			%>
			<tr>
				<td class="data"><%=car.getId()%></td>
				<td class="data"><%=car.getName()%></td>
				<td class="data"><%=car.getBrand()%></td>
				<td class="data"><%=car.getPrice()%></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<%
	}
	%>
	
</body>
</html>