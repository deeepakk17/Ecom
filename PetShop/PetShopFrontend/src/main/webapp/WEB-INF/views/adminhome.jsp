<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Admin</title> 
</head>
<body>
<!-- include navigation bar -->
<%@ include file="header.jsp"%>
	
<table>
<tr>
<th>
<a href="<c:url value="/gomanageproducts"></c:url>" > Manage Product </a>
</th>
</tr>
<tr>
<th>
<a href="<c:url value="/gomanagecategories"></c:url>" > Manage Category </a>
</th>
</tr>
<tr>
<th>
<a href="<c:url value="/gomanagesupplier"></c:url>" > Manage Supplier </a>
</th>
</tr>

</table>
<!-- include Footer -->
	<%@ include file="footer.jsp"%>
</body>
</html>
