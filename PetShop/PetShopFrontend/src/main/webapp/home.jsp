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
	<%-- <!-- include navigation bar -->
	<%@ include file="header.jsp"%> --%>
${successmessage}

<h1>Home page</h1>

<fieldset>
				<legend>Member Home Page</legend>
				<!-- here the href's value will be used to decide the 
					 controller to be executed on click of this link.
					 here "home" is mapped in spring mvc controller-->
				<a href="/home">Home</a>
				<br /><br />
				<h2><!-- display the userId just entered -->
				Welcome ${userDetails.username() }</h2>
				<br/>
			</fieldset>

	<%-- <!-- include Footer -->
	<%@ include file="footer.jsp"%> --%>

</body>
</html>