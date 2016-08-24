<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

<!-- Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>Pets</title>
<style>
.col-item {
	border: 2px solid #fff;
	border-radius: 5px;
	background: #FFF;
	
}

.col-item .photo img {
	margin: 0 auto;
	width: 100%;
}

.col-item .info {
	padding: 10px;
	border-radius: 0 0 5px 5px;
	margin-top: 1px;
}

.col-item:hover .info {
	background-color: rgba(215, 215, 244, 0.5);
}

.col-item .price {
	/*width: 50%;*/
	float: left;
	margin-top: 5px;
}

.col-item .price h5 {
	line-height: 20px;
	margin: 0;
}

.price-text-color {
	color: #00990E;
}

.col-item .info .rating {
	color: #003399;
}

.col-item .separator {
	border-top: 1px solid #FFCCCC;
}

.clear-left {
	clear: left;
}

.col-item .separator p {
	line-height: 20px;
	margin-bottom: 0;
	margin-top: 10px;
	text-align: center;
}

.col-item .separator p i {
	margin-right: 5px;
}

.col-item .btn-add {
	width: 50%;
	float: left;
}

.col-item .btn-add {
	border-right: 1px solid #CC9999;
}

.col-item .btn-details {
	width: 50%;
	float: left;
	padding-left: 10px;
}

.controls {
	margin-top: 20px;
}

[data-slide="prev"] {
	margin-right: 10px;
}
</style>

</head>
<body>
	


	<!-- Page Content -->
	<div class="container">

		<!-- Page Header -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">
					Choose your Pets <small>  </small>
				</h1>
			</div>
		</div>
		<!-- /.row -->

		<!-- Projects Row -->
		<div class="row">
			<c:forEach items="${productList}" var="product">
				<div class="col-md-3 col-sm-4" style="padding-bottom: 16px">
					<div class="col-item">
						<div class="info">
							<div class="row">
								<div class="price col-md-6">
									<h5>${product.name}</h5>
									<h5 class="price-text-color">Rs. ${product.price}</h5>
								</div>
								<div class="rating hidden-sm col-md-6">
									<i class="price-text-color fa fa-star"></i> <i
										class="price-text-color fa fa-star"></i> <i
										class="price-text-color fa fa-star"></i>
								</div>
							</div>
						</div>

						<div class="photo">
							<img
								src="<c:url value='/assets/images/products/${product.id}.jpg'/>"
								class="img-responsive" alt="${product.name}" />
						</div>
						<div class="info">
							<div class="separator clear-left">
								<p class="btn-add">
									<i class="fa fa-shopping-cart"></i><a href="#"
										class="hidden-sm">Add to cart</a>
								</p>
								<p class="btn-details">
									<i class="fa fa-list"></i><a href="<c:url value="product/view/${product.id}"/>" class="hidden-sm">View</a>
								</p>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<!-- /.row -->



		<hr>



	</div>
	<!-- /.container -->



	
</body>
</html>