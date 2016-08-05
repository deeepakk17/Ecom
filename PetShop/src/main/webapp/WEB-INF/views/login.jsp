<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
</head>
<body>
	<!-- include navigation bar -->
	<%@ include file="header.jsp"%>
${message}
	<c:url var="login" value="/.chklogin"></c:url>
	<form:form action="${login}" method="post">
		<table >
			<tr>
				<td>Username</td>
				<td><input type="text" name="username"></td>
			</tr>

			<tr>
				<td>Password</td>
				<td><input type="password" name="password"></td>
			</tr>

			<tr>
				<td><input type="submit" value="Login"></td>
			</tr>
		</table>
	</form:form>
	<!-- include Footer -->
	<%@ include file="footer.jsp"%>
</body>
</html>