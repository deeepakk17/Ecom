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
<style type="text/css">
.container .form-group span {
	color: #ff0000
}
</style>
</head>
<body>
	<!-- include navigation bar -->
	<%@ include file="header.jsp"%>

	
<br>
	<div class="container ">
	<div class="row ">
	<div class="col-md-1"></div>
		<div class="col-md-10 ">
			<form:form role="form" modelAttribute="userDetails">

				<div class="form-group">
					<form:label path="firstname" class="control-label">
						<spring:message text="First Name" />
					</form:label>
					<form:input path="firstname" class="form-control" />

					<!-- to display validation messages -->
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('firstname')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
				</div>


				<div class="form-group">
					<form:label path="lastname" class="control-label">
						<spring:message text="Last Name" />
					</form:label>
					<form:input path="lastname" class="form-control" />

					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('lastname')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
				</div>

				<div class="form-group">
					<form:label path="username" class="control-label">
						<spring:message text="User Name" />
					</form:label>
					<form:input path="username" class="form-control" />

					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('username')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
				</div>

				<div class="form-group">
					<form:label path="mobilenumber" class="control-label">
						<spring:message text="Mobile Number" />
					</form:label>
					<form:input path="mobilenumber" class="form-control" />
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('mobilenumber')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
				</div>

				<div class="form-group">
					<form:label path="password" class="control-label">
						<spring:message text="Password" />
					</form:label>
					<form:input path="password" class="form-control" />
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
				</div>

				<div class="form-group">
					<form:label path="confirmpassword" class="control-label">
						<spring:message text="Confirm Password" />
					</form:label>
					<form:input path="confirmpassword" class="form-control" />
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('confirmpassword')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
				</div>

				<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
				<div class="form-group">
					<input type="submit" name="_eventId_submit" class="btn btn-primary" value="Register" />
				</div>

			</form:form>
<div class="col-md-1 "></div></div>
		</div>
	</div>



	<!-- include Footer -->
	<%@ include file="footer.jsp"%>
</body>
</html>