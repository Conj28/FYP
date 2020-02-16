
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
<link href="vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
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
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="Search for..." aria-label="Search"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>






						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-600 small"
								style="color: white;">User Profile</span> <img
								class="img-profile rounded-circle" src="img/headshot.png">
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
								</a>
								<div class="dropdown-divider"></div>

								<!-- https://stackoverflow.com/questions/10039968/submit-form-using-a-tag -->

								<form id="logoutForm" action="LogoutServlet" method="POST">
									<a href="javascript:{}"
										onclick="document.getElementById('logoutForm').submit();"
										class="dropdown-item" data-toggle="modal"
										data-target="#logoutModal"> <i
										class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
										Logout
									</a>
								</form>
							</div></li>

					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Start of main content -->
				<div class="container-fluid">


					<!--<h1 class = "padding">You are on the Event page</h1> -->






					<!--***************************** Put Code Here **************************** -->




					<div class="col-xl-12 col-sm-12">

						<div class="row">

							<!--  used for padding left -->
							<div class="col-lg-2"></div>
							<div class="col-lg-8">
								<div class="card mb-4">
									<div class="card-body">
										<h2 class="font-weight-bold text-primary text-center">${specificEvent.name}</h2>
										<hr>
										<div class="text-center mb-4">
											<div class="mb-2" style="display: inline;">
												<h4 class="font-weight-bold text-primary header-inline">Event
													Date:</h4>
												<h4 class="font-weight-bold header-inline text-gray-800">${specificEvent.eventDate}</h4>
											</div>

											<div class="mb-2 ml-4" style="display: inline;">
												<h4 class="font-weight-bold text-primary header-inline">Start
													Time:</h4>
												<h4 name="eventStartTime"
													class="font-weight-bold header-inline text-gray-800">${specificEvent.startTime}</h4>
											</div>

											<div class="mb-2 ml-4" style="display: inline;">
												<h4 class="font-weight-bold text-primary header-inline">End
													Time:</h4>
												<h4 name="eventEndTime"
													class="font-weight-bold header-inline text-gray-800">${specificEvent.endTime}</h4>
											</div>
										</div>




										<div class="row mb-4">
											<div class="col-lg-2 col-mb-2"></div>

											<div class="col-mb-8 col-lg-8">
												<select id="optionLocation" name="optionLocation"
													class="form-control selectPadHeight selectedLocation">
													<option value="default">Select Location</option>
													<c:forEach items="${specificEventLocation}" var="tempLoc">

														<!-- https://stackoverflow.com/questions/15657367/selected-value-for-jsp-drop-down-using-jstl  -->
														<!--  make sure that the is only one space between two varibales  -->
														<option value="${tempLoc.eventLocID}"
															${tempLoc.eventLocID == selectedLocation ? 'selected="selected"' : ''}>${tempLoc.location}
															(${tempLoc.county})</option>




													</c:forEach>
												</select>
											</div>

										</div>



										<!-- Table from sb admin 2 table page -->
										<div class="card shadow mb-4">
											<div class="card-header py-3">
												<h6 class="m-0 font-weight-bold text-primary">DataTables
													Example</h6>
											</div>
											<div class="card-body">
												<div class="table-responsive">
													<div id="dataTable_wrapper"
														class="dataTables_wrapper dt-bootstrap4">
														
														<div class="row">
															<div class="col-sm-12">
																<table class="table table-bordered dataTable"
																	id="dataTable" width="100%" cellspacing="0" role="grid"
																	aria-describedby="dataTable_info" style="width: 100%;">
																	<thead>
																		<tr role="row">
																			<th class="sorting_asc" tabindex="0"
																				aria-controls="dataTable" rowspan="1" colspan="1"
																				aria-sort="ascending"
																				aria-label="Name: activate to sort column descending"
																				style="width: 64px;">Name</th>
																			<th class="sorting" tabindex="0"
																				aria-controls="dataTable" rowspan="1" colspan="1"
																				aria-label="Position: activate to sort column ascending"
																				style="width: 81px;">Position</th>
																			<th class="sorting" tabindex="0"
																				aria-controls="dataTable" rowspan="1" colspan="1"
																				aria-label="Office: activate to sort column ascending"
																				style="width: 56px;">Office</th>
																			<th class="sorting" tabindex="0"
																				aria-controls="dataTable" rowspan="1" colspan="1"
																				aria-label="Age: activate to sort column ascending"
																				style="width: 31px;">Age</th>
																			<th class="sorting" tabindex="0"
																				aria-controls="dataTable" rowspan="1" colspan="1"
																				aria-label="Start date: activate to sort column ascending"
																				style="width: 68px;">Start date</th>
																			<th class="sorting" tabindex="0"
																				aria-controls="dataTable" rowspan="1" colspan="1"
																				aria-label="Salary: activate to sort column ascending"
																				style="width: 67px;">Salary</th>
																		</tr>
																	</thead>
																	<tfoot>
																		<tr>
																			<th rowspan="1" colspan="1">Name</th>
																			<th rowspan="1" colspan="1">Position</th>
																			<th rowspan="1" colspan="1">Office</th>
																			<th rowspan="1" colspan="1">Age</th>
																			<th rowspan="1" colspan="1">Start date</th>
																			<th rowspan="1" colspan="1">Salary</th>
																		</tr>
																	</tfoot>
																	<tbody>


																		<c:forEach items="${volunteers}" var="tempUser">
																			<tr role="row" class="odd">
																				<td class="sorting_1">${tempUser.firstName}</td>
																				<td>${tempUser.lastName}</td>
																				<td>${tempUser.email}</td>
																				<td>${tempUser.phone}</td>
																				<td>${tempUser.start}</td>
																				<td>${tempUser.end}</td>
																			</tr>

																		</c:forEach>


																	</tbody>
																</table>
															</div>
														</div>
														
													</div>
												</div>
											</div>
										</div>


										<!--  Check if the user is logged in  otherwise prompt them to -->

										<input type="hidden" id="eventId" name="eventId"
											value="${specificEvent.eventDetID}" /> <input type="hidden"
											id="setLocation" name="setLocation" /> <input type="hidden"
											id="eventName" name="eventName" value="${specificEvent.name}" />
										<input type="hidden" id="optionStartTime"
											name="optionStartTime" /> <input type="hidden"
											id="optionEndTime" name="optionEndTime" />


										<!-- values relating to the session -->
										<c:if test="${not empty sessionScope.User}">
											<input type="hidden" id="userId" name="userId"
												value="${sessionScope.User.userID }" />

											<input type="hidden" id="userEmail" name="userEmail"
												value="${sessionScope.User.email}" />

											<input type="hidden" id="firstName" name="firstName"
												value="${sessionScope.User.firstName}" />




											<div class="mb-4">
												<button type="button" id="submitButton"
													class="mb-4 btn btn-primary btn-user btn-block">Volunteer</button>
											</div>

										</c:if>



										<!--  https://stackoverflow.com/questions/10943635/how-do-i-pass-multiple-parameter-in-url/10943694 -->
										<form
											action="getLocationTimes?LcurrentEventID=${specificEvent.eventDetID}&LeventStartTime=${specificEvent.startTime}&LeventEndTime=${specificEvent.endTime}"
											name="loactionForm" id="loactionForm" method="POST">

											<input type="hidden" id="LevetLocation" name="LevetLocation" />
											<input type="hidden" id="currentEventID"
												name="currentEventID" value="${specificEvent.eventDetID}" />

										</form>


									</div>

								</div>
							</div>
						</div>

						<!-- end of card main text column -->
					</div>
				</div>


				<!-- End of personal container -->
			</div>

			<!-- End of content -->
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

	</div>
	<!-- End of Page Wrapper -->

	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>
	<script src="js/liveEvent.js"></script>

	<script src="vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<script src="js/dataTablesDemo.js"></script>



</body>
</html>





