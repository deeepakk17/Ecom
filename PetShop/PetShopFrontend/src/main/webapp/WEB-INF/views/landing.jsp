<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<!-- include navigation bar -->
	<%@ include file="header.jsp"%>
	
	<div class="content">
			<fieldset>
				<legend>Navigation menu</legend>

				<!-- here the href's value will be used to decide the 
					 controller to be executed on click of this link.
					 here "memberShip" is mapped in FlowController mapping -->
				<a href="registration.obj" style="margin:50;">Become Member</a>
			</fieldset>
		</div>

	<!-- include carousel -->
	<%@ include file="carousel.jsp"%>
	
	
	<!-- include carousel -->
	<%@ include file="services.jsp"%>
	
	<!-- include Footer -->
	<%@ include file="footer.jsp"%>

</body>
</html>