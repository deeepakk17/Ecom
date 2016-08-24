<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Category</title>
</head>
<body>
<!-- include navigation bar -->
	<%@ include file="header.jsp"%>
	<hr/>

<div class="container" >
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
							 <c:choose>
								<c:when test="${!empty category.id }">
									<form:input path="id" disabled="true" readonly="true" class="form-control" />
								</c:when>
								<c:otherwise>
									<form:input path="id" class="form-control" />
								</c:otherwise>
							</c:choose>
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
						 <c:if test="${!empty category.name }">
							<input type="submit" class="btn btn-primary" value="UPDATE CATEGORY" />
						</c:if>
						<c:if test="${empty category.name }">
							<input type="submit" class="btn btn-primary" value="ADD CATEGORY" />
						</c:if> 
					</div>

					
				</form:form>
			</div>
			</div>
			</div>
			<hr/>
<!-- include Footer -->
	<%@ include file="footer.jsp"%>
</body>
</html>