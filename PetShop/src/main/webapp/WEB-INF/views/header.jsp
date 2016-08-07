<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<!-- Navigation bar on top -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">PetShop</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="<c:url value="/home"></c:url>">Home</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Category <span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value="/dogs"></c:url>">Dogs</a></li>
							<li><a href="<c:url value="/cats"></c:url>">Cats</a></li>
							<li><a href="<c:url value="/birds"></c:url>">Birds</a></li>
							<li><a href="<c:url value="/fishes"></c:url>">Fishes</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Services <span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#">Spa</a></li>
						</ul>
					<li><a href="#">About</a></li>
					<li><a href="#">Contact</a></li>

				</ul>


				<ul class="nav navbar-nav navbar-right">
				
				<c:choose>
<c:when test="${empty loggedInUser}">
<li><a href="<c:url  value="/login"/>"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
  <li><a href="<c:url  value="/register"/> "><span class="glyphicon glyphicon-user"></span> SignUp</a></li>
  </c:when>

<c:when test="${not empty loggedInUser}">
      
      <li><a href="<c:url  value="/logout"/> "><span class="glyphicon glyphicon-user"></span> Logout</a></li>
      </c:when>
      </c:choose>
				
						
					</ul>
			</div>
		</div>
	</nav>
	<!-- / Navigation bar on top -->

	<div class="row" style="margin-top: 60px">
		<div class="col-sm-12 col-xs-12 col-md-12 col-lg-12"></div>
	</div>
</body>
</html>