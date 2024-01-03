<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

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


<!--  Access the Static Resources without using spring URL -->
<link href="/css/style.css" rel="stylesheet" />
<script src="/js/custom.js"></script>

<style>
/* Body styling */
body {
    font-family: 'Lato', sans-serif;
    background-color: #f1faee;
    color: #1d3557;
    margin: 0;
    padding: 0;
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

.btn-secondary {
    background-color: #a8dadc;
    border-color: #a8dadc;
    color: #1d3557;
}

.btn-primary, .btn-secondary {
    margin-right: 10px;
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
    
    .btn-primary, .btn-secondary {
        margin-right: 0;
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
	<div class="container">
        <div class="row justify-content-center mt-5">
            <div class="col-md-6">
                <h3 class="text-center">Post A Car For Sale</h3>

				 <form:form method="POST" action="/cars" modelAttribute="car">
				    <input type="hidden" value="${_csrf.token}" />
				    <form:hidden path="id" />
				
				    <div class="form-group">
				        <label for="make">Car Make:</label>
				        <form:input path="make" class="form-control" />
				        <form:errors path="make" cssClass="text-danger" />
				    </div>
				
				    <div class="form-group">
				        <label for="model">Car Model:</label>
				        <form:input path="model" class="form-control" />
				        <form:errors path="model" cssClass="text-danger" />
				    </div>
				
				    <div class="form-group">
				        <label for="registeration">Registration:</label>
				        <form:input path="registeration" class="form-control" />
				        <form:errors path="registeration" cssClass="text-danger" />
				    </div>
				
				    <div class="form-group">
					    <label for="price">Car Price:</label>
					    <form:input path="price" class="form-control" min="1000" max="1000000" required="required" />
					    <form:errors path="price" cssClass="text-danger" />
					</div>

				
				    <div class="text-center">
				        <input type="submit" name="Add" value="Save" class="btn btn-primary" />
				        <input type="button" value="Cancel" onclick="cancel()" class="btn btn-secondary" />
				    </div>
				</form:form>
            </div>
        </div>
    </div>

    <%@ include file="footer.jsp" %>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="/js/custom.js"></script>


	

</body>
</html>
