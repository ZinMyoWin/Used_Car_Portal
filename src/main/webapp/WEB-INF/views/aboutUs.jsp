<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<!--  Enable Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:opsz,wght@10..48,200;10..48,400&display=swap" rel="stylesheet">
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


<!-- Existing stylesheets and scripts -->

<style>
/* Add your custom CSS styles here */

/* Change font family for the entire page */
body {
    font-family: 'Bricolage Grotesque', sans-serif;
   
    color: #333;
}


/* Example: Change background color of the jumbotron */
.jumbotron {
    background-color: #f1faee;
    padding: 40px;
    border-radius: 10px;
    text-align: center;
    color: #fff;
}

/* Example: Style the lead paragraph */
.lead {
    font-size: 18px;
    line-height: 1.6;
    margin-top: 20px;
}

/* Example: Style the primary button */
.btn-primary {
    background-color: #83c5be;
    border-color: #83c5be;
    color: #fff;
    padding: 10px 20px;
    border-radius: 5px;
    text-transform: uppercase;
    letter-spacing: 1px;
    transition: background-color 0.3s ease;
}

.btn-primary:hover {
    background-color: #457b9d;
}


/* Example: Style the container */
.container-fluid.aboutus {
    padding: 40px;
     background-color: #e63946;
    border-radius: 10px;
    box-shadow: 0px 3px 10px rgba(0, 0, 0, 0.1);
}

</style>
</head>

<body>

	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container-fluid aboutus">
		<div class="jumbotron">
			<h3>WE HELP YOU GET A GREAT DEAL ON A CAR !</h3>



			<p class="lead">CarsDeals helps you get a great deal on a used
				car by giving you up-to-the-minute car pricing information so that
				you're fully armed with the knowledge you need as you shop for a
				car.</p>

			<hr class="my-4">
			<p>We also help buyers with less-than-perfect credit find special
				financing options through our network of trusted lending partners.</p>
			<p class="lead">
				<a class="btn btn-primary btn-lg" href="new" role="button">Join Us Now!</a>
			</p>
		</div>
	</div>


	<%@ include file="footer.jsp"%>

</body>
</html>
