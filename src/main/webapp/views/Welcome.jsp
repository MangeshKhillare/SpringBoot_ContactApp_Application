<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Form Page</title>
<style type="text/css">
label {
	display: inline-block;
	width: 150px;
	height: 30px;
	margin: 5px;
	text-align: left;
	font-weight: 900;
}

button {
	padding: 10px;
	margin: 10px;
	background-color: orange;
	border: none;
	border-radius: 3px;
}

input[type=text] {
	width: 200px;
}
</style>
</head>
<body>

	<div align="center">
		<h1 style="color: green">
			<b><u>Contact Registration Form</u></b>
		</h1>


		<form:form action="saveContact" modelAttribute="contact" method="post">

			<form:label path="contactName" style="color:rgb(0, 128, 255)">Contact Name :</form:label>
			<form:input path="contactName" />
			<br />
			<br />

			<form:label path="contactNumber" style="color:rgb(255, 0, 128)">Contact Number :</form:label>
			<form:input path="contactNumber" />
			<br />
			<br />

			<form:label path="contactEmail" style="color:rgb(0, 0, 255)">Contact Email :</form:label>
			<form:input path="contactEmail" />
			<br />
			<br />

			<form:label path="activeSw" style="color:rgb(64, 0, 255)">Active Sw :</form:label>
			<form:input path="activeSw" />
			<br />
			<br />

			<form:button>ContactRegister</form:button>

		</form:form>
	</div>

</body>
</html>