<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Home | PetShop</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
	<!-- include navigation bar -->
	<%@ include file="header.jsp"%>


	<div id="LoginPage">
		<c:if
			test="${isUserClickedLoginHere==true || invalidCredentials=true }">
			<div id="error" ${message }></div>
			<%@include file="login.jsp"%>
		</c:if>
	</div>


	<div id="SignUpPage">
		<c:if test="${isUserClickedRegistereHere==true }">
			<%@include file="signup.jsp"%>
		</c:if>
	</div>



	<!-- include Footer -->
	<%@ include file="footer.jsp"%>

</body>
</html>