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
	

	<div class="content">
		<fieldset>
			<legend>Confirm Details</legend>
			<!-- for triggering webflow events using links,	 the eventId to be triggered is given in "href" attribute as:
				 -->
			<a href="${flowExecutionUrl}&_eventId_home">Home</a><br />
			<br />
			<form:form modelAttribute="userDetails">
				<form:label path="username">UserName:</form:label>${userDetails.username}
					<br />
				<br />
				<form:label path="firstname">First Name:</form:label>${userDetails.firstname}
					<br />
				<br />
				<form:label path="lastname">Last Name:</form:label>${userDetails.lastname}
					<br />
				<br />
				<form:label path="mobilenumber">Mobile Number:</form:label>${userDetails.mobilenumber}
					<br />
				<br />
				
				<form:label path="password">Password:</form:label>${userDetails.password}
					<br />
				<br />
				<form:label path="confirmpassword">Confirm password :</form:label>${userDetails.confirmpassword}
					<br />
				<br />
				<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
				<input name="_eventId_edit" type="submit" value="Edit" />
				<input name="_eventId_submit" type="submit" value="Confirm Details" />
				<br />
			</form:form>
		</fieldset>
	</div>

	

</body>
</html>