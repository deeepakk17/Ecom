<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Category</title>
</head>
<body>
	<table align="left" border="1">

		<tr>
			<th>CATEGORY ID</th>
			<th>CATEGORY NAME</th>
			<th>CATEGORY DESCRIPTION</th>
			<th>EDIT</th>
			<th>DELETE</th>
		</tr>
		<c:forEach items="${categoryList}" var="category">
			<tr>
				<td>${category.id}</td>
				<td>${category.name}</td>
				<td>${category.description}</td>
				<td><a href="<c:url value="category/edit/${category.id}"/>">EDIT</a></td>
				<td><a href=" <c:url value="category/delete/${category.id}"/>">DELETE</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>