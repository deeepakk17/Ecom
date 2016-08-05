<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Products</title>
</head>
<body>
	<h1>List Products</h1>
	<%-- <c:if test="${!empty list }">
		<table align="left" border="1">
			<tr>
				<th>PRODUCT ID</th>
				<th>PRODUCT NAME</th>
				<th>PRODUCT PRICE</th>
				<th>PRODUCT DESCRIPTION</th>
			</tr>

		<c:forEach items="S{list}" var="product">
		<tr> 
		<td><c:out value="product.id"></c:out></td>
		<td><c:out value="product.name"></c:out></td>
		<td><c:out value="product.price"></c:out></td>
		<td><c:out value="product.description"></c:out></td>
		</tr>
		</c:forEach>	
		</table>
	</c:if> --%>
	
	<c:forEach items="S{list}" var="product">
	${product.assetNumber}<br/>
	</c:forEach>
	
</body>
</html>