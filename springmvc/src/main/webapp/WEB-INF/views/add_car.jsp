<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="nav_bar.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form</title>
</head>
<style>
h1 {
	margin-top: 100px;
	color: whitesmoke;
}

#h1 {
	margin: 10px;
}

h2 {
	color: whitesmoke;
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
<body>

	<div align="center">
		<form action="add_car" method="post">
			<table>

				<tr>
					<td>NAME :</td>
					<td>  <input type="text" name="name" required> </td>
				</tr>
				<tr>
					<td>BRAND :</td>
					<td> <input type="text" name="brand" required></td>
				</tr>
				<tr>
					<td>PRICE :</td>
					<td> <input type="text" name="price" required></td>
				</tr>

			</table>
			<input type="submit" value="ADD">

		</form>

	</div>
	
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center">
		<h3><%=message%></h3>
	</div>
	<%
	}
	%>

</body>
</html>