<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>

	<!-- Access the bootstrap Css like this, 
		Spring boot will handle the resource mapping automcatically -->
	<link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
	<link href="https://code.jquery.com/jquery-3.3.1.min.js">
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js">
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
					<li class="active"><a href="/home">Home</a></li>
					<li><a href="/about">About</a></li>
					<li><a href="/login">Login</a></li>
					<li><a href="/register">Register</a></li>
				</ul>
			</div>
		</div>
	</nav>
</div>

<div class="feature-box-section">
    <div class="container">
	<div class="row">
	    <div class="col-lg-7 col-md-7 col-xs-12">
                            <div class="features-left-img">
                                <img src="images/mainbus.jpg" width="100%" height="20%"/>
                            </div>
                        </div>
	    <div class="col-lg-5 col-md-5 col-xs-12">
		<div class="feature-col-box mb-52">
                                    <div class="feature-box-icon">
                                        <i class="fa fa-facebook-square fa-3x social"></i>
                                    </div>
                                    <div class="feature-list-text">
                                        <h3>Fast Trasport</h3>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel volutpat felis, eu condimentum ma Pellentesque mollis eros vel. 
                                        </p>
                                    </div>
                                </div>
        <div class="feature-col-box mb-52">
                                    <div class="feature-box-icon">
                                        <i class="fa fa-google-plus fa-3x social"></i>
                                    </div>
                                    <div class="feature-list-text">
                                        <h3>Text</h3>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel volutpat felis, eu condimentum ma Pellentesque mollis eros vel. 
                                        </p>
                                    </div>
                                </div>
        <div class="feature-col-box mb-52">
                                    <div class="feature-box-icon">
                                        <i class="fa fa-linux fa-3x social"></i>
                                    </div>
                                    <div class="feature-list-text">
                                        <h3>Text</h3>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel volutpat felis, eu condimentum ma Pellentesque mollis eros vel. 
                                        </p>
                                    </div>
                                </div>
	    </div>
	</div>
</div>
</div>
	
	<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>