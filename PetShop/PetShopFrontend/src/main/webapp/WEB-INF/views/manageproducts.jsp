<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Add Product</title>

</head>
<body>
	<!-- include navigation bar -->
	<%@ include file="header.jsp"%>

	<!-- Page Header -->
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header" style="text-align: center">
				Manage Pets <small></small>
			</h1>
		</div>
	</div>
	<div class="col-lg-12">
		<input type="button" class="btn btn-primary" value="BACK"
			onclick="javascript:history.back()" />
	</div>

	<div class="container">
		<div class="row">

			<div class="col-md-3">
				<c:url value="/addproduct" var="addproduct" />
				<form:form role="form" action="${addproduct}" method="post"
					modelAttribute="productDetails" enctype="multipart/form-data">


					<div class="form-group">
						<form:label path="id" class="control-label">
							<spring:message text="ID" />
						</form:label>
						<form:input path="id" class="form-control" />
						<%-- <c:choose>
								<c:when test="${!empty product.id }">
									<form:input path="id" disabled="true" readonly="true" class="form-control" />
								</c:when>
								<c:otherwise>
									<form:input path="id" class="form-control" />
								</c:otherwise>
							</c:choose> --%>
						<form:errors path="id" />
					</div>

					<div class="form-group">
						<form:label path="name" class="control-label">
							<spring:message text="Name" />
						</form:label>
						<form:input path="name" class="form-control" />
						<form:errors path="name" />
					</div>

					<div class="form-group">
						<form:label path="price" class="control-label">
							<spring:message text="Price" />
						</form:label>
						<form:input path="price" class="form-control" />
						<form:errors path="price" />
					</div>

					<div class="form-group">
						<form:label path="description" class="control-label">
							<spring:message text="Description" />
						</form:label>
						<form:input path="description" class="form-control" />
						<form:errors path="description" />
					</div>

					<div class="form-group">
						<form:label path="categoryname" class="control-label">
							<spring:message text="Category" />
						</form:label>
						<form:select path="categoryname" class="form-control">
							<form:option value="NONE" label="--- Select ---" />
							<form:options items="${categoryList}" itemValue="name"
								itemLabel="name" />
						</form:select>
						<form:errors path="categoryname" class="control-label" />
					</div>


					<div class="form-group">
						<form:label path="multipartFile" class="control-label">
							<spring:message text="Select File" />
						</form:label>
						<form:input type="file" path="multipartFile" class="form-control" />
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
						<input type="submit" class="btn btn-primary" value="ADD PRODUCT" />
						<input type="reset" class="btn btn-primary" value="RESET" />
					</div>
				</form:form>
			</div>
			<br>
			<div class="col-md-8">
				<table class="table table-responsive">
					<thead>
						<tr>
							<th>IMAGE</th>
							<th>PRODUCT ID</th>
							<th>PRODUCT NAME</th>
							<th>PRODUCT DESCRIPTION</th>
							<th>CATEGORY</th>
							<th>EDIT</th>
							<th>DELETE</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${productList}" var="product">
							<tr>
								<td>${product.multipartFile}</td>
								<td>${product.id}</td>
								<td>${product.name}</td>
								<td>${product.description}</td>
								<td>${product.categoryname}</td>
								<td><a href="<c:url value="/product/edit/${product.id}"/>">EDIT</a></td>
								<td><a
									href=" <c:url value="/product/delete/${product.id}"/>">DELETE</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>


	<hr>
	<!-- include Footer -->
	<%@ include file="footer.jsp"%>
</body>
</html>