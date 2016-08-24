<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Admin</title>
</head>
<body>
	<!-- include navigation bar -->
	<%@ include file="header.jsp"%>
	
	
		<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
			<h1 class="page-header" style="text-align: center">
				Admin Home <small></small>
			</h1>
		</div>
	

	<div class="row" style="padding: 2%;">

		<div class="col-md-4 col-sm-4 btn "
			style="background-color: white; text-align: center;">
			<a href="<c:url value="/admin/gomanagecategories"></c:url>"><b>
					Manage Category </b> </a>
		</div>

		<div class="col-md-4 col-sm-4 btn "
			style="background-color: white; text-align: center;">
			<a href="<c:url value="/admin/gomanageproducts"></c:url>"> <b>Manage
					Product</b>
			</a>
		</div>

		<div class="col-md-4 col-sm-4 btn "
			style="background-color: white; text-align: center;">
			<a href="<c:url value="/admin/gomanagesupplier"></c:url>"> <b>
					Manage Supplier</b>
			</a>
		</div>
	</div>
	<!-- include Footer -->
	<%@ include file="footer.jsp"%>
</body>
</html>
