<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

<!-- Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- JS -->

<title>Pets</title>



<!-- <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.12/angular.min.js"></script> -->
</head>
<body>

	<!-- include navigation bar -->

	<%@ include file="header.jsp"%>

	<div class="container" ng-app="searchApp"
		ng-controller="searchController">

		<div class="alert alert-info">
			<p>Sort Type: {{ sortType }}</p>
			<p>Sort Reverse: {{ sortReverse }}</p>
			<p>Search Query: {{ searchItem }}</p>
		</div>

		<form>
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon">
						<i class="fa fa-search"></i>
					</div>
					<input type="text" class="form-control" placeholder="Search "
						ng-model="searchItem">
				</div>
			</div>
		</form>

		<table class="table table-bordered table-striped">

			<thead>
				<tr>
					<td><a href="#"
						ng-click="sortType = 'id'; sortReverse = !sortReverse"> ID <span
							ng-show="sortType == 'id' && !sortReverse"
							class="fa fa-caret-down"></span> <span
							ng-show="sortType == 'id' && sortReverse" class="fa fa-caret-up"></span>
					</a></td>
					<td><a href="#"
						ng-click="sortType = 'name'; sortReverse = !sortReverse"> NAME
							<span ng-show="sortType == 'name' && !sortReverse"
							class="fa fa-caret-down"></span> <span
							ng-show="sortType == 'name' && sortReverse"
							class="fa fa-caret-up"></span>
					</a></td>
					<td><a href="#"
						ng-click="sortType = 'category'; sortReverse = !sortReverse">
							CATEGORY <span ng-show="sortType == 'category' && !sortReverse"
							class="fa fa-caret-down"></span> <span
							ng-show="sortType == 'category' && sortReverse"
							class="fa fa-caret-up"></span>
					</a></td>
				</tr>
			</thead>

			<tbody>
				<tr
					ng-repeat="item in petList | orderBy:sortType:sortReverse | filter:searchItem">
					<td>{{ item.id }}</td>
					<td>{{ item.name }}</td>
					<td>{{ item.category }}</td>
				</tr>
			</tbody>

		</table>


	</div>


<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.12/angular.min.js"></script> 

<script type="text/javascript">
var data=${item};
	var app = angular.module('searchApp', [])

	app.controller('searchController', function($scope) {
		$scope.petList = data;
	});
</script>

	<!-- include Footer -->	 
	<%@ include file="footer.jsp"%>

</body>
</html>