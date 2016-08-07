<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<style type="text/css">
.products {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
	padding-left: 20%;
}

.products td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.products th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}


}
</style>
</head>
<body>

<!-- include navigation bar -->
	<%@ include file="header.jsp"%>
	
	<center><h1>Product List</h1></center><hr>

<table class="products" align="center" border="1">
<tr></tr>

		<tr>
			<th>PRODUCT ID</th>
			<th>PRODUCT NAME</th>
			<th>PRODUCT DESCRIPTION</th>
			<th>BUY</th>
			
					</tr>
		<c:if test="${!empty productList}">
		<c:forEach items="${productList}" var="product">
			<tr>
				<td>${product.id}</td>
				<td>${product.name}</td>
				<td>${product.description}</td>
				<td><a href="<c:url value="#"/>">ADD TO CART</a></td>
			</tr>
		</c:forEach>
		</c:if>
	</table>
<hr>

	
		

</body>
</html>