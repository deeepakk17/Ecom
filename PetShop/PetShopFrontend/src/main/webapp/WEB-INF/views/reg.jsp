<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<!-- include navigation bar -->

	<%@ include file="header.jsp"%>
<c:url var="signup" value="/register"></c:url>
	<form:form action="${signup}" method="post" modelAttribute="userDetails">
		<table>
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
</body>
</html>