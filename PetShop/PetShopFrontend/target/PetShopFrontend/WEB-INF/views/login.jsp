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
	<div class="container">
		<div class="col-md-4 col-offset-4">
			<c:url var="login" value="/login"></c:url>
			<form:form role="form" action="${login}" method="post">

				<div class="form-group">
					<label for="username">Username:</label> 
					<input type="text"
						class="form-control" name="username">
					<form:errors path="username" />
				</div>
				<div class="form-group">
					<label for="password">Password:</label> <input type="password"
						class="form-control" name="password">
					<form:errors path="password" />
				</div>
				<div class="checkbox">
					<label><input type="checkbox"> Remember me</label>
				</div>
				<button type="submit" value="Login" class="btn btn-default">Submit</button>
			</form:form>
		</div>
	</div>
	<!-- include Footer -->
	<%@ include file="footer.jsp"%>
</body>
</html>