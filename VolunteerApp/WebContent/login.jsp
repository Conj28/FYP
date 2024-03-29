<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Login</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

	<div class="container">

		<!-- Outer Row -->
		<div class="row justify-content-center">

			<div class="col-xl-10 col-lg-12 col-md-9">

				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div class="row">
							<div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
							<div class="col-lg-6">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-4">Login</h1>
									</div>

									<form action="login" method="POST" class="user">
										<div class="form-group">
											<input type="email" class="form-control form-control-user"
												id="emailAddress" name = "emailAddress" aria-describedby="emailHelp"
												placeholder="Email Address">
										</div>
										<div class="form-group">
											<input type="password" class="form-control form-control-user"
												id="password" name = "password" placeholder="Password">
										</div>
										<div class="form-group">
											<div class="custom-control custom-checkbox small">
												<input type="checkbox" class="custom-control-input"
													id="customCheck">

												<!--  Check if Error -- Third year Project , product list page & https://stackoverflow.com/questions/4912690/how-to-access-at-request-attributes-in-jsp -->
											<c:if test="${requestScope.Error == 'True'}">
														<p class = "dangerText">	Please enter a valid Email and Password </p>
												</c:if>
												
												<label class="custom-control-label" for="customCheck">Remember
													Me</label>
											</div>
										</div>

										<button type="submit"
											class="btn btn-secondary btn-user btn-block">Login</button>


										<a href="register.jsp"
											class="btn btn-secondary btn-user btn-block"> Sign Up </a>
									</form>

									<hr>
								<div class="text-center">
										<a class="small" href="getEventsServlet">View Events</a>
									</div> 
									
			

								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>

	</div>

	<!-- Bootstrap core JavaScript-->
	<script type = "text/javascript" src = "counter.js"></script>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

</body>

</html>
