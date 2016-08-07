<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<!-- include navigation bar -->
	<%@ include file="header.jsp"%>
	
	<div>
	<table>
<tr>
<th>
<a href="<c:url value="/adminhome"></c:url>" > Admin Home </a>
</th>
</tr>
</table>
	</div>
	
	
	
	

	<div class="container" style="width: 100%">
		<!-- carousel slide -->
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item">
					<img src="<c:url value ="/assets/img/slide1.png"></c:url>"
						class="img-thumbnail" alt="Dogs">
				</div>
				<div class="item active">
					<img src="<c:url value="/assets/img/slide2.png"></c:url>"
						class="img-thumbnail" alt="Cats">
				</div>
				<div class="item">
					<img src="<c:url value="/assets/img/slide3.png"></c:url>"
						class="img-thumbnail" alt="Birds">
				</div>
				<div class="item">
					<img src="<c:url value="/assets/img/slide4.png"></c:url>"
						class="img-thumbnail" alt="Fishes">
				</div>
			</div>
			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>

		</div>
		<!--/carousel slide  -->
	</div>
	
	<%@ include file="userproduct.jsp"%>
	
	
	<!-- include Footer -->
	<%@ include file="footer.jsp"%>

</body>
</html>