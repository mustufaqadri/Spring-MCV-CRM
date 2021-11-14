<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome | All Customers</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
	<div class="container mt-3 text-center">
		<div class="row">
			<div class="col">
				<h2>CRM - Customer Relationship Manager</h2>
			</div>
		</div>
		<div class="row">
			<div class="col" >
				<button type="button" class="btn btn-primary" onclick="window.location.href='showFormForAdd'; return false;">Add Customer</button>
			</div>
		</div>
	</div>

	<div class="container mt-3">
		<div class="row">
			<div class="col">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">First Name</th>
							<th scope="col">Last Name</th>
							<th scope="col">Email</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="tempCustomer" items="${customers}">
							<c:url var="updateLink" value="/customer/showFormForUpdate"> 
								<c:param name="customerId" value="${tempCustomer.id}" />
							</c:url>
							<c:url var="deleteLink" value="/customer/delete"> 
								<c:param name="customerId" value="${tempCustomer.id}" />
							</c:url>
							<tr>
								<td>${tempCustomer.firstName}</td>
								<td>${tempCustomer.lastName}</td>
								<td>${tempCustomer.email}</td>
								<td><a href="${updateLink}">Update</a> | <a href="${deleteLink}" onclick="if (!(confirm('Are you sure to delete to delete this customer'))) return false">Delete</a> </td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>