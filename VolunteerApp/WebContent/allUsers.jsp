<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Users</title>

<!-- Custom fonts for this template-->
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


</head>

<body>

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="index.html">
				<div class="sidebar-brand-icon ">
					<i class="fas fa-hands-helping"></i>
				</div>
				<div class="sidebar-brand-text mx-3">AlzInvolved</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link" href="AdminHome">
					<i class="fas fa-home"></i> <span>Admin Home</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Admin Items</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-calendar-alt"></i> <span>Events</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Events:</h6>
						<a class="collapse-item" href="AdminHome">Upcoming Events</a> <a
							class="collapse-item" href="getPastEvents">Past Events</a> <a
							class="collapse-item" href="addEvent.jsp">Add Event</a>
					</div>
				</div></li>

			<!-- Users -->
			<li class="nav-item"><a class="nav-link" href="getAllUsers">
					<i class="fas fa-user-friends"></i> <span>Users</span>
			</a></li>


			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Other</div>

			<li class="nav-item"><a class="nav-link" href="getEventsServlet">
					<i class="fab fa-elementor"></i> <span>Home</span>
			</a></li>

			<li class="nav-item"><a class="nav-link" href="LogoutServlet">
					<i class="fas fa-sign-out-alt"></i> <span>Log out</span>
			</a></li>



			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class=" navbar-expand navbar-light bg-white mb-4 static-top shadow">

					<!-- navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow -->

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->

					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div>
					<form action="LiveEvent?currentEventID=${specificEvent.eventDetID}"
						method="POST">
						<div class="col-xl-12 col-sm-12">

							<div class="row">


								<!--  used for padding left -->
								<div class="col-lg-1"></div>
								<div class="col-lg-10">

									<!-- Table from sb admin 2 table page ie - datatables https://datatables.net/ -->
									<div class="card shadow mb-4 mt-4">
										<!--  <div class="card-header py-3 ">
											<h6 class="m-0 font-weight-bold text-primary">DataTables
												Example</h6>
										</div> -->


										<div
											class="card-header py-3 d-flex flex-row align-items-center justify-content-between bg-gradient-primary">
											<h6 class="h4 m-0 font-weight-bold text-white">All Users</h6>

										</div>


										<div class="card-body mt-2">
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
																		<th class="sorting_asc bg-gradient-primary text-white"
																			tabindex="0" aria-controls="dataTable" rowspan="1"
																			colspan="1" aria-sort="ascending"
																			aria-label="Name: activate to sort column descending"
																			style="width: 64px;">Name</th>
																		<th class="sorting bg-gradient-primary text-white"
																			tabindex="0" aria-controls="dataTable" rowspan="1"
																			colspan="1"
																			aria-label="Position: activate to sort column ascending"
																			style="width: 81px;">Email</th>
																		<th class="sorting bg-gradient-primary text-white"
																			tabindex="0" aria-controls="dataTable" rowspan="1"
																			colspan="1"
																			aria-label="Office: activate to sort column ascending"
																			style="width: 56px;">Phone</th>
																		<th class="sorting bg-gradient-primary text-white"
																			tabindex="0" aria-controls="dataTable" rowspan="1"
																			colspan="1"
																			aria-label="Office: activate to sort column ascending"
																			style="width: 56px;">Address</th>
																		<th class="sorting bg-gradient-primary text-white"
																			tabindex="0" aria-controls="dataTable" rowspan="1"
																			colspan="1"
																			aria-label="Age: activate to sort column ascending"
																			style="width: 31px;">Town</th>
																		<th class="sorting bg-gradient-primary text-white"
																			tabindex="0" aria-controls="dataTable" rowspan="1"
																			colspan="1"
																			aria-label="Start date: activate to sort column ascending"
																			style="width: 68px;">County</th>
																		<th class="sorting bg-gradient-primary text-white"
																			tabindex="0" aria-controls="dataTable" rowspan="1"
																			colspan="1"
																			aria-label="Salary: activate to sort column ascending"
																			style="width: 67px;">Admin</th>
																	</tr>
																</thead>
																<tfoot>
																<tbody>


																	<c:forEach items="${volunteers}" var="tempUser">
																		<tr role="row" class="odd">
																			<td class="sorting_1">${tempUser.firstName}
																				${tempUser.lastName}</td>
																			<td>${tempUser.email}</td>
																			<td>${tempUser.phone}</td>
																			
																			<td>${tempUser.address}</td>
																			<td>${tempUser.town}</td>
																			<td style="text-transform: capitalize">${tempUser.county}</td>
																			
																			<c:if test="${tempUser.role eq 1}">
																				<td>No <a href = "addAdmin?userID=${tempUser.userID}" class = "text-danger" >
																				(Make Admin)
																				</a>
																				</td>
																			</c:if>
																			<c:if test="${tempUser.role eq 2}">
																				<td class = "text-success">Admin</td>
																			</c:if>
																			
																			
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






									</c:if>



									<!--  https://stackoverflow.com/questions/10943635/how-do-i-pass-multiple-parameter-in-url/10943694 -->




								</div>
							</div>
						</div>
					</form>
					<!-- end of card main text column -->
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	<!-- end of form Group -->
	</div>

	</div>




	</div>
	<!-- /.container-fluid -->

	</div>
	<!-- End of Main Content -->

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

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>


	<!--  ***************************Start of second part ********************************************* -->



	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>
	<script src="js/jqueryTest.js"></script>
	<script src="js/autoToggleOff.js"></script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>



	<script src="vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<script src="js/dataTablesDemo.js"></script>


</body>

</html>
