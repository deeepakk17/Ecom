<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Home | PetShop</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
	


		<%@ include file="header.jsp"%>
	
	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<h1 class="page-header" style="text-align: center">
				Admin Home <small></small>
			</h1>
		</div>

		
		
			<div class="row" style="padding-top:6%;padding-bottom:6%;padding-left:2%;padding-right:2%;">

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


	</sec:authorize>
	
	<sec:authorize access="hasRole('ROLE_USER')">
	<%@ include file="carousel.jsp"%>
	
	
	<!-- include pets -->
	<%@ include file="homepets.jsp"%> 
	
	<!-- include carousel -->
	<%@ include file="services.jsp"%>

	</sec:authorize>


	<!-- include Footer -->
	<%@ include file="footer.jsp"%>

</body>
</html>