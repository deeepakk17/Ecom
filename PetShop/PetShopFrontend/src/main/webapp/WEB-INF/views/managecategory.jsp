<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<title>Manage Categories</title>
</head>
<body>
	<!-- include navigation bar -->
	<%@ include file="header.jsp"%>
	<!-- Page Header -->
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header" style="text-align: center">
				Manage Category <small></small>
			</h1>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-3">
				${successmessage}
				<c:url value="/addcategory" var="addcategory" />
				<form:form role="form" action="${addcategory}" method="post"
					modelAttribute="categoryDetails" enctype="multipart/form-data">


					<div class="form-group">
						<form:label path="id" class="control-label">
							<spring:message text="ID" />
						</form:label>
						<form:input path="id" class="form-control" />
						<%-- <c:choose>
								<c:when test="${!empty category.id }">
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
						<form:label path="description" class="control-label">
							<spring:message text="Description" />
						</form:label>
						<form:input path="description" class="form-control" />
						<form:errors path="description" />
					</div>


					<div class="form-group">
						<%-- <c:if test="${!empty category.name }">
							<td><input type="submit" value="UPDATE CATEGORY" /></td>
						</c:if>
						<c:if test="${empty category.name }">
							<td><input type="submit" value="ADD CATEGORY" /></td>
						</c:if> --%>
					</div>

					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="ADD CATEGORY" />
						<input type="reset" class="btn btn-primary" value="RESET" />
					</div>
				</form:form>
			</div>
			<br>
			<div class="col-md-8">
				<table class="table table-responsive">
					<thead>
						<tr>
							<th>CATEGORY ID</th>
							<th>CATEGORY NAME</th>
							<th>CATEGORY DESCRIPTION</th>
							<th>EDIT</th>
							<th>DELETE</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${categoryList}" var="category">
							<tr>

								<td>${category.id}</td>
								<td>${category.name}</td>
								<td>${category.description}</td>
								<td><a
									href="<c:url value="/category/edit/${category.id}"/>">EDIT</a></td>
								<td><a
									href=" <c:url value="/category/delete/${category.id}"/>">DELETE</a></td>
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