<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@page session="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Home | PetShop</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->


<!-- Reference stylesheets -->
<link href="<c:url value='/assets/css/bootstrap.min.css'/>"
	rel="stylesheet">
<link href="<c:url value='/assets/css/font-awesome.min.css'/>"
	rel="stylesheet">
<link href="<c:url value='/assets/css/animate.min.css'/>"
	rel="stylesheet">
<link href="<c:url value='/assets/css/prettyPhoto.css'/>"
	rel="stylesheet">
<link href="<c:url value='/assets/css/main.css'/>" rel="stylesheet">
<link href="<c:url value='/assets/css/responsive.css'/>"
	rel="stylesheet">


<!-- favicon -->
<link rel="shortcut icon"
	href="<c:url value='/assets/images/ico/favicon.ico'/>">
</head>

<!-- Navigation bar on top -->
<body style="background-color: black">



	<header id="header">

		<!-- topbar with mobile number and social links -->
		<div class="top-bar">
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-xs-4">
						<div class="top-number">
							<p>
								<i class="fa fa-phone-square"></i> +91 9092 675 464
							</p>
						</div>
					</div>
					<div class="col-sm-6 col-xs-8">
						<div class="social">
							<ul class="social-share">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#"><i class="fa fa-skype"></i></a></li>
							</ul>
							<div class="search">
								<form role="form">
									<input type="text" class="search-form" autocomplete="off"
										placeholder="Search"> <i class="fa fa-search"></i>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /topbar with mobile number and social links -->

		<!-- Navbar -->
		<nav class="navbar navbar-inverse" role="banner">
			<div class="container">

				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>

					<a class="navbar-brand" href="<c:url value="/admin/home" />"><img
						src="<c:url value='/assets/images/logo.png'/>" alt="logo"></a>
				</div>


				<div class="collapse navbar-collapse navbar-right">
					<ul class="nav navbar-nav">
						<li class="active"><a href="<c:url value = "/" />">Home</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Pets <i class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu">
								<li class="dropdown">
								<li><a href="<c:url value = "/error" />">Dogs</a></li>
								<li><a href="<c:url value = "/error" />">Cats</a></li>
								<li><a href="<c:url value = "/error" />">Birds</a></li>
								<li><a href="<c:url value = "/error" />">Fishes</a></li>
							</ul></li>
						<%-- <li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Accessories <i
									class="fa fa-angle-down"></i></a>
								<ul class="dropdown-menu">
									<li><a href="<c:url value = "/error" />">Dogs</a></li>
									<li><a href="<c:url value = "/error" />">Cats</a></li>
									<li><a href="<c:url value = "/error" />">Birds</a></li>
									<li><a href="<c:url value = "/error" />">Fishes</a></li>
								</ul></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Services <i class="fa fa-angle-down"></i></a>
								<ul class="dropdown-menu">
									<li><a href="/error">Spa</a></li>
								</ul></li> --%>
						<li><a href="<c:url value = "/goview" />">View All</a></li>

						<li><a href="#">About Us</a></li>
						<c:if test="${pageContext.request.userPrincipal.name == null}">
							<li><a href="<c:url  value="/login"/>"><span
									class="fa fa-sign-in"></span> Login</a></li>
							<li><a href="registration.obj"><span class="fa fa-user"></span>
									SignUp</a></li>
						</c:if>
						<sec:authorize access="hasRole('ROLE_USER')">
							<li><a href="#"><span class="fa fa-user"></span>
									${pageContext.request.userPrincipal.name}</a></li>
							<li><a href="<c:url  value="#"/>"><span
									class="fa fa-shopping-cart"></span> Cart</a></li>

							<li><a href="<c:url  value="/login?logout"/>"><span
									class="fa fa-sign-out"></span> Logout</a></li>
						</sec:authorize>
						<sec:authorize access="hasRole('ROLE_ADMIN')">
							<li><a href="#"><span class="fa fa-user"></span>
									${pageContext.request.userPrincipal.name}</a></li>
							<li><a href="<c:url value = "/admin/home" />">Manage</a></li>
							<li><a href="<c:url  value="/login?logout"/>"><span
									class="fa fa-sign-out"></span> Logout</a></li>
						</sec:authorize>

						
					</ul>
				</div>

			</div>


		</nav>
		<!-- / Navbar -->
	</header>
	<!-- / Navigation bar on top -->



</body>
</html>