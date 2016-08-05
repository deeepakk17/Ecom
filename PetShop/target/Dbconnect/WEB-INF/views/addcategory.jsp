<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Category</title>
</head>
<body>
	
	<c:url var="actionadd" value="/addcategory"></c:url>
	<form:form action="${actionadd}" method="post" commandName="categoryTable">
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
<form method="POST" action="uploadFile" enctype="multipart/form-data">
		Select File  <input type="file" name="file">
 
		<input type="submit" value="Upload"> Press here to upload the file!
	</form>	
</body>
</html>