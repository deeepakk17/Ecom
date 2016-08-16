<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
<!-- Carousel slider -->
<section id="Carouselbox"  style="padding-left: 10%; padding-right:10%; background-color: black" >
<div class="container-fluid">
<div id="Carousel" class="carousel slide ">
        <ol class="carousel-indicators" style="padding-left:0%">
            <li data-target="#Carousel" data-slide-to="0" class="active"></li>
            <li data-target="#Carousel" data-slide-to="1"></li>
            <li data-target="#Carousel" data-slide-to="2"></li>
            <li data-target="#Carousel" data-slide-to="3"></li>            
        </ol>

        <div class="carousel-inner">
           <div class="item active ">
             <img src="assets/images/slide1.png" class="img-responsive">
           </div>
           <div class="item ">
             <img src="assets/images/slide2.png" class="img-responsive">
            </div>
           <div class="item">
             <img src="assets/images/slide3.png" class="img-responsive">
            </div>
            <div class="item">
             <img src="assets/images/slide4.png" class="img-responsive">
            </div> 
            <a class="prev hidden-xs" href="#Carousel" data-slide="prev">
<i class="fa fa-chevron-left"></i>
</a>          
        </div>
        </div>
        
</div>
</section>
<!-- /Carousel slider -->
</body>
</html>