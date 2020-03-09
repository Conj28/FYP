<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">


<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- Page Wrapper -->
	<div id="wrapper">


		<!-- Content Wrapper -->
		<div id="content-wrapper">

			<!-- Main Content -->
			<div id="content">

				<!--  Nav bar copied from sbadmin 2 -->
				<!-- ********** Nav Bar ****** -->
				<nav
					class="navbar navbar-expand navbar-light bg-primary topbar mb-4 static-top"
					style="color: #ffffff">



					<!-- Topbar Search -->
					<ul class="navbar-nav mr-auto">
						<a class="hiddedRef" href="getEventsServlet"
							style="text-decoration: none;">
							<h3 class="text-white hiddenRef">
								<i class="fas fa-hands-helping 2x"></i>AlzInvolved
							</h3>
						</a>
					</ul>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">


						<!-- Nav Item - Search Dropdown (Visible Only XS) -->

						<!-- Nav Item - User Information -->

						<!-- check if the is a session 
						Not logged in -->
						<c:if test="${empty sessionScope.User}">
							<li class="nav-item dropdown no-arrow"><a
								class="nav-link dropdown-toggle" href="#" id="userDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <span
									class="mr-2 d-none d-lg-inline text-600 small"
									style="color: white;">User Profile</span> <i
									class="fas fa-users-cog text-white fa-lg"></i>
							</a> <!-- Dropdown - User Information -->
								<div
									class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
									aria-labelledby="userDropdown">
									<a class="dropdown-item" href="login.jsp"> <i
										class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Login
									</a>

								</div></li>
						</c:if>

						<!-- Logged in -->
						<c:if test="${not empty sessionScope.User}">
							<li class="nav-item dropdown no-arrow"><a
								class="nav-link dropdown-toggle" href="#" id="userDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <span
									class="mr-2 d-none d-lg-inline text-600 small"
									style="color: white;">User Profile</span> <i
									class="fas fa-users-cog text-white fa-lg"></i>
							</a> <!-- Dropdown - User Information -->
								<div
									class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
									aria-labelledby="userDropdown">
									<a class="dropdown-item"
										href="getUserEventsServlet?userID=${sessionScope.User.userID}">
										<i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
										Profile
									</a>

									<c:if test="${sessionScope.User.role == '2'}">
										<div class="dropdown-divider"></div>

										<a class="dropdown-item" href="AdminHome"> <i
											class="fas fa-home fa-sm fa-fw mr-2 text-danger"></i> Admin
											Home
										</a>
									</c:if>
									<div class="dropdown-divider"></div>

									<!-- https://stackoverflow.com/questions/10039968/submit-form-using-a-tag -->

									<form id="logoutForm" action="LogoutServlet" method="POST">
										<a href="javascript:{}" class="dropdown-item"
											data-toggle="modal" data-target="#logoutModal"> <i
											class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
											Logout
										</a>
									</form>
								</div></li>
						</c:if>




					</ul>

				</nav>

				<div class="container">

					<div class="card o-hidden border-0 shadow-lg my-5">
						<div class="card-body p-0">
							<!-- Nested Row within Card Body -->
							<div class="row">

								<div class="col-lg-12">
									<div class="p-5">
										<div class="text-center mb-4">
											<h1 class="h4 text-gray-900 mb-4">Update Details</h1>
											<hr>
										</div>
										<form action="updatUserDetailsServlet" method="POST"
											class="user" id="registerForm">

											<div class="form-group row">
												<div class="col-sm-4 mb-3 mb-sm-0">
													<h4 class="ml-4">Email:</h4>
												</div>
												<div class="col-sm-8">
													<h4>${sessionScope.User.email}</h4>
													<input type="hidden" class="form-control form-control-user"
														name="email" id="email" placeholder="Email Address"
														value="${sessionScope.User.email}">
												</div>
											</div>

											<div class="form-group row">
												<div class="col-sm-4 mb-3 mb-sm-0 ">
													<h4 class="ml-4">First Name</h4>
												</div>
												<div class="col-sm-8">
													<input type="text" class="form-control form-control-user"
														name="firstName" id="firstName" placeholder="First Name"
														value="${sessionScope.User.firstName}">
												</div>
											</div>

											<div class="form-group row">
												<div class="col-sm-4 mb-3 mb-sm-0">
													<h4 class="ml-4">Second Name:</h4>
												</div>
												<div class="col-sm-8">
													<input type="text" class="form-control form-control-user"
														name="lastName" id="lastName" placeholder="Last Name"
														value="${sessionScope.User.lastName}">
												</div>
											</div>


											<div class="form-group row">
												<div class="col-sm-4 mb-3 mb-sm-0">
													<h4 class="ml-4">Phone Number:</h4>
												</div>
												<div class="col-sm-8">
													<input type="text" class="form-control form-control-user"
														name="phone" id="phone" placeholder="Phone"
														value="${sessionScope.User.phone}">
												</div>
											</div>

											<div class="form-group row">
												<div class="col-sm-4 mb-3 mb-sm-0">
													<h4 class="ml-4">Address:</h4>
												</div>
												<div class="col-sm-8">
													<input type="text" class="form-control form-control-user"
														name="address" id="address" placeholder="Address"
														value="${sessionScope.User.address}">
												</div>
											</div>

											<div class="form-group row">
												<div class="col-sm-4 mb-3 mb-sm-0">
													<h4 class="ml-4">Town:</h4>
												</div>
												<div class="col-sm-8">
													<input type="text" class="form-control form-control-user"
														name="town" id="town" placeholder="Town"
														value="${sessionScope.User.town}">
												</div>
											</div>

											<div class="form-group row mb-4">
												<div class="col-sm-4 mb-3 mb-sm-0">
													<h4 class="ml-4">County</h4>
												</div>

												<div class="col-sm-8">

													<input type="hidden" id="countyValue"
														value="${sessionScope.User.county}" /> <select
														id="countySelect" name="countySelect"
														class="form-control selectPadHeight">

														<option value='antrim' ${loc == 'antrim'? "selected" : ""}>Antrim</option>
														<option value='armagh' ${loc == 'armagh'? "selected" : ""}>Armagh</option>
														<option value='carlow' ${loc == 'carlow'? "selected" : ""}>Carlow</option>
														<option value='cavan' ${loc == 'cavan'? "selected" : ""}>Cavan</option>
														<option value='clare' ${loc == 'clare'? "selected" : ""}>Clare</option>
														<option value='cork' ${loc == 'cork'? "selected" : ""}>Cork</option>
														<option value='derry' ${loc == 'derry'? "selected" : ""}>Derry</option>
														<option value='donegal'
															${loc == 'donegal'? "selected" : ""}>Donegal</option>
														<option value='down' ${loc == 'down'? "selected" : ""}>Down</option>
														<option value='dublin' ${loc == 'dublin'? "selected" : ""}>Dublin</option>
														<option value='fermanagh'
															${loc == 'fermanagh'? "selected" : ""}>Fermanagh</option>
														<option value='galway' ${loc == 'galway'? "selected" : ""}>Galway</option>
														<option value='kerry' ${loc == 'kerry'? "selected" : ""}>Kerry</option>
														<option value='kildare'
															${loc == 'kildare'? "selected" : ""}>Kildare</option>
														<option value='kilkenny'
															${loc == 'kilkenny'? "selected" : ""}>Kilkenny</option>
														<option value='laois' ${loc == 'laois'? "selected" : ""}>Laois</option>
														<option value='leitrim'
															${loc == 'leitrim'? "selected" : ""}>Leitrim</option>
														<option value='limerick'
															${loc == 'limerick'? "selected" : ""}>Limerick</option>
														<option value='longford'
															${loc == 'longford'? "selected" : ""}>Longford</option>
														<option value='louth' ${loc == 'louth'? "selected" : ""}>Louth</option>
														<option value='mayo' ${loc == 'mayo'? "selected" : ""}>Mayo</option>
														<option value='meath' ${loc == 'meath'? "selected" : ""}>Meath</option>
														<option value='monaghan'
															${loc == 'monaghan'? "selected" : ""}>Monaghan</option>
														<option value='offaly' ${loc == 'offaly'? "selected" : ""}>Offaly</option>
														<option value='roscommon'
															${loc == 'roscommon'? "selected" : ""}>Roscommon</option>
														<option value='sligo' ${loc == 'sligo'? "selected" : ""}>Sligo</option>
														<option value='tipperary'
															${loc == 'tipperary'? "selected" : ""}>Tipperary</option>
														<option value='tyrone' ${loc == 'tyrone'? "selected" : ""}>Tyrone</option>
														<option value='waterford'
															${loc == 'waterford'? "selected" : ""}>Waterford</option>
														<option value='westmeath'
															${loc == 'westmeath'? "selected" : ""}>Westmeath</option>
														<option value='wexford'
															${loc == 'wexford'? "selected" : ""}>Wexford</option>
														<option value='wicklow'
															${loc == 'wicklow'? "selected" : ""}>Wicklow</option>

													</select>

												</div>
											</div>

											<button type="submit" id="checkPassword"
												class="btn btn-primary btn-user btn-block">Update
												Details</button>
											<hr>

											<c:if test="${not empty sessionScope.User}">
												<input type="hidden" id="userId" name="userId"
													value="${sessionScope.User.userID }" />

											</c:if>

										</form>

									</div>
								</div>
							</div>
						</div>
					</div>

				</div>








				<!-- Footer -->
				<footer class="sticky-footer bg-white">
					<div class="container my-auto">
						<div class="copyright text-center my-auto">
							<span>Copyright &copy; Your Website 2019</span>
						</div>
					</div>


				</footer>
				<!-- End of Footer -->

			</div>
			<!-- End of Content Wrapper -->
			<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Logout?</h5>
							<button class="close" type="button" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>
						</div>
						<div class="modal-body">Are you sure you want to Logout</div>
						<div class="modal-footer">
							<button class="btn btn-secondary" type="button"
								data-dismiss="modal">Cancel</button>
							<a class="btn btn-primary" href="LogoutServlet">Logout</a>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!-- End of Page Wrapper -->
	</div>
	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>
	<script src="js/selected.js"></script>






</body>
</html>









