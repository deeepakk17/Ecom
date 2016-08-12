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
<%-- <table>
<tr>
<th>
<a href="<c:url value="/addproductpage"></c:url>" > Add Product </a>
</th>
<th>
<a href="<c:url value="/listproduct"></c:url>" > List Product </a>
</th>
</tr>

</table> --%>


<c:url value="/addproduct" var="addproduct"/>
	<form:form action="${addproduct}" method="post"
		modelAttribute="productTable" enctype="multipart/form-data">
		<table>

			<tr>
				<td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty product.id }">
						<td><form:input path="id" disabled="true" readonly="true" /></td>
					</c:when>
					<c:otherwise>
						<td><form:input path="id" /></td>
					</c:otherwise>
				</c:choose>

			</tr>
			<tr>
				<td><form:label path="name">
						<spring:message text="Name" />
					</form:label></td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td><form:label path="price">
						<spring:message text="Price" />
					</form:label></td>
				<td><form:input path="price" /></td>
			</tr>
			<tr>
				<td><form:label path="description">
						<spring:message text="Description" />
					</form:label></td>
				<td><form:input path="description" /></td>
			</tr>
			<tr>
				<td><form:label path="multipartFile">
						<spring:message text="Select File" />
					</form:label></td>
				<td><form:input type="file"  path="multipartFile"/></td>
			</tr>
			<tr>
				<c:if test="${!empty product.name }">
					<td><input type="submit" value="SAVE PRODUCT" /></td>
				</c:if>
				<c:if test="${empty product.name }">
					<td><input type="submit" value="ADD PRODUCT" /></td>
				</c:if>

				<td><input type="reset" value="RESET" /></td>
			</tr>

		</table>
	</form:form>


	<table align="left" border="1px">

		<tr>
		<th>IMAGE</th>
			<th>PRODUCT ID</th>
			<th>PRODUCT NAME</th>
			<th>PRODUCT DESCRIPTION</th>
			<th>EDIT</th>
			<th>DELETE</th>
		</tr>
		<c:forEach items="${productList}" var="product">
			<tr>
				<td>${product.id}</td>
				<td>${product.name}</td>
				<td>${product.description}</td>
				<td><a href="<c:url value="product/edit/${product.id}"/>">EDIT</a></td>
				<td><a href=" <c:url value="product/delete/${product.id}"/>">DELETE</a></td>
			</tr>
		</c:forEach>
	</table>

	

<!-- include Footer -->
	<%@ include file="footer.jsp"%>


</body>
</html>