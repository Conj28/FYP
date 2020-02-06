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

<title>Register</title>

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
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">
					SB Admin <sup>2</sup>
				</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item"><a class="nav-link" href="index.html">
					<i class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Interface</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-cog"></i> <span>Components</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Custom Components:</h6>
						<a class="collapse-item" href="buttons.html">Buttons</a> <a
							class="collapse-item" href="cards.html">Cards</a>
					</div>
				</div></li>

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseUtilities"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-wrench"></i> <span>Utilities</span>
			</a>
				<div id="collapseUtilities" class="collapse"
					aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Custom Utilities:</h6>
						<a class="collapse-item" href="utilities-color.html">Colors</a> <a
							class="collapse-item" href="utilities-border.html">Borders</a> <a
							class="collapse-item" href="utilities-animation.html">Animations</a>
						<a class="collapse-item" href="utilities-other.html">Other</a>
					</div>
				</div></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Addons</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item active"><a class="nav-link" href="#"
				data-toggle="collapse" data-target="#collapsePages"
				aria-expanded="true" aria-controls="collapsePages"> <i
					class="fas fa-fw fa-folder"></i> <span>Pages</span>
			</a>
				<div id="collapsePages" class="collapse show"
					aria-labelledby="headingPages" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Login Screens:</h6>
						<a class="collapse-item" href="login.html">Login</a> <a
							class="collapse-item" href="register.html">Register</a> <a
							class="collapse-item" href="forgot-password.html">Forgot
							Password</a>
						<div class="collapse-divider"></div>
						<h6 class="collapse-header">Other Pages:</h6>
						<a class="collapse-item" href="404.html">404 Page</a> <a
							class="collapse-item active" href="blank.html">Blank Page</a>
					</div>
				</div></li>

			<!-- Nav Item - Charts -->
			<li class="nav-item"><a class="nav-link" href="charts.html">
					<i class="fas fa-fw fa-chart-area"></i> <span>Charts</span>
			</a></li>

			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link" href="tables.html">
					<i class="fas fa-fw fa-table"></i> <span>Tables</span>
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
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

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

						<!-- Nav Item - Alerts -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-bell fa-fw"></i> <!-- Counter - Alerts -->
								<span class="badge badge-danger badge-counter">3+</span>
						</a> <!-- Dropdown - Alerts -->
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="alertsDropdown">
								<h6 class="dropdown-header">Alerts Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-primary">
											<i class="fas fa-file-alt text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 12, 2019</div>
										<span class="font-weight-bold">A new monthly report is
											ready to download!</span>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-success">
											<i class="fas fa-donate text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 7, 2019</div>
										$290.29 has been deposited into your account!
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-warning">
											<i class="fas fa-exclamation-triangle text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 2, 2019</div>
										Spending Alert: We've noticed unusually high spending for your
										account.
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">Show All Alerts</a>
							</div></li>

						<!-- Nav Item - Messages -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-envelope fa-fw"></i>
								<!-- Counter - Messages --> <span
								class="badge badge-danger badge-counter">7</span>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="messagesDropdown">
								<h6 class="dropdown-header">Message Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle"
											src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
										<div class="status-indicator bg-success"></div>
									</div>
									<div class="font-weight-bold">
										<div class="text-truncate">Hi there! I am wondering if
											you can help me with a problem I've been having.</div>
										<div class="small text-gray-500">Emily Fowler · 58m</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle"
											src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
										<div class="status-indicator"></div>
									</div>
									<div>
										<div class="text-truncate">I have the photos that you
											ordered last month, how would you like them sent to you?</div>
										<div class="small text-gray-500">Jae Chun · 1d</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle"
											src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
										<div class="status-indicator bg-warning"></div>
									</div>
									<div>
										<div class="text-truncate">Last month's report looks
											great, I am very happy with the progress so far, keep up the
											good work!</div>
										<div class="small text-gray-500">Morgan Alvarez · 2d</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle"
											src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
										<div class="status-indicator bg-success"></div>
									</div>
									<div>
										<div class="text-truncate">Am I a good boy? The reason I
											ask is because someone told me that people say this to all
											dogs, even if they aren't good...</div>
										<div class="small text-gray-500">Chicken the Dog · 2w</div>
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">Read More Messages</a>
							</div></li>

						<div class="topbar-divider d-none d-sm-block"></div>

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">Valerie
									Luna</span> <img class="img-profile rounded-circle"
								src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
									Settings
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
									Activity Log
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>

					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">







					<form action="updateEventServlet" method="POST" class="user mb-4"
						id="addEventForm">

						<div class="card-body p-0  ">
							<!-- Nested Row within Card Body -->
							<div class="form-group row">

								<div class="col-lg-6 col-sm-6">
									<div class="card o-hidden border-0 shadow-lg my-5">
										<div class="card-body">

											<div class="p-5">

												<div id="topHalf">
													<div class="text-center">
														<h2 class="text-gray-900 mb-4">Update Event</h2>
														<hr class="mb-4">
													</div>

													<div class="form-group row mb-4">

														<div class="col-sm-6 mb-3 mb-sm-0 ">

															<h4 class="font-weight-bold ml-sm-5 pl-sm-5">Event
																Name</h4>


														</div>
														<div class="col-sm-6">
															<input type="text" class="form-control form-control-user"
																name="eventName" id="eventName" placeholder="Event Name"
																value="${specificEvent.name}" />
														</div>

													</div>

													<div class="form-group row">

														<div class="col-sm-6 mb-3 mb-sm-0">

															<h4 class="font-weight-bold ml-sm-5 pl-sm-5">Event
																Date</h4>

														</div>
														<div class="col-sm-6">
															<input type="date" class="form-control form-control-user"
																name="date" id="date" placeholder="Event Date"
																value="${specificEvent.eventDate}">
														</div>
													</div>

													<!-- start of third row -->
													<div class="form-group row">
														<div class="col-sm-6  mb-3 mb-sm-0">
															<h4 class="font-weight-bold ml-sm-5 pl-sm-5">Start
																Time</h4>
														</div>

														<div class="col-sm-6">
															<!--  start time -->
															<select name="startTime"
																class="form-control selectPadHeight">

																<option value="00:00"
																	${specificEvent.startTime == '00:00'? "selected" : ""}>00:00</option>
																<option value="00:30"
																	${specificEvent.startTime == '00:30'? "selected" : ""}>00:30</option>
																<option value="01:00"
																	${specificEvent.startTime == '01:00'? "selected" : ""}>01:00</option>
																<option value="01:30"
																	${specificEvent.startTime == '01:30'? "selected" : ""}>01:30</option>
																<option value="02:00"
																	${specificEvent.startTime == '02:00'? "selected" : ""}>02:00</option>
																<option value="02:30"
																	${specificEvent.startTime == '02:30'? "selected" : ""}>02:30</option>
																<option value="03:00"
																	${specificEvent.startTime == '03:00'? "selected" : ""}>03:00</option>
																<option value="03:30"
																	${specificEvent.startTime == '03:30'? "selected" : ""}>03:30</option>
																<option value="04:00"
																	${specificEvent.startTime == '04:00'? "selected" : ""}>04:00</option>
																<option value="04:30"
																	${specificEvent.startTime == '04:30'? "selected" : ""}>04:30</option>
																<option value="05:00"
																	${specificEvent.startTime == '05:00'? "selected" : ""}>05:00</option>
																<option value="05:30"
																	${specificEvent.startTime == '05:30'? "selected" : ""}>05:30</option>
																<option value="06:00"
																	${specificEvent.startTime == '06:00'? "selected" : ""}>06:00</option>
																<option value="06:30"
																	${specificEvent.startTime == '06:30'? "selected" : ""}>06:30</option>
																<option value="07:00"
																	${specificEvent.startTime == '07:00'? "selected" : ""}>07:00</option>
																<option value="07:30"
																	${specificEvent.startTime == '07:30'? "selected" : ""}>07:30</option>
																<option value="08:00"
																	${specificEvent.startTime == '08:00'? "selected" : ""}>08:00</option>
																<option value="08:30"
																	${specificEvent.startTime == '08:30'? "selected" : ""}>08:30</option>
																<option value="09:00"
																	${specificEvent.startTime == '09:00'? "selected" : ""}>09:00</option>
																<option value="09:30"
																	${specificEvent.startTime == '09:30'? "selected" : ""}>09:30</option>
																<option value="10:00"
																	${specificEvent.startTime == '10:00'? "selected" : ""}>10:00</option>
																<option value="10:30"
																	${specificEvent.startTime == '10:30'? "selected" : ""}>10:30</option>
																<option value="11:00"
																	${specificEvent.startTime == '11:00'? "selected" : ""}>11:00</option>
																<option value="11:30"
																	${specificEvent.startTime == '11:30'? "selected" : ""}>11:30</option>
																<option value="12:00"
																	${specificEvent.startTime == '12:00'? "selected" : ""}>12:00</option>
																<option value="12:30"
																	${specificEvent.startTime == '12:30'? "selected" : ""}>12:30</option>
																<option value="13:00"
																	${specificEvent.startTime == '13:00'? "selected" : ""}>13:00</option>
																<option value="13:30"
																	${specificEvent.startTime == '13:30'? "selected" : ""}>13:30</option>
																<option value="14:00"
																	${specificEvent.startTime == '14:00'? "selected" : ""}>14:00</option>
																<option value="14:30"
																	${specificEvent.startTime == '14:30'? "selected" : ""}>14:30</option>
																<option value="15:00"
																	${specificEvent.startTime == '15:00'? "selected" : ""}>15:00</option>
																<option value="15:30"
																	${specificEvent.startTime == '15:30'? "selected" : ""}>15:30</option>
																<option value="16:00"
																	${specificEvent.startTime == '16:00'? "selected" : ""}>16:00</option>
																<option value="16:30"
																	${specificEvent.startTime == '16:30'? "selected" : ""}>16:30</option>
																<option value="17:00"
																	${specificEvent.startTime == '17:00'? "selected" : ""}>17:00</option>
																<option value="17:30"
																	${specificEvent.startTime == '17:30'? "selected" : ""}>17:30</option>
																<option value="18:00"
																	${specificEvent.startTime == '18:00'? "selected" : ""}>18:00</option>
																<option value="18:30"
																	${specificEvent.startTime == '18:30'? "selected" : ""}>18:30</option>
																<option value="19:00"
																	${specificEvent.startTime == '19:00'? "selected" : ""}>19:00</option>
																<option value="19:30"
																	${specificEvent.startTime == '19:30'? "selected" : ""}>19:30</option>
																<option value="20:00"
																	${specificEvent.startTime == '20:00'? "selected" : ""}>20:00</option>
																<option value="20:30"
																	${specificEvent.startTime == '20:30'? "selected" : ""}>20:30</option>
																<option value="21:00"
																	${specificEvent.startTime == '21:00'? "selected" : ""}>21:00</option>
																<option value="21:30"
																	${specificEvent.startTime == '21:30'? "selected" : ""}>21:30</option>
																<option value="22:00"
																	${specificEvent.startTime == '22:00'? "selected" : ""}>22:00</option>
																<option value="22:30"
																	${specificEvent.startTime == '22:30'? "selected" : ""}>22:30</option>
																<option value="23:00"
																	${specificEvent.startTime == '23:00'? "selected" : ""}>23:00</option>
																<option value="23:30"
																	${specificEvent.startTime == '23:30'? "selected" : ""}>23:30</option>





															</select>
														</div>
													</div>


													<!--  end of third row -->


													<!--  Start of fourt row  -->
													<div class="form-group row">
														<div class="col-sm-6  mb-3 mb-sm-0">
															<h4 class="font-weight-bold ml-sm-5 pl-sm-5">End
																Time</h4>
														</div>

														<div class="col-sm-6">
															<!--  start time -->
															<select name="endTime"
																class="form-control selectPadHeight"
																placeholder="end time">


																<option value="00:00"
																	${specificEvent.endTime == '00:00'? "selected" : ""}>00:00</option>
																<option value="00:30"
																	${specificEvent.endTime == '00:30'? "selected" : ""}>00:30</option>
																<option value="01:00"
																	${specificEvent.endTime == '01:00'? "selected" : ""}>01:00</option>
																<option value="01:30"
																	${specificEvent.endTime == '01:30'? "selected" : ""}>01:30</option>
																<option value="02:00"
																	${specificEvent.endTime == '02:00'? "selected" : ""}>02:00</option>
																<option value="02:30"
																	${specificEvent.endTime == '02:30'? "selected" : ""}>02:30</option>
																<option value="03:00"
																	${specificEvent.endTime == '03:00'? "selected" : ""}>03:00</option>
																<option value="03:30"
																	${specificEvent.endTime == '03:30'? "selected" : ""}>03:30</option>
																<option value="04:00"
																	${specificEvent.endTime == '04:00'? "selected" : ""}>04:00</option>
																<option value="04:30"
																	${specificEvent.endTime == '04:30'? "selected" : ""}>04:30</option>
																<option value="05:00"
																	${specificEvent.endTime == '05:00'? "selected" : ""}>05:00</option>
																<option value="05:30"
																	${specificEvent.endTime == '05:30'? "selected" : ""}>05:30</option>
																<option value="06:00"
																	${specificEvent.endTime == '06:00'? "selected" : ""}>06:00</option>
																<option value="06:30"
																	${specificEvent.endTime == '06:30'? "selected" : ""}>06:30</option>
																<option value="07:00"
																	${specificEvent.endTime == '07:00'? "selected" : ""}>07:00</option>
																<option value="07:30"
																	${specificEvent.endTime == '07:30'? "selected" : ""}>07:30</option>
																<option value="08:00"
																	${specificEvent.endTime == '08:00'? "selected" : ""}>08:00</option>
																<option value="08:30"
																	${specificEvent.endTime == '08:30'? "selected" : ""}>08:30</option>
																<option value="09:00"
																	${specificEvent.endTime == '09:00'? "selected" : ""}>09:00</option>
																<option value="09:30"
																	${specificEvent.endTime == '09:30'? "selected" : ""}>09:30</option>
																<option value="10:00"
																	${specificEvent.endTime == '10:00'? "selected" : ""}>10:00</option>
																<option value="10:30"
																	${specificEvent.endTime == '10:30'? "selected" : ""}>10:30</option>
																<option value="11:00"
																	${specificEvent.endTime == '11:00'? "selected" : ""}>11:00</option>
																<option value="11:30"
																	${specificEvent.endTime == '11:30'? "selected" : ""}>11:30</option>
																<option value="12:00"
																	${specificEvent.endTime == '12:00'? "selected" : ""}>12:00</option>
																<option value="12:30"
																	${specificEvent.endTime == '12:30'? "selected" : ""}>12:30</option>
																<option value="13:00"
																	${specificEvent.endTime == '13:00'? "selected" : ""}>13:00</option>
																<option value="13:30"
																	${specificEvent.endTime == '13:30'? "selected" : ""}>13:30</option>
																<option value="14:00"
																	${specificEvent.endTime == '14:00'? "selected" : ""}>14:00</option>
																<option value="14:30"
																	${specificEvent.endTime == '14:30'? "selected" : ""}>14:30</option>
																<option value="15:00"
																	${specificEvent.endTime == '15:00'? "selected" : ""}>15:00</option>
																<option value="15:30"
																	${specificEvent.endTime == '15:30'? "selected" : ""}>15:30</option>
																<option value="16:00"
																	${specificEvent.endTime == '16:00'? "selected" : ""}>16:00</option>
																<option value="16:30"
																	${specificEvent.endTime == '16:30'? "selected" : ""}>16:30</option>
																<option value="17:00"
																	${specificEvent.endTime == '17:00'? "selected" : ""}>17:00</option>
																<option value="17:30"
																	${specificEvent.endTime == '17:30'? "selected" : ""}>17:30</option>
																<option value="18:00"
																	${specificEvent.endTime == '18:00'? "selected" : ""}>18:00</option>
																<option value="18:30"
																	${specificEvent.endTime == '18:30'? "selected" : ""}>18:30</option>
																<option value="19:00"
																	${specificEvent.endTime == '19:00'? "selected" : ""}>19:00</option>
																<option value="19:30"
																	${specificEvent.endTime == '19:30'? "selected" : ""}>19:30</option>
																<option value="20:00"
																	${specificEvent.endTime == '20:00'? "selected" : ""}>20:00</option>
																<option value="20:30"
																	${specificEvent.endTime == '20:30'? "selected" : ""}>20:30</option>
																<option value="21:00"
																	${specificEvent.endTime == '21:00'? "selected" : ""}>21:00</option>
																<option value="21:30"
																	${specificEvent.endTime == '21:30'? "selected" : ""}>21:30</option>
																<option value="22:00"
																	${specificEvent.endTime == '22:00'? "selected" : ""}>22:00</option>
																<option value="22:30"
																	${specificEvent.endTime == '22:30'? "selected" : ""}>22:30</option>
																<option value="23:00"
																	${specificEvent.endTime == '23:00'? "selected" : ""}>23:00</option>
																<option value="23:30"
																	${specificEvent.endTime == '23:30'? "selected" : ""}>23:30</option>




															</select>
														</div>
													</div>


													<div class="form-group row mb-4">

														<div class="col-sm-6 mb-3 mb-sm-0 ">

															<h4 class="font-weight-bold ml-sm-5 pl-sm-5">Event
																Image(URL)</h4>
														</div>
														<div class="col-sm-6">
															<input type="text" class="form-control form-control-user"
																name="img" id="img" value="${specificEvent.img}">
														</div>
													</div>


													<div class="form-group row mb-4">

														<div class="col-sm-6 mb-3 mb-sm-0 ">

															<h4 class="font-weight-bold ml-sm-5 pl-sm-5">Event
																Description</h4>
														</div>
														<div class="col-sm-6">
															<textarea class="form-control" name="description"
																rows="25" cols="50">${specificEvent.details}</textarea>
														</div>
													</div>
													
													 <input type="hidden"
													name="EventID" value="${specificEvent.eventDetID}" />

													<!--  Testing the jquery to add locations -->

													<!-- end of Top Half-->
												</div>



											</div>
										</div>
									</div>
								</div>

								<!-- ****************Start of the right side************************************************* -->
								<div class="col-lg-6 col-sm-6">
									<div class="card o-hidden border-0 shadow-lg my-5">
										<div class="card-body">
											<div class="p-5">

												<div class="text-center">

													<h2 class="text-gray-900 mb-4">Update Locations</h2>
													<hr class="mb-4">

												</div>


												<!-- For each of event location here-->


												<!-- ENd of each for each -->

												<c:forEach items="${eventLocations}" var="locs">
													<div class="form-group row">

														<div class="col-sm-4 mb-3 mb-sm-0">



															<!--  Dropdown menu  select-css sideBySideForm -->

															<!-- padding not working -  https://stackoverflow.com/questions/22681141/select-option-padding-not-working-in-chrome?lq=1 -->

															<select name="county${locs.numberDays}"
																class="form-control selectPadHeight">

																<option value='antrim'
																	${locs.county == 'antrim'? "selected" : ""}>Antrim</option>
																<option value='armagh'
																	${locs.county == 'armagh'? "selected" : ""}>Armagh</option>
																<option value='carlow'
																	${locs.county == 'carlow'? "selected" : ""}>Carlow</option>
																<option value='cavan'
																	${locs.county == 'cavan'? "selected" : ""}>Cavan</option>
																<option value='clare'
																	${locs.county == 'clare'? "selected" : ""}>Clare</option>
																<option value='cork'
																	${locs.county == 'cork'? "selected" : ""}>Cork</option>
																<option value='derry'
																	${locs.county == 'derry'? "selected" : ""}>Derry</option>
																<option value='donegal'
																	${locs.county == 'donegal'? "selected" : ""}>Donegal</option>
																<option value='down'
																	${locs.county == 'down'? "selected" : ""}>Down</option>
																<option value='dublin'
																	${locs.county == 'dublin'? "selected" : ""}>Dublin</option>
																<option value='fermanagh'
																	${locs.county == 'fermanagh'? "selected" : ""}>Fermanagh</option>
																<option value='galway'
																	${locs.county == 'galway'? "selected" : ""}>Galway</option>
																<option value='kerry'
																	${locs.county == 'kerry'? "selected" : ""}>Kerry</option>
																<option value='kildare'
																	${locs.county == 'kildare'? "selected" : ""}>Kildare</option>
																<option value='kilkenny'
																	${locs.county == 'kilkenny'? "selected" : ""}>Kilkenny</option>
																<option value='laois'
																	${locs.county == 'laois'? "selected" : ""}>Laois</option>
																<option value='leitrim'
																	${locs.county == 'leitrim'? "selected" : ""}>Leitrim</option>
																<option value='limerick'
																	${locs.county == 'limerick'? "selected" : ""}>Limerick</option>
																<option value='longford'
																	${locs.county == 'longford'? "selected" : ""}>Longford</option>
																<option value='louth'
																	${locs.county == 'louth'? "selected" : ""}>Louth</option>
																<option value='mayo'
																	${locs.county == 'mayo'? "selected" : ""}>Mayo</option>
																<option value='meath'
																	${locs.county == 'meath'? "selected" : ""}>Meath</option>
																<option value='monaghan'
																	${locs.county == 'monaghan'? "selected" : ""}>Monaghan</option>
																<option value='offaly'
																	${locs.county == 'offaly'? "selected" : ""}>Offaly</option>
																<option value='roscommon'
																	${locs.county == 'roscommon'? "selected" : ""}>Roscommon</option>
																<option value='sligo'
																	${locs.county == 'sligo'? "selected" : ""}>Sligo</option>
																<option value='tipperary'
																	${locs.county == 'tipperary'? "selected" : ""}>Tipperary</option>
																<option value='tyrone'
																	${locs.county == 'tyrone'? "selected" : ""}>Tyrone</option>
																<option value='waterford'
																	${locs.county == 'waterford'? "selected" : ""}>Waterford</option>
																<option value='westmeath'
																	${locs.county == 'westmeath'? "selected" : ""}>Westmeath</option>
																<option value='wexford'
																	${locs.county == 'wexford'? "selected" : ""}>Wexford</option>
																<option value='wicklow'
																	${locs.county == 'wicklow'? "selected" : ""}>Wicklow</option>


															</select>

														</div>

														<div class="col-sm-5 mb-3 mb-sm-0">
															<input type="text" class="form-control form-control-user"
																name="location${locs.numberDays}" id="locationN" placeholder="Location"
																value="${locs.location}">
														</div>

														<!--  update button -->
														<div class="col-sm-2 mb-3 mb-sm-0">
															<input type="number"
																class="form-control form-control-user" name="spaces${locs.numberDays}"
																id="spaces${locs.numberDays}" placeholder="Available Spaces"
																value=${locs.availableSpaces}>
														</div>
														<div class="col-sm-1 mb-3 mb-sm-0">
															<a href="deleteLocation?id=${locs.eventLocID}"
																class="btn btn-large btn-danger btn-circle"> <i
																class="fas fa-trash"></i>
															</a>
														</div>
														
														<input type = "hidden" name = "locID${locs.numberDays}" value = "${locs.eventLocID}"/>


													</div>
												</c:forEach>


												

												<div class="text-center">
													<hr>
													<h2 class="text-gray-900 ">Add Locations</h2>


												</div>



												<div class="row form-group"
													style="display: inline-block; text-align: right; width: 100%">




													<a id="btAdd" value="Add Element"
														class="btn btn-success btn-icon-split mb-4"> <span
														class="icon text-white"> <i class="fas fa-plus"></i>
													</span> <span class="text text-white">Add Location</span>
													</a>
													<!-- input type="button" id="btAdd" value="Add Element" class="bt" /> -->
													<!-- <input type="button" id="btRemove" value="Remove Element" class="bt" /> -->



													<a id="btRemove" value="Remove Element"
														class="btn btn-danger btn-icon-split mb-4"> <span
														class="icon text-white"> <i class="fas fa-minus"></i>
													</span> <span class="text text-white">Remove Location</span>
													</a>
													<!-- input type="button" id="btAdd" value="Add Element" class="bt" /> -->


												</div>






												<div id="locSpace"></div>

												<input type="hidden" name="numLocs" /> <input type="hidden"
													name="loggedInUser" value="${sessionScope.User.userID }" />
													
													

												<!-- <div class="  text-center">
													<p class="hiddenText dangerText" id="warningText">Hidden
														Text</p>
												</div>-->

												<button type="submit" id="checkPassword"
													class="btn btn-primary btn-user btn-block">
													<b>Add Event</b>
												</button>
												<hr>
											</div>
					</form>
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

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>

</body>

</html>
