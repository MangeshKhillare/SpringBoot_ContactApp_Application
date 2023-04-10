<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Contact Data</title>
</head>
<body>

	<div align="center">
		<h1 style="color: Green">All Contact Data Successfully Show...</h1>
		<table border="1">
			<thead>
				<tr>
					<th colspan="7" style="color: Red"><b>Contact Data</b></th>
				</tr>
				<tr>
					<th rowspan="7" style="color: violet">Contact Id</th>
					<th style="color: orange">Contact Name</th>
					<th style="color: Magenta">Mobile No</th>
					<th style="color: blue">Email Id</th>
					<th style="color: olive">Active Sw</th>
					<th style="color: rgb(0, 128, 255)">Created Date</th>
					<th style="color: Green">Updated Date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="u">
					<tr>
						<td>${u.contactId}</td>
						<td>${u.contactName}</td>
						<td>${u.contactNumber}</td>
						<td style="color: blue">${u.contactEmail}</td>
						<td>${u.activeSw}</td>
						<td style="color: rgb(255, 0, 255)">${u.createdDate}</td>
						<td style="color: rgb(255, 10, 255)">${u.updatedDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>