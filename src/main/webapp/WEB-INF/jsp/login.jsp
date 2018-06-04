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
					<li><a href="/home">Home</a></li>
					<li><a href="/about">About</a></li>
					<li class="active"><a href="/login">Login</a></li>
					<li><a href="/register">Register</a></li>
				</ul>
			</div>
		</div>
	</nav>
</div>
	

<div class="container">
    <div class="row">
        <div class="col-md-offset-5 col-md-3">
            <form class="form-login" method="post" action="/login">
	           <h4>Welcome back.</h4>
	           
	           ${errorLogin}
	           
		           <input type="text" id="email" name="email" class="form-control input-sm chat-input" placeholder="email" />
		           <br/>
		           <input type="password" id="userpassword"  name="userpassword" class="form-control input-sm chat-input" placeholder="password" />
		           <br/>
		           <div class="wrapper">
		           <span class="group-btn">     
		               <button class="btn btn-lg btn-primary btn-block" name="Submit" value="Login" type="Submit">Login</button>
		           </span>
	           </div>
            </form>
        
        </div>
    </div>
</div>
	
	<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>