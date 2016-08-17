<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

<!-- Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Custom CSS -->
<link href="assets/css/3-col-portfolio.css" rel="stylesheet">

<title>Pets</title>


</head>
<body>
	<!-- include navigation bar -->
	<%@ include file="header.jsp"%>


	<!-- Page Content -->
	<div class="container">

		<!-- Page Header -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">
					Choose your Pets <small> Dogs </small>
				</h1>
			</div>
		</div>
		<!-- /.row -->

		<!-- Projects Row -->
		<div class="row">
			<c:forEach items="${productList}" var="product">
				<div class="col-md-3 portfolio-item">
					<div align="center">
						<img src="/assets/images/products/${product.id}.jpg"  class="img-responsive"
							alt="${product.name}" />
					</div>

					<h3>
						<a>${product.name}</a>
					</h3>
					<h3>
						<a>Rs. ${product.price}</a>
					</h3>

				</div>
			</c:forEach>
		</div>
		<!-- /.row -->



		<hr>

		<!-- Pagination -->
		<div class="row text-center">
			<div class="col-lg-12">
				<ul class="pagination">
					<li><a href="#">&laquo;</a></li>
					<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">&raquo;</a></li>
				</ul>
			</div>
		</div>
		<!-- /.row -->

		<hr>


	</div>
	<!-- /.container -->



	<!-- include Footer -->
	<%@ include file="footer.jsp"%>
</body>
</html>