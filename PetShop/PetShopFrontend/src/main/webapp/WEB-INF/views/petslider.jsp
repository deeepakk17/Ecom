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
	border: 1px solid #E1E1E1;
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
	background-color: #F5F5DC;
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
	color: #219FD1;
}

.col-item .info .rating {
	color: #777;
}

.col-item .rating {
	/*width: 50%;*/
	float: left;
	font-size: 17px;
	text-align: right;
	line-height: 52px;
	margin-bottom: 10px;
	height: 52px;
}

.col-item .separator {
	border-top: 1px solid #E1E1E1;
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
	border-right: 1px solid #E1E1E1;
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
	<!-- include navigation bar -->
	<%@ include file="header.jsp"%>

	<div class="container">
		<div class="row">
			<div class="row">
				<div class="col-md-9">
					<h3>Pet Slider</h3>
				</div>
				<div class="col-md-3">
					<!-- Controls -->
					<div class="controls pull-right hidden-xs">
						<button class="btn btn-primary">View all</button>
						<a class="left fa fa-chevron-left btn btn-success"
							href="#carousel-example" data-slide="prev"></a><a
							class="right fa fa-chevron-right btn btn-success"
							href="#carousel-example" data-slide="next"></a>
					</div>
				</div>
			</div>
			<p></p>
			<div id="carousel-example" class="carousel slide hidden-xs"
				data-ride="carousel">
				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item">
						<div class="row">
							<c:forEach items="${productList}" var="product">
								<div class="col-sm-3">
									<div class="col-item">
										<div align="center">
											<img src="${product.location}" class="img-responsive" alt="a" />
										</div>
										<div class="info">
											<div class="row">
												<div class="price col-md-6">
													<h5>${product.name}</h5>
													<h5 class="price-text-color">Rs. ${product.price}</h5>
												</div>
												<div class="rating hidden-sm col-md-6">
													<i class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="fa fa-star"></i>
												</div>
											</div>
											<div class="separator clear-left">
												<p class="btn-add">
													<i class="fa fa-shopping-cart"></i><a
														href='<c:url value = "404.jsp" />' class="hidden-sm">Add
														to cart</a>
												</p>
												<p class="btn-details">
													<i class="fa fa-list"></i><a
														href="<c:url value = "404.jsp" />" class="hidden-sm">More
														details</a>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="col-item">
										<div align="center">
											<img src="#" class="img-responsive" alt="a" />
										</div>
										<div class="info">
											<div class="row">
												<div class="price col-md-6">
													<h5>Dog 2</h5>
													<h5 class="price-text-color">Rs. 3899</h5>
												</div>
												<div class="rating hidden-sm col-md-6"></div>
											</div>
											<div class="separator clear-left">
												<p class="btn-add">
													<i class="fa fa-shopping-cart"></i><a
														href="<c:url value = "404.jsp" />" class="hidden-sm">Add
														to cart</a>
												</p>
												<p class="btn-details">
													<i class="fa fa-list"></i><a
														href="<c:url value = "404.jsp" />" class="hidden-sm">More
														details</a>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="col-item">
										<div align="center">
											<img src="#" class="img-responsive" alt="a" />
										</div>
										<div class="info">
											<div class="row">
												<div class="price col-md-6">
													<h5>Dog 3</h5>
													<h5 class="price-text-color">Rs. 4599</h5>
												</div>

											</div>
											<div class="separator clear-left">
												<p class="btn-add">
													<i class="fa fa-shopping-cart"></i><a
														href="<c:url value = "404.jsp" />" class="hidden-sm">Add
														to cart</a>
												</p>
												<p class="btn-details">
													<i class="fa fa-list"></i><a
														href="<c:url value = "404.jsp" />" class="hidden-sm">More
														details</a>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="col-item">
										<div align="center">
											<img src="#" class="img-responsive" alt="a" />
										</div>
										<div class="info">
											<div class="row">
												<div class="price col-md-6">
													<h5>Dog 4</h5>
													<h5 class="price-text-color">Rs. 6999</h5>
												</div>
												<div class="rating hidden-sm col-md-6">
													<i class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="fa fa-star"></i>
												</div>
											</div>
											<div class="separator clear-left">
												<p class="btn-add">
													<i class="fa fa-shopping-cart"></i><a
														href="<c:url value = "404.jsp" />" class="hidden-sm">Add
														to cart</a>
												</p>
												<p class="btn-details">
													<i class="fa fa-list"></i><a
														href="<c:url value = "404.jsp" />" class="hidden-sm">More
														details</a>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>


				</div>

			</div>
		</div>
	</div>

	<!-- include Footer -->
	<%@ include file="footer.jsp"%>

</body>
</html>