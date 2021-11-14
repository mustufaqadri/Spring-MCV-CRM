<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome | Add Customer</title>

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
			<div class="col">
				<a href="${pageContext.request.contextPath}/customer/list">Back
					to List</a>
			</div>
		</div>
	</div>

	<div class="container mt-3 text-center">
		<div class="row">
			<div class="col-lg-4"></div>
			<div class="col-lg-4">
				<form:form action="saveCustomer" modelAttribute="customer"
					method="POST">
					
					<!-- need to associate the data with customer id -->
					<form:hidden path="id" />
					
					<div class="mb-3">
						<label>First Name</label>
						<form:input path="firstName" class="form-control" />
					</div>
					<div class="mb-3">
						<label>Last Name</label>
						<form:input path="lastName" class="form-control" />
					</div>
					<div class="mb-3">
						<label>Email</label>
						<form:input path="email" class="form-control" />
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>