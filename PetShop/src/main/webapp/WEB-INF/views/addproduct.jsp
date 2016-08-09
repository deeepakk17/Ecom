<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<title>Add Product</title>
</head>
<body>
	<!-- include navigation bar -->
	<%@ include file="header.jsp"%>
	<%-- <form method="POST" action="uploadFile" enctype="multipart/form-data">
		<table>
		<tr>
		
		</tr>
		<tr>
		<td>File Name:</td>
		<td><input type="text" name="name"><br></td>
		</tr>
		<tr>
		<td><input type="submit" value="Upload"></td>
		</tr>
		</table>
	</form> --%>

	<%-- 	<form action="<c:url value="/addproduct" />" method="post"	 enctype="multipart/form-data">
			<table>
		
		<tr>
				<td>ID</td>
				<c:choose>
					<c:when test="${!empty product.id }">
						<td><input type="text" name="id" /></td>
					</c:when>
					<c:otherwise>
						<td><input type="text" name="id" /></td>
					</c:otherwise>
				</c:choose>

			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><input type="text" name="price" /></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><input type="text" name="description" /></td>
			</tr>
			<tr>
				<td>Select File</td>
		<td><input type="file" name="file"></td>
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
	</form>
	 --%>
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
				<td>${product.multipartFile}</td>
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