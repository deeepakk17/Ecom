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

	<c:url var="actionadd" value="/addcategory"></c:url>
	<form:form action="${actionadd}" method="post"
		modelAttribute="categoryTable">
		<table>
			<tr>
				<td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty category.id }">
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
				<td><form:label path="description">
						<spring:message text="Description" />
					</form:label></td>
				<td><form:input path="description" /></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<c:if test="${!empty category.name }">
					<td><input type="submit" value="SAVE CATEGORY" /></td>
				</c:if>
				<c:if test="${empty category.name }">
					<td><input type="submit" value="ADD CATEGORY" /></td>
				</c:if>

				<td><input type="reset" value="RESET" /></td>
			</tr>
		</table>
	</form:form>
<!-- include Footer -->
	<%@ include file="footer.jsp"%>
</body>
</html>