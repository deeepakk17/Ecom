<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html ">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Page not found</title>
</head>
<body>
<!-- include navigation bar -->
	<%@ include file="header.jsp"%>
<section id="error" class="container text-center">
<h1>404, Page not found</h1>
<p>The Page you are looking for doesn't exist or an other error occurred.</p>
<a class="btn btn-primary" href="<c:url value = "/" />">GO BACK TO THE HOMEPAGE</a>
</section>

<!-- include Footer -->
	<%@ include file="footer.jsp"%>
</body>
</html>