<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Products</title>
</head>
<body>
<!-- include navigation bar -->
	<%@ include file="header.jsp"%>
${successmessage}
<table>
<tr>
<th>
<a href="<c:url value="/addproductpage"></c:url>" > Add Product </a>
</th>
<th>
<a href="<c:url value="/listproduct"></c:url>" > List Product </a>
</th>
</tr>

</table>

	

<!-- include Footer -->
	<%@ include file="footer.jsp"%>


</body>
</html>