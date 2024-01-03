<!DOCTYPE html>
<html>
<head>
<!-- Existing stylesheets and scripts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:opsz,wght@10..48,200;10..48,400&display=swap" rel="stylesheet">
<style>
body{
font-family: 'Bricolage Grotesque', sans-serif;
}
/* Custom CSS for styling the navigation bar */
.navbar-primary {
    background-color: #f1faee; /* Background color */
    color: #1d3557; /* Text color */
    border-color: transparent;
}

.navbar-primary .navbar-brand {
    color: #1d3557; /* Brand text color */
}

.navbar-primary .navbar-nav li a {
    color: #1d3557; /* Link text color */
}

.navbar-primary .navbar-toggle .icon-bar {
    background-color: #1d3557; /* Navbar toggle icon color */
}

/* Add any additional styles you need */

</style>

</head>
<body>

<!-- Navbar code -->
<nav class="navbar navbar-primary">
    
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand"> <img
				src="/images/logo_car.png" width="120px" />
			</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">

				<sec:authorize access="!isAuthenticated()">
					<li><a href="cus_login_page">Login</a></li>
					<li><a href="new">Register</a></li>
					<li><a href="about">About Us</a></li>
					<li><a href="contact">Contact Us</a></li>
				</sec:authorize>


				<sec:authorize access="isAuthenticated()">

				<sec:authorize access="hasRole('Users')">
					 <li><a href="cars">Used Cars</a></li>
					 <li><a href="new_car">Sell Your Car</a></li>
				</sec:authorize>
				
				<sec:authorize access="hasRole('Administrator')">
					 <li><a href="cars">Car Management </a></li>
					 <li><a href="users">User Management</a></li>
					 
				</sec:authorize>
				
					
			    <!-- /logout must be a POST request, as csrf is enabled.
			        This ensures that log out requires a CSRF token and that a malicious user cannot forcibly log out your users.-->
					
					<li>
					<form action="logout" method="post" style="padding:7px;">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
							<input type="submit"
							name="Logout" value="Logout" class="btn btn-primary"></input>
					</form>
					</li>
				</sec:authorize>
				



			</ul>
		</div>
	</div>

</nav>

<!-- Rest of your HTML content -->

</body>
</html>


