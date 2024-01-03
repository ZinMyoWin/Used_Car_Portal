<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<!--  Enable Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<!-- Access the Static Resources  using spring Url  -->
<!--
<spring:url value="/css/style.css" var="myCss" />
<spring:url value="/js/custom.js" var="myJS" />

<link href="${myCss}" rel="stylesheet" />
<script src="${myJS}"></script>
-->

<!--  Access the Static Resources without using spring URL -->
<link href="/css/style.css" rel="stylesheet" />
<script src="/js/custom.js"></script>

<style>
/* Body styling */
body {
    font-family: 'Lato', sans-serif;
    
    color: #1d3557;
    margin: 0;
    padding: 0;
}
.bg-1{
	background-color:#e63946;
}
.container-form{
	border-radius:20px;
	background-color:#f1faee;
	padding:20px;
	
}
/* Header styling */
.container {
    padding: 20px;
}

h3 {
    color: #e63946;
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 20px;
}

.form-control {
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 10px;
}

.btn-primary {
    background-color: #e63946;
    border-color: #e63946;
}

.alert-success {
    background-color: #a8dadc;
    border-color: #1d3557;
    color: #1d3557;
    padding: 10px;
    margin-bottom: 20px;
}

/* Footer styling */
.footer {
    text-align: center;
    padding: 20px;
    background-color: #1d3557;
    color: #fff;
}

/* Responsive adjustments */
@media (max-width: 576px) {
    .container {
        padding: 10px;
    }
    
    h3 {
        font-size: 24px;
    }
    
    .btn-primary {
        margin-top: 10px;
    }
    
    .alert-success {
        margin-bottom: 10px;
    }
}

</style>
</head>

<body>

	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container-fluid bg-1 text-center">
	<div class="container-form">
		<h3 class="margin">Register Here ! </h3>

		<div class="row">

			<div class="col-md-4"></div>

			<div class="col-md-4">


				<c:if test="${register_success != null}">
					<div class="alert alert-success">
						<p>${register_success} Click <a href="cus_login_page"> Sign In</a> to use our portal...</p>
					</div>
				</c:if>

			<form:form action="save" method="post" modelAttribute="user">
				<div class="form-group">
				    <label for="username">Your Full Name:</label>
				    <form:input path="name" class="form-control" required="true"/>
				    <form:errors path="name" class="text-danger"/> 
				</div>
				
				<div class="form-group">
				    <label for="username">Your Login User Name:</label>
				    <form:input path="userName" class="form-control" required="true"/>
				    <form:errors path="userName" class="text-danger"/> 
				</div>

				
				<div class="form-group">
				    <label for="password">Your Password:</label>
				    <form:password path="password" class="form-control" required="true"/>
				    <form:errors path="password" class="text-danger"/>
				</div>

				
				<input type="submit" value="Register" class="btn btn-primary"/>
					
			</form:form>

			</div>


			<div class="col-md-4"></div>

		</div>

	</div>
	</div>


	<%@ include file="footer.jsp"%>

</body>
</html>
