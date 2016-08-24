<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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
	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
		<input type="button" class="btn btn-primary" value="BACK"
			onclick="javascript:history.back()" />
	</div>
		<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
			<h1 class="page-header" style="text-align: center">
				Manage Category <small></small>
			</h1>
		</div>
	</div>

	<div class="container ">
		<div class="row">
			<div class="col-md-3">
				<p class="message">${successmessage}</p>
				<c:url value="/admin/addcategory" var="act" />
				<form:form role="form" action="${act}" method="POST"
					modelAttribute="categoryDetails" enctype="multipart/form-data">


					<div class="form-group">
						<form:label path="id" class="control-label">
							<spring:message text="ID" />
						</form:label>
						<c:choose>
							<c:when test="${!empty categoryDetails.id }">
								<form:input path="id" readonly="true" class="form-control" />
							</c:when>
							<c:otherwise>
								<form:input path="id" class="form-control" />
							</c:otherwise>
						</c:choose>
						<form:errors path="id" class="err" />
					</div>

					<div class="form-group">
						<form:label path="name" class="control-label">
							<spring:message text="Name" />
						</form:label>
						<form:input path="name" class="form-control" />
						<form:errors path="name" class="err" />
					</div>

					<div class="form-group">
						<form:label path="description" class="control-label">
							<spring:message text="Description" />
						</form:label>
						<form:input path="description" class="form-control" />
						<form:errors path="description" class="err" />
					</div>


					<div class="form-group">
						<c:if test="${!empty categoryDetails.name }">

							<input type="submit" class="btn btn-primary"
								value="UPDATE CATEGORY" />
						</c:if>
						<c:if test="${empty categoryDetails.name }">
							<input type="submit" class="btn btn-primary" value="ADD CATEGORY" />
						</c:if>

						<input type="reset" class="btn btn-primary" value="RESET" />
					</div>

<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					
				</form:form>
			</div>
			<br>

			<div class="col-md-8 oList">
				<c:if test="${!empty categoryList }">
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
										href="<c:url value="/category/edit/${category.id}" />">EDIT</a></td>
									<td><a
										href="<c:url value="/category/delete/${category.id}"/>">DELETE</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>
			</div>
		</div>
	</div>


	<hr>
	<!-- include Footer -->
	<%@ include file="footer.jsp"%>
</body>
</html>