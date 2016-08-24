<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Category</title>
</head>
<body>
<!-- include navigation bar -->
	<%@ include file="header.jsp"%>


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
										href=" <c:url value="/category/delete/${category.id}"/>">DELETE</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>
	
	<!-- include Footer -->
	<%@ include file="footer.jsp"%>
</body>
</html>