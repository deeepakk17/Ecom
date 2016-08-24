<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<!-- Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>view</title>
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

h5 {
color:#fff;
}

</style>
</head>
<body>

	<!-- include navigation bar -->
	<%@ include file="header.jsp"%>

	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
		<input type="button" class="btn btn-primary" value="BACK"
			onclick="javascript:history.back()" />
	</div>
	
	<div class="col-md-12 col-sm-12">

			
			<div class=" col-md-6 col-sm-6">
				<img
					src="<c:url value='/assets/images/products/${productDetails.id}.jpg'/>"
					class="img-responsive" alt="${productDetails.name}" />
			</div>
			<div class="info  col-sm-6 col-md-6">
				<div class="price ">
					<h1>${productDetails.name}</h1>
					<h1 class="price-text-color">Rs. ${productDetails.price}</h1>
				</div>
				<div class="price ">
					<h1>Description</h1>
					<h1 class="price-text-color">${productDetails.description}</h1>
				</div>

				<div class="clear-left">
					<p class="btn-add">
					<h1>	<i class="fa fa-shopping-cart"></i><a href="#" class="hidden-sm">Add
							to cart</a> </h1>
					</p>

				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	


	<!-- include Footer -->
	<%@ include file="footer.jsp"%>

</body>
</html>