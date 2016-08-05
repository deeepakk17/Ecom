<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Categories</title>
</head>
<body>
<table>
${successmessage}
<tr>
<th>
<a href="<c:url value="/addcategorypage"></c:url>" > Add Category </a>
</th>
<th>
<a href="<c:url value="/listcategorypage"></c:url>" > List Category </a>
</th>
</tr>
</table>
</body>
</html>