<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.digit.JavaTraining.Model.Aadhar"
	import="org.hibernate.Session"%>
<!DOCTYPE html>
<html> 
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body { 
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
}
.container {
	max-width: 900px;
	padding: 30px;
	background-color: rgba(255, 255, 255, 0.9);
	border-radius: 10px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

th, td {
	padding: 15px;
	text-align: center;
	border: 1px solid #ccc;
}

th {
	background-color: #3366cc;
	color: #fff;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

a {
	display: block;
	margin-top: 20px;
	text-align: center;
	color: #3366cc;
	text-decoration: none;
	font-weight: bold;
	transition: color 0.3s;
}

a:hover {
	color: #005580;
}
</style>

</head>
<body>
	<%
	session = request.getSession();

	Aadhar a = (Aadhar) session.getAttribute("curuser");
	session = request.getSession();
	%>
	
	<div class="container">
		<h1 align="center">Details</h1>
		<br>
		<table>
			<tr>
			<th>Aadhar Number</th>
			<th>Name</th>
			<th>Email</th>
			<th>Phone Number</th>
			<th>Address Line</th>
			<th>City</th>
			<th>State</th>
			<th>Pin Code</th>
			</tr>
			
			<tr>
				<td><%=a.getAadharNumber()%></td>
			<td><%=a.getName()%></td>
			<td><%=a.getEmail()%></td>
			<td><%=a.getPhone()%></td>
			<td><%=a.getAddress()%></td>
			<td><%=a.getCity()%></td>
			<td><%=a.getState()%></td>
			<td><%=a.getPinCode()%></td>
			</tr>
	
	
</body>
</html>