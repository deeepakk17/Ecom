<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Category</title>
</head>
<body>
<!-- include navigation bar -->
	<%@ include file="header.jsp"%>

<div class="col-md-4 col-offset-4">
	<c:url var="actionadd" value="/addcategory"></c:url>
	<form:form role="form" action="${actionadd}" method="post"
		modelAttribute="categoryDetails">
		
			<tr>
				<td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty category.id }">
						<td><form:input path="id" disabled="true" readonly="true" /></td>
						<form:errors path="id"/>
					</c:when>
					<c:otherwise>
						<td><form:input path="id" /></td>
						<form:errors path="id"/>
					</c:otherwise>
				</c:choose>
			</tr> 
			
			<div class="form-group">
				<form:label path="name" class="control-label">
						<spring:message text="Name" />
					</form:label>
				<form:input path="name" class="form-control"/>
				<form:errors path="name"/>
			</div>
			<div class="form-group">
				<form:label path="description" class="control-label">
						<spring:message text="Description" />
					</form:label>
				<form:input path="description" class="form-control"/>
				<form:errors path="description"/>
			</div>
			
						
			 <tr>
				<c:if test="${!empty category.name }">
					<td><input type="submit" value="SAVE CATEGORY" /></td>
				</c:if>
				<c:if test="${empty category.name }">
					<td><input type="submit" value="ADD CATEGORY" /></td>
				</c:if>

				<td><input type="reset" value="RESET" /></td>
			</tr> 
		
	</form:form>
	</div>
<!-- include Footer -->
	<%@ include file="footer.jsp"%>
</body>
</html>