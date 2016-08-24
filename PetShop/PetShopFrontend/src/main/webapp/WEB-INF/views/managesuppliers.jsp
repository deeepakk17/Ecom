<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE >
<html>
<head>
<title>Manage Supplier</title>
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
				Manage Pets <small></small>
			</h1>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<c:url value="/admin/addsupplier" var="addsupplier" />
				<form:form role="form" action="${addsupplier}" method="post"
					modelAttribute="supplierDetails" enctype="multipart/form-data">


					<div class="form-group">
						<form:label path="id" class="control-label">
							<spring:message text="ID" />
						</form:label>
						<form:input path="id" class="form-control" />
						<%-- <c:choose>
								<c:when test="${!empty supplier.id }">
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
					</div>

					<div class="form-group">
						<form:label path="address" class="control-label">
							<spring:message text="Address" />
						</form:label>
						<form:input path="address" class="form-control" />
					</div>

					<div class="form-group">
						<form:label path="image" class="control-label">
							<spring:message text="Select File" />
						</form:label>
						<form:input type="file" path="image" class="form-control" />
					</div>




					<div class="form-group">
						<%-- <c:if test="${!empty supplier.name }">
							<td><input type="submit" value="UPDATE SUPPLIER" /></td>
						</c:if>
						<c:if test="${empty supplier.name }">
							<td><input type="submit" value="ADD SUPPLIER" /></td>
						</c:if> --%>
					</div>

					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="ADD SUPPLIER" />
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
							<th>SUPPLIER ID</th>
							<th>SUPPLIER NAME</th>
							<th>SUPPLIER ADDRESS</th>
							<th>EDIT</th>
							<th>DELETE</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${supplierList}" var="supplier">
							<tr>
								<td>${supplier.image}</td>
								<td>${supplier.id}</td>
								<td>${supplier.name}</td>
								<td>${supplier.address}</td>
								<td><a
									href="<c:url value="/supplier/edit/${supplier.id}"/>">EDIT</a></td>
								<td><a
									href=" <c:url value="/supplier/delete/${supplier.id}"/>">DELETE</a></td>
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