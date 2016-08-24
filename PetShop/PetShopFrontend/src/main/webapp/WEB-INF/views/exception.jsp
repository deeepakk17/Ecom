<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Exception | PetShop</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
	<!-- include navigation bar -->
	<%@ include file="header.jsp"%>

	<div class="content" style="width: 60%">
		
		<legend>Error occurred</legend>
		${exception }
		</fieldset>
	</div>

	<!-- include Footer -->
	<%@ include file="footer.jsp"%>
</body>
</html>