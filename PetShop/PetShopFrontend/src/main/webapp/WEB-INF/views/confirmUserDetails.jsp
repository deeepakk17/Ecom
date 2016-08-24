<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Home | Confirm</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

	<!-- include navigation bar -->
	<%@ include file="header.jsp"%>

	<div class="container ">
		<div class="col-md-4 col-sm-4 col-offset-4">

			
			<!-- Page Header -->
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<h1 class="page-header" style="text-align: center">Confirm
						Details</h1>
				</div>
			</div>

			<div class="container ">
				<div class="row">

					<form:form class="form-horizontal" role="form" modelAttribute="userDetails">

						<div class="form-group">
							<form:label path="username" class="control-label">
								<spring:message text="UserName:" />
							</form:label>
							<form:input path="username" readonly="true" class="form-control"/>
						
						</div>
						<div class="form-group">
							<form:label path="firstname" class="control-label">
								<spring:message text="First Name:" />
							</form:label>
							<form:input path="firstname" readonly="true" class="form-control"/>
							
						</div>
						<div class="form-group">
							<form:label path="lastname" class="control-label">
								<spring:message text="Last Name:" />
							</form:label>
							<form:input path="lastname" readonly="true" class="form-control"/>
							
						</div>
						<div class="form-group">
							<form:label path="mobilenumber" class="control-label">
								<spring:message text="Mobile Number:" />
							</form:label>
							<form:input path="mobilenumber" readonly="true" class="form-control"/>
							
						</div>

						<div class="form-group">
							<form:label path="password" class="control-label">
								<spring:message text="Password:" />
							</form:label>
							<form:input path="password" readonly="true" class="form-control"/>
							
						</div>
						<div class="form-group">
							<form:label path="confirmpassword" class="control-label">
								<spring:message text="Confirm password :" />
							</form:label>
							<form:input path="confirmpassword" readonly="true" class="form-control"/>
							

						</div>
						<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
						<div class="form-group">
							<input type="submit" name="_eventId_edit" class="btn btn-primary"
								value="Edit" /> <input type="submit" name="_eventId_submit"
								class="btn btn-primary" value="Confirm Details" />
						</div>

					</form:form>
					
					
				</div>
			</div>
		</div>
	</div>
	<!-- include Footer -->
	<%@ include file="footer.jsp"%>


</body>
</html>