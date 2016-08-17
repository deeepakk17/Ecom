<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

	<c:url var="signup" value="/register"></c:url>
	<form:form action="${signup}" method="post" commandName="userDetails">
		<table border="1" align="center">
			<tr>
				<td><form:label path="firstname">
						<spring:message text="First Name" />
					</form:label></td>
				<td><form:input path="firstname" /></td>
			</tr>
			<tr>
				<td><form:label path="lastname">
						<spring:message text="Last Name" />
					</form:label></td>
				<td><form:input path="lastname" /></td>
			</tr>
			<tr>
				<td><form:label path="username">
						<spring:message text="User Name" />
					</form:label></td>
				<td><form:input path="username" /></td>
			</tr>
			<tr>
				<td><form:label path="mobilenumber">
						<spring:message text="Mobile Number" />
					</form:label></td>
				<td><form:input path="mobilenumber" /></td>
			</tr>
			<tr>
				<td><form:label path="password">
						<spring:message text="Password" />
					</form:label></td>
				<td><form:input path="password" /></td>
			</tr>
			<tr>
				<td><form:label path="confirmpassword">
						<spring:message text="Confirm Password" />
					</form:label></td>
				<td><form:input path="confirmpassword" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Sign Up" /></td>
			</tr>

		</table>
	</form:form>


	<!-- include Footer -->
	<%@ include file="footer.jsp"%>
</body>
</html> --%>