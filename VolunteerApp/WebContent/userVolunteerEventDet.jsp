
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
<title>Volunteer</title>
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

				<!-- Start of main content -->
				<div class="container">


					<!--<h1 class = "padding">You are on the Event page</h1> -->

					<div class="row">





						<!--***************************** Put Code Here **************************** -->

						<div class="row">
						
								

								
								
							

							
								<div class="card mb-4">
									<div class="card-body">
									<div class = "row">
								<div class = "col-sm-5">
									<img class="img-details-page"
											src="${sessionScope.specificEvent.img}">
								</div>
								
								<div class = "col-sm-7">
										<h2 class="font-weight-bold text-primary">${sessionScope.specificEvent.name}</h2>
										<hr>
										<div class="mb-2">
											<h4 class="font-weight-bold text-primary header-inline">Event
												Date:</h4>
											<h4 class="font-weight-bold header-inline text-gray-800">${sessionScope.specificEvent.eventDate}</h4>
										</div>

										<div class="mb-2">
											<h4 class="font-weight-bold text-primary header-inline">Start
												Time:</h4>
											<h4 name="eventStartTime"
												class="font-weight-bold header-inline text-gray-800">${sessionScope.specificEvent.startTime}</h4>
										</div>

										<div class="mb-2">
											<h4 class="font-weight-bold text-primary header-inline">End
												Time:</h4>
											<h4 name="eventEndTime"
												class="font-weight-bold header-inline text-gray-800">${sessionScope.specificEvent.endTime}</h4>
										</div>
										<hr>
										<p class="mb-4 m-0 font-weight-bold text-gray-800 text-lg">${sessionScope.specificEvent.details}</p>

										<!--  Signup part -->
										</div>
										</div>

										<hr>
										<h2 class="font-weight-bold text-primary">My Details</h2>


										<form class="user" id="submitForm" action="UpdateUserVolunteerTime"
											method="POST">
											<div class="row mb-4">

												<div class="col-sm-12 col-lg-4">
													<h4 class="font-weight-bold text-primary">Selected
														Location</h4>
												</div>
												<div class="col-sm-12 col-lg-8">
													
													<h4 class="font-weight-bold text-primary">${selectedLocation}</h4>
														
												</div>

											</div>
											
											
											<div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
											<div class = "row">
											<div class = "col-sm-12">
											 	<table class = "table table-bordered dataTable" >
													<thead>
														<tr>
															<th>Time</th>
															<th>Select</th>
															<th>Spaces Available</th>
														</tr>


													</thead>

													<tbody>
													
													
														<c:forEach items="${locationTimes}" var="time">
															<tr>
																<td>${time.startTime}- ${time.endTime}</td>
																<td class = "tdNoPadding">
																<label class = "b-contain">
																<c:if test="${time.availableSpaces ge time.numberSpaces}">
																<input type="checkbox" value="${time.startTime}" name="checkedTime" disabled>
																</c:if>
																<c:if test="${(userStartTime le time.startTime) and (userEndTime ge time.endTime) }">
																<input type="checkbox" value="${time.startTime}" name="checkedTime" checked>
																</c:if>
																
																<c:if test="${time.availableSpaces lt time.numberSpaces}">
																<input type="checkbox" value="${time.startTime}" name="checkedTime" >
																</c:if>
																<div class="b-input"></div>
																</label>
																
															
																<c:if test="${time.availableSpaces ge time.numberSpaces}">
																<td>0</td>
																</c:if>
																<c:if test="${time.availableSpaces lt time.numberSpaces}">
																<td>${time.numberSpaces - time.availableSpaces}</td>
																</c:if>
																</td>
																	
																	<!--  available spaces  = num signed up -->
																	<!-- number spaces = numer of people per event -->

														 		<!-- <td>${time.availableSpaces}</td>
																<td>${time.numberSpaces}</td> -->
															</tr>

														</c:forEach>
													</tbody>
												</table> 
												</div>
												</div>
												</div>
												
												
										
											<div class="  text-center">
												<p class="hiddenText dangerText" id="errorMessage">Hidden
													Text</p>
											</div>

											<!--  Check if the user is logged in  otherwise prompt them to -->

											<input type="hidden" id="eventId" name="eventId"
												value="${sessionScope.specificEvent.eventDetID}" /> <input
												type="hidden" id="setLocation" name="setLocation" /> <input
												type="hidden" id="eventName" name="eventName"
												value="${sessionScope.specificEvent.name}" /> <input
												type="hidden" id="optionStartTime" name="optionStartTime"/>
											<input type="hidden" id="optionEndTime" name="optionEndTime"/>
											<input type="hidden" id = "optionEventID" name ="optionEventID" value = "${eventID}"/>


											<!-- values relating to the session -->
											<c:if test="${not empty sessionScope.User}">
												<input type="hidden" id="userId" name="userId"
													value="${sessionScope.User.userID }"/>

												<input type="hidden" id="userEmail" name="userEmail"
													value="${sessionScope.User.email}" />

												<input type="hidden" id="firstName" name="firstName"
													value="${sessionScope.User.firstName}" />


												<div class="mb-4">
													<button type="button" id="submitButton"
														class="mb-4 btn btn-primary btn-user btn-block">Update times</button>
												</div>
												
												<div class="mb-4">
												<a href = "getUserEventsServlet?userID=${sessionScope.User.userID}">
													<button type="button" id="submitButton"
														class="mb-4 btn btn-info btn-user btn-block">Back</button>
														</a>
												</div>

											</c:if>


										</form>
										<c:if test="${empty sessionScope.User}">

											<div class="mb-4">

												<a href="login.jsp"
													class="mb-4 btn btn-danger btn-user btn-block">Log in
													to Volunteer</a>
											</div>

										</c:if>

									


									</div>
								</div>
							</div>
						</div>
						<!-- end of card main text column -->
					</div>

				<!--  end of Row div -->
			</div>


			<!-- End of personal container -->
		</div>

		<!-- End of content -->
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
	<script src="js/updateTimeCheck.js"></script>





</body>
</html>





