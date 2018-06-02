<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
	<link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
	<!-- 
	<spring:url value="/css/style.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
	<c:url value="/css/style.css" var="jstlCss" />
	<link href="${jstlCss}" rel="stylesheet" />
</head>
<body>

<div class="container-fluid">
	<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="/">Spring Boot</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a href="/home">Home</a></li>
					<li class="active"><a href="/about">About</a></li>
					<li><a href="/login">Login</a></li>
					<li><a href="/register">Register</a></li>
				</ul>
			</div>
		</div>
	</nav>
</div>

<div class="about-section">
		<div class="container">
			<div class="site-title text-center">
				<h3>About Us</h3>
				<p>A bus place for everyone </p>
			</div>
			<div class="about-inner-section">	
			    <div class="col-md-6 about-right">
				<img src="https://images.pexels.com/photos/7096/people-woman-coffee-meeting.jpg?w=940&h=650&auto=compress&cs=tinysrgb" width="500px" height="400px"/>
			</div>
				<div class="col-md-6 about-inner-column">
					<h4>Lorente ipsum </h4>
					<p>A Buss for eveeryone</p>
					<ul>
						<li>Lorente ipsum.</li>
						<li>Lorente ipsum</li>
						<li>Lorente ipsum</li>
					</ul>
				</div>
				
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>