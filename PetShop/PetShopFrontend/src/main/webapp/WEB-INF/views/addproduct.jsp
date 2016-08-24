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
	<div class=" col-md-4 col-offset-4">
		<c:url value="/addproduct" var="addproduct" />
		<form:form role="form" action="${addproduct}" method="post"
			modelAttribute="productDetails" enctype="multipart/form-data">


			<div class="form-group">
				<form:label path="id" class="control-label">
					<spring:message text="ID" />
				</form:label>
				<form:input path="id" class="form-control"/>
				<form:errors path="id"/>
				<%-- <c:choose>
					<c:when test="${!empty product.id }">
						<td><form:input path="id" disabled="true" readonly="true" /></td>
					</c:when>
					<c:otherwise>
						<td><form:input path="id" /></td>
					</c:otherwise>
				</c:choose> --%>

			</div>
			<div class="form-group">
				<form:label path="name" class="control-label">
					<spring:message text="Name" />
				</form:label>
				<form:input path="name" class="form-control" />
				<form:errors path="name"/>
			</div>
			<div class="form-group">
				<form:label path="price" class="control-label">
					<spring:message text="Price" />
				</form:label>
				<form:input path="price" class="form-control" />
				<form:errors path="price"/>
			</div>
			<div class="form-group">
				<form:label path="description" class="control-label">
					<spring:message text="Description" />
				</form:label>
				<form:input path="description" class="form-control" />
				<form:errors path="description"/>
			</div>
			
			<div class="form-group">
			<form:select path="category">
					  <form:option value="NONE" label="--- Select ---" />
					  
					  <form:options items="${category.name}" itemValue="id" itemLabel="name" />
					 
				       </form:select>
				       <form:errors path="category" class="control-label"  />
				       </div>
			<div class="form-group">
				<form:label path="multipartFile" class="control-label">
					<spring:message text="Select File" />
				</form:label>
				<form:input type="file" path="multipartFile" class="form-control"/>
				<form:errors path="multipartFile"/>
			</div>
			<div class="form-group">

				<%-- <c:if test="${!empty product.name }">
					<td><input type="submit" value="SAVE PRODUCT" /></td>
				</c:if>
				<c:if test="${empty product.name }">
					<td><input type="submit" value="ADD PRODUCT" /></td>
				</c:if> --%>
			</div>
			<div class="form-group">
				<input type="submit" value="ADD PRODUCT" /> 
				<input type="reset" value="RESET" />
			</div>
		</form:form>

	</div>

	<table align="center" border="1px">

		<tr>
			<th>IMAGE</th>
			<th>PRODUCT ID</th>
			<th>PRODUCT NAME</th>
			<th>PRODUCT DESCRIPTION</th>
			<th>PRODUCT CATEGORY</th>
			<th>EDIT</th>
			<th>DELETE</th>
		</tr>
		<c:forEach items="${productList}" var="product">
			<tr>
				<td>${product.multipartFile}</td>
				<td>${product.id}</td>
				<td>${product.name}</td>
				<td>${product.description}</td>
				<td>${product.category}</td>
				<td><a href="<c:url value="product/edit/${product.id}"/>">EDIT</a></td>
				<td><a href=" <c:url value="product/delete/${product.id}"/>">DELETE</a></td>
			</tr>
		</c:forEach>
	</table>

	<!-- include Footer -->
	<%@ include file="footer.jsp"%>
</body>
</html>