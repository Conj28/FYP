
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
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
<title>User Home</title>
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
						<a class = "hiddedRef" href = "getEventsServlet" style = "text-decoration:none;">
						<h3 class  = "text-white hiddenRef">
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
									style="color: white;">User Profile</span> <i class="fas fa-users-cog text-white fa-lg"></i>
							</a> <!-- Dropdown - User Information -->
								<div
									class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
									aria-labelledby="userDropdown">
									<a class="dropdown-item" href="login.jsp"> <i
										class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
										Login
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
									style="color: white;">User Profile</span> <i class="fas fa-users-cog text-white fa-lg"></i>
							</a> <!-- Dropdown - User Information -->
								<div
									class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
									aria-labelledby="userDropdown">
									<a class="dropdown-item" href="getUserEventsServlet?userID=${sessionScope.User.userID}"> <i
										class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
										Profile
									</a>
									
									<c:if test="${sessionScope.User.role == '2'}">
									<div class="dropdown-divider"></div>
									
									<a class="dropdown-item" href="AdminHome">
									 <i
										class="fas fa-home fa-sm fa-fw mr-2 text-danger"></i>
										Admin Home
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
				<!-- End of Topbar -->

				<div class="personal-small-container">









					<div class="card-body p-0  ">
						<!-- Nested Row within Card Body -->
						<div class="form-group row">

							<div class="col-lg-6 col-sm-12">
								<div class="card o-hidden border-left-primary shadow-lg my-5">
									<div class="card-body">

										<div class="p-4">

											<div id="topHalf">
												<div class="text-center">
													<h2 class="text-gray-900 mb-4">
														Upcoming Events <i class="far fa-calendar-alt text-primary"></i>
													</h2>
													<hr class="mb-4">
												</div>

												<div class="form-group row">

													<h5>You are currently signed up for the following
														events</h5>
												</div>
												<div class="form-group row">
													<div class="col-sm-12 col-md-12 mb-3 mb-sm-0">


														<div style="overflow-y: auto; height: 60vh;">
															<c:forEach items="${UserEvents}" var="tempEvent">
																<div class="card mb-4 broder-left-primary ">
																	<div class="card-body">

																		<div class="row">
																			<div class="col-sm-4">
																				<img style="height: 20vh; width: 25vh"
																					src="${tempEvent.img}" />
																			</div>
																			<div class="col-sm-8 pl-4">


																				<h3 class = "mb-2 text-primary">${tempEvent.name}</h3>


																				<p class="mb-1">Location: ${tempEvent.location}</p>
																				<p class="mb-1">County: ${tempEvent.county}</p>
																				<p class="mb-1">Event Data: ${tempEvent.eventDate}</p>
																				<p class="mb-1">Start Time: ${fn:substring(tempEvent.userStart,0,5)}</p>
																				<p class="mb-2">End Time: ${fn:substring(tempEvent.userEnd,0,5)}</p>
																				
																			<!-- https://www.tutorialspoint.com/jsp/jstl_function_substring.htm -->
																				
																				

																				<a href="UserVolunteerEventDetails?currentEventID=${tempEvent.eventDetID}&LevetLocation=${tempEvent.eventLocID}&LeventEndTime=${tempEvent.endTime}&LeventStartTime=${tempEvent.startTime}&userStart=${tempEvent.userStart}&userEnd=${tempEvent.userEnd}&selLocation=${tempEvent.location}&eventID=${tempEvent.eventID}" class="btn btn-primary btn-icon-split">
																					<span class="icon"> <i
																						class="fas fa-arrow-right"></i>
																				</span> <span class="text">View Event</span>
																				</a>

																			</div>
																		</div>
																	</div>
																</div>

															</c:forEach>


														</div>
													</div>




												</div>


											</div>



										</div>
									</div>
								</div>
							</div>




							<!-- ****************Start of the right side************************************************* -->
							<div class="col-lg-6 col-sm-12">
								<div class="card o-hidden border-left-primary  shadow-lg my-5">
									<div class="card-body">
										<div class="p-5">



											<div class="text-center">
												<h2 class="text-gray-900 mb-4">
													My profile <i class="fas fa-user text-primary"></i>
												</h2>

												<hr class="mb-4">

											</div>



											<form action="getUserUpdateDetails" method="POST"
												id="getUserUpdateDetails">
												<div class="form-group row">

													<div class=col-sm-12>



														<!-- 				<li><h3 style="display: inline" class="text-primary">First Name:</h3> <h4 style="display: inline" class="text-gray-800">${sessionScope.User.firstName} </h4></li>
													<li><h4 style="display: inline" class="text-primary">Last Name:</h4> <h4 style="display: inline" class="text-gray-800">${sessionScope.User.lastName}</h4></li>
													<li><h4 style="display: inline" class="text-primary">Email:</h4> <h4 style="display: inline" class="text-gray-800">${sessionScope.User.email}</h4></li>
													<li><h4 style="display: inline" class="text-primary">Phone Number: </h4> <h4 style="display: inline" class="text-gray-800">${sessionScope.User.phone}</h4></li>
													<li><h4 style="display: inline" class="text-primary">Address:</h4> <h4 style="display: inline" class="text-gray-800">${sessionScope.User.address}</h4></li>
													<li><h4 style="display: inline" class="text-primary">Town: </h4> <h4 style="display: inline" class="text-gray-800">${sessionScope.User.town}</h4></li>
													<li><h4 style="display: inline" class="text-primary">County: </h4> <h4 style="display: inline" class="text-gray-800">${sessionScope.User.county}</h4></li> -->



														<div class="row ">
															<div class="col-sm-6 col-mb-3 mb-3">
																<h4 style="display: inline" class="text-primary">First
																	Name:</h4>

																<h3 style="display: inline" class="text-gray-800">${sessionScope.User.firstName}
																</h3>
															</div>


															<div class="col-sm-6 col-mb-3 mb-3">
																<h4 style="display: inline" class="text-primary">Last
																	Name:</h4>

																<h4 style="display: inline" class="text-gray-800">${sessionScope.User.lastName}</h4>
															</div>


															<div class="col-sm-6 col-mb-3 mb-3">
																<h4 style="display: inline" class="text-primary">Email:
																</h4>

																<h4 style="display: inline" class="text-gray-800">${sessionScope.User.email}</h4>
															</div>


															<div class="col-sm-6 col-mb-3 mb-3">
																<h4 style="display: inline" class="text-primary">Phone
																	Number:</h4>

																<h4 style="display: inline" class="text-gray-800">${sessionScope.User.phone}</h4>
															</div>


															<div class="col-sm-6 col-mb-3 mb-3">
																<h4 style="display: inline" class="text-primary">Address:</h4>

																<h4 style="display: inline" class="text-gray-800">${sessionScope.User.address}</h4>
															</div>


															<div class="col-sm-6 col-mb-3 mb-4 mb-3">
																<h4 style="display: inline" class="text-primary">Town:
																</h4>

																<h4 style="display: inline" class="text-gray-800">${sessionScope.User.town}</h4>
															</div>


															<div class="col-sm-6 col-mb-3 ">
																<h4 style="display: inline" class="text-primary">County:
																</h4>

																<h4 style="display: inline" class="text-gray-800">${sessionScope.User.county}</h4>
															</div>


															<input type="hidden" name="userCounty"
																value="${sessionScope.User.county}" />

															<div class="col-sm-6 col-mb-3 ">

																<a class="btn btn-primary btn-lg btn-icon-split"
																	href="javascript:{}"
																	onclick="document.getElementById('getUserUpdateDetails').submit();">
																	<span class="icon text-white-50"> <i
																		class="fas fa-users-cog"></i>
																</span> <span class="text">Update details</span>
																</a>

															</div>






														</div>



													</div>

												</div>



											</form>

										</div>

									</div>
								</div>


								<div class="card border-left-primary shadow-lg my-5">
									<div class="card-body">
										<div class="p-5">

											<div class="text-center">
												<h2 class="text-gray-900 mb-4">
													Volunteering metrics <i class="fas fa-clipboard-check text-primary"></i>
												</h2>

											</div>
											<hr class="mb-4" style="border: 1px solid rgba(0, 0, 0, .1)">




											<div class="form-group row">

												<div class=col-sm-12>
													<p>Thank you, we really appreciate every hour you spend
														volunteering with us, keep up the good work. You can track
														your progress below</p>
													<div class="row mb-4">

														<div class="col-sm-6 ">
															<div class="card border-left-success shadow h-100 py-2">
																<div class="card-body">
																	<div class="row no-gutters align-items-center">
																		<div class="col mr-2">
																			<div
																				class="text-xs font-weight-bold text-success text-uppercase mb-1">Hours
																				Volunteered</div>
																			<div class="h5 mb-0 font-weight-bold text-gray-800">${volHours}
																				Hours</div>
																		</div>
																		<div class="col-auto">
																			<i class="fas fa-hourglass fa-2x text-gray-300"></i>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="col-sm-6 ">

															<div class="card border-left-success shadow h-100 py-2">
																<div class="card-body">
																	<div class="row no-gutters align-items-center">
																		<div class="col mr-2">
																			<div
																				class="text-xs font-weight-bold text-success text-uppercase mb-1">Completed
																				Events</div>
																			<div class="h5 mb-0 font-weight-bold text-gray-800">${volNum}</div>
																		</div>
																		<div class="col-auto">
																			<i class="fas fa-hands-helping fa-2x text-gray-300"></i>
																		</div>
																	</div>
																</div>
															</div>
														</div>



													</div>


												</div>

											</div>




										</div>
									</div>
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

	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>






</body>
</html>









