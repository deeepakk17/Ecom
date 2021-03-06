<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Register</title>
</head>
<body>
	<!-- include navigation bar -->

	<%@ include file="header.jsp"%>

	<div class="container ">
		<div class="col-md-4 col-sm-4 col-offset-4">
			<c:url var="signup" value="/register"></c:url>
			<form:form role="form" action="${signup}" method="post" modelAttribute="userDetails">

				<div class="form-group">

					<form:label path="firstname" class="control-label">
						<spring:message text="First Name" />
					</form:label>
					<form:input path="firstname" class="form-control" />
					<form:errors path="firstname" />
				</div>

				<div class="form-group">

					<form:label path="lastname" class="control-label">
						<spring:message text="Last Name" />
					</form:label>
					<form:input path="lastname" class="form-control" />
					<form:errors path="lastname"  />
				</div>
				<div class="form-group">

					<form:label path="username" class="control-label">
						<spring:message text="User Name" />
					</form:label>
					<form:input path="username" class="form-control" />
					<form:errors path="username"  />
				</div>
				<div class="form-group">

					<form:label path="mobilenumber" class="control-label">
						<spring:message text="Mobile Number" />
					</form:label>
					<form:input path="mobilenumber" class="form-control" />
					<form:errors path="mobilenumber"/>

				</div>
				<div class="form-group">
					<form:label path="password" class="control-label">
						<spring:message text="Password" />
					</form:label>
					<form:input path="password" class="form-control" />
					<form:errors path="password"/>
				</div>
				<div class="form-group">

					<form:label path="confirmpassword" class="control-label">
						<spring:message text="Confirm Password" />
					</form:label>
					<form:input path="confirmpassword" class="form-control" />
					<form:errors path="confirmpassword"/>
				</div>
				<div class="form-group">
<button type="submit" class="btn btn-default">Sign Up</button>
			<!-- <input type="submit" value="Sign Up" /> -->	
			</div>

			</form:form>
		</div>
	</div>
	<!-- include Footer -->
	<%@ include file="footer.jsp"%>
</body>
</html>