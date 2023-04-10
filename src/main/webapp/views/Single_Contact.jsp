<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Single Contact Data</title>
</head>
<body>

	<div align="center">
		<table border="1">
			<thead>
				<tr>
					<th colspan="7" style="color: blue"><b>Single Contact Data</b></th>
				</tr>
				<tr>
					<td rowspan="7" style="color: violet">Contact Id</td>
					<td style="color: orange">Contact Name</td>
					<td style="color: blue">Contact Number</td>
					<td style="color: Magenta">Contact Email</td>
					<td style="color: olive">Active Sw</td>
					<td style="color: rgb(0, 128, 255)">Created Date</td>
					<td style="color: Green">Updated Date</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${singleContactData.contactId}</td>
					<td>${singleContactData.contactName}</td>
					<td>${singleContactData.contactNumber}</td>
					<td style="color: blue">${singleContactData.contactEmail}</td>
					<td>${singleContactData.activeSw}</td>
					<td style="color: rgb(255, 0, 255)">${singleContactData.createdDate}</td>
					<td style="color: rgb(255, 10, 255)">${singleContactData.updatedDate}</td>
				</tr>
			</tbody>
		</table>
	</div>

</body>
</html>