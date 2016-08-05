<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Add Product</title>
</head>
<body>

	<c:url var="actionadd" value="/addproduct"></c:url>
	<form:form action="${actionadd}" method="post">
		<table>
			<tr>
				<td>Product ID</td>
				<td><input type="text" name="productid"></td>
			</tr>

			<tr>
				<td>Product Name</td>
				<td><input type="text" name="productname" /></td>
			</tr>

			<tr>
				<td>Product Price</td>
				<td><input type="number" name="productprice"></td>
			</tr>

			<tr>
				<td>Product Description</td>
				<td><input type="text" name="productdescription"></td>
			</tr>

			<tr>
				<td><input type="submit" value="Add Product"></td>
				<td><input type="reset" value="Reset"></td>
			</tr>

		</table>
	</form:form>

</body>
</html>