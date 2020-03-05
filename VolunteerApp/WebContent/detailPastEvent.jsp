<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link href="vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.css"
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
				<div id="collapsePages" class="collapse"
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



					<div class="card-body p-0  ">
						<!-- Nested Row within Card Body -->
						<div class="form-group row">

							<div class="col-lg-6 col-sm-12">
								<div class="card o-hidden border-left-primary shadow-lg ">
									<div class="card-body">

										<div class="p-4">


											<div class="row no-gutters align-items-center mb-4">
												<div class="col mr-2">

													<div>

														<div class="mb-2 ml-4">
															<h4 class="font-weight-bold text-primary header-inline">Event
																Name:</h4>
															<h4 class="font-weight-bold header-inline text-gray-800">${specificEvent.name}
															</h4>
														</div>

														<div class="mb-2 ml-4">
															<h4 class="font-weight-bold text-primary header-inline">Event
																Date:</h4>
															<h4 class="font-weight-bold header-inline text-gray-800">${specificEvent.eventDate}</h4>
														</div>

														<div class="mb-2 ml-4">
															<h4 class="font-weight-bold text-primary header-inline">Start
																Time:</h4>
															<h4 name="eventStartTime"
																class="font-weight-bold header-inline text-gray-800">${specificEvent.startTime}</h4>
														</div>

														<div class=" ml-4">
															<h4 class="font-weight-bold text-primary header-inline">End
																Time:</h4>
															<h4 name="eventEndTime"
																class="font-weight-bold header-inline text-gray-800">${specificEvent.endTime}</h4>
														</div>
															


													</div>
												</div>
												<div class="col-auto">
												<a href = "EmailUsers?currentEventID=${specificEvent.eventDetID}">
													<i class="far fa-envelope iconColour fa-5x"></i>
												<h3 class ="font-weight-bold text-primary">Email</h3></a></div>
											</div>

											<!-- 	<div id="topHalf">
												
													<h1 class="text-gray-900 mb-4 ml-4">
														${specificEvent.name} <i class="far fa-calendar-alt iconColour"></i>
													</h1>
													<hr class="mb-4">
												


												<div class="form-group row">
													<div class="col-sm-12 col-md-12 mb-3 mb-sm-0">

														<div class="mb-2 ml-4">
															<h4 class="font-weight-bold text-primary header-inline">Event
																Date:</h4>
															<h4 class="font-weight-bold header-inline text-gray-800">${specificEvent.eventDate}</h4>
														</div>

														<div class="mb-2 ml-4">
															<h4 class="font-weight-bold text-primary header-inline">Start
																Time:</h4>
															<h4 name="eventStartTime"
																class="font-weight-bold header-inline text-gray-800">${specificEvent.startTime}</h4>
														</div>

														<div class=" ml-4">
															<h4 class="font-weight-bold text-primary header-inline">End
																Time:</h4>
															<h4 name="eventEndTime"
																class="font-weight-bold header-inline text-gray-800">${specificEvent.endTime}</h4>
														</div>
													</div>
												</div>
											</div> -->



										</div>


										<div class="mb-4">


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
																			style="width: 81px;">Location</th>
																		<th class="sorting" tabindex="0"
																			aria-controls="dataTable" rowspan="1" colspan="1"
																			aria-label="Office: activate to sort column ascending"
																			style="width: 56px;">County</th>
																		<th class="sorting" tabindex="0"
																			aria-controls="dataTable" rowspan="1" colspan="1"
																			aria-label="Office: activate to sort column ascending"
																			style="width: 56px;">Email</th>
																		<th class="sorting" tabindex="0"
																			aria-controls="dataTable" rowspan="1" colspan="1"
																			aria-label="Age: activate to sort column ascending"
																			style="width: 31px;">Phone</th>
																		<th class="sorting" tabindex="0"
																			aria-controls="dataTable" rowspan="1" colspan="1"
																			aria-label="Start date: activate to sort column ascending"
																			style="width: 68px;">Start Time</th>
																		<th class="sorting" tabindex="0"
																			aria-controls="dataTable" rowspan="1" colspan="1"
																			aria-label="Salary: activate to sort column ascending"
																			style="width: 67px;">End Time</th>
																	</tr>
																</thead>
																<tfoot>
																	<!-- <tr>
																		<th rowspan="1" colspan="1">Name</th>
																		<th rowspan="1" colspan="1">Position</th>
																		<th rowspan="1" colspan="1">Office</th>
																		<th rowspan="1" colspan="1">Age</th>
																		<th rowspan="1" colspan="1">Start date</th>
																		<th rowspan="1" colspan="1">Salary</th>
																	</tr> 
																</tfoot> -->
																<tbody>


																	<c:forEach items="${volunteers}" var="tempUser">
																		<tr role="row" class="odd">
																			<td class="sorting_1">${tempUser.firstName}
																				${tempUser.lastName}</td>
																			<td>${tempUser.location}</td>
																			<td style="text-transform: capitalize">${tempUser.county}</td>
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
								</div>


							</div>




							<!-- ****************Start of the right side************************************************* -->
							<div class="col-lg-6 col-sm-12">

								<div class="">








									<div class="form-group row">

										<div class=col-sm-12>





											<div class="card shadow mb-4">
												
													<a href="#collapseCard1" class="d-block card-header py-3 bg-gradient-primary" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCard1">
													<h6 class="m-0 font-weight-bold text-white">Volunteers per location</h6>
												</a>
												<div class="collapse mb-4" id = "collapseCard1">
													<div class="chart-bar">
														<div class="chartjs-size-monitor">
															<div class="chartjs-size-monitor-expand">
																<div class=""></div>
															</div>
															<div class="chartjs-size-monitor-shrink">
																<div class=""></div>
															</div>
														</div>
														<canvas id="myBarChart" width="731" height="400"
															class="chartjs-render-monitor"
															style="display: block; height: 320px; width: 585px;"></canvas>

													</div>



													<!-- <div class="card shadow mb-4">
                
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Revenue Sources</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Dropdown Header:</div>
                      <a class="dropdown-item" href="#">Action</a>
                      <a class="dropdown-item" href="#">Another action</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                  </div>
                </div>
             
                <div class="card-body">
                  <div class="chart-pie pt-4 pb-2"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
                    <canvas id="myPieChart" width="324" height="245" class="chartjs-render-monitor" style="display: block; height: 245px; width: 324px;"></canvas>
                  </div>
                  <div class="mt-4 text-center small">
                    <span class="mr-2">
                      <i class="fas fa-circle text-primary"></i> Direct
                    </span>
                    <span class="mr-2">
                      <i class="fas fa-circle text-success"></i> Social
                    </span>
                    <span class="mr-2">
                      <i class="fas fa-circle text-info"></i> Referral
                    </span>
                  </div>
                </div>
              </div> -->






												</div>




											</div>


											<div class="card shadow mb-4">
												<a href="#collapseCard2" class="d-block card-header py-3 bg-gradient-primary" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCard2">
													<h6 class="m-0 font-weight-bold text-white">Revenue by Location</h6>
												</a>
												<div class="collapse mb-4" id = "collapseCard2">
													<div class="chart-bar">
														<div class="chartjs-size-monitor">
															<div class="chartjs-size-monitor-expand">
																<div class=""></div>
															</div>
															<div class="chartjs-size-monitor-shrink">
																<div class=""></div>
															</div>
														</div>
														<canvas id="myBarChart2" width="731" height="400"
															class="chartjs-render-monitor"
															style="display: block; height: 320px; width: 585px;"></canvas>

													</div>


												</div>




											</div>
											
				




											<!-- <div class="card shadow mb-4">
												<div class="card-header py-3">
													<h6 class="m-0 font-weight-bold text-primary">Area
														Chart</h6>
												</div>
												<div class="card-body">
													<div class="chart-area">
														<div class="chartjs-size-monitor">
															<div class="chartjs-size-monitor-expand">
																<div class=""></div>
															</div>
															<div class="chartjs-size-monitor-shrink">
																<div class=""></div>
															</div>
														</div>
														<canvas id="myAreaChart"
															style="display: block; width: 603px; height: 320px;"
															width="603" height="320" class="chartjs-render-monitor"></canvas>
													</div>
													<hr>
													Styling for the area chart can be found in the
													<code>/js/demo/chart-area-demo.js</code>
													file.
												</div>
											</div> -->


										</div>



									<div class = "col-sm-12">
									
												

													
													<!-- <hr class="mb-4"
														style="border: 1px solid rgba(0, 0, 0, .1)"> -->




													<div class="form-group row">

														<div class="col-sm-12">
															
															<div class="row mb-4">

																<!-- total Revenue -->
																<div class="col-sm-12 mb-4 ">
																	<div class="card border-left-primary shadow h-100 py-2">
																		<div class="card-body">
																			<div class="row no-gutters align-items-center">
																				<div class="col mr-2">
																					<div
																						class="text-xl font-weight-bold text-primary text-uppercase mb-1">Total Raised</div>
																					<div class="h2 mb-0 font-weight-bold text-gray-600">€ ${totalRevenue}</div>
																				</div>
																				<div class="col-auto">
																					<i class="fas fa-euro-sign fa-2x text-grey-800"></i>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															
															
															<!-- Total volunteers -->
															<div class="col-sm-12 mb-4 ">
																	<div class="card border-left-primary shadow h-100 py-2">
																		<div class="card-body">
																			<div class="row no-gutters align-items-center">
																				<div class="col mr-2">
																					<div
																						class="text-xl font-weight-bold text-primary text-uppercase mb-1">Total Volunteers</div>
																					<div class="h2 mb-0 font-weight-bold text-gray-600">${totalNumVolunteers}
																						</div>
																				</div>
																				<div class="col-auto">
																					<i class="fas fa-user-friends fa-2x text-grey-800"></i>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																
																<div class="col-sm-6 mb-4 ">
																	<div class="card border-left-primary shadow h-100 py-2">
																		<div class="card-body">
																			<div class="row no-gutters align-items-center">
																				<div class="col mr-2">
																					<div
																						class="text-xl font-weight-bold text-primary text-uppercase mb-1">Number of Locations</div>
																					<div class="h3 mb-0 font-weight-bold text-gray-600">${numberOfLocation}
																						</div>
																				</div>
																				<div class="col-auto">
																					<i class="fas fa-map-marker-alt fa-2x text-grey-800"></i>
																				</div>
																			</div>
																		</div>
																	</div>
																</div><div class="col-sm-6 mb-4 ">
																	<div class="card border-left-primary shadow h-100 py-2">
																		<div class="card-body">
																			<div class="row no-gutters align-items-center">
																				<div class="col mr-2">
																					<div
																						class="text-xl font-weight-bold text-primary text-uppercase mb-1">Event Duration</div>
																					<div class="h3 mb-0 font-weight-bold text-grey-600">${eventDuration}
																						Hours</div>
																				</div>
																				<div class="col-auto">
																					<i class="fas fa-clock fa-2x text-grey-800"></i>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col-sm-6 mb-4 ">
																	<div class="card border-left-primary shadow h-100 py-2">
																		<div class="card-body">
																			<div class="row no-gutters align-items-center">
																				<div class="col mr-2">
																					<div
																						class="text-xl font-weight-bold text-primary text-uppercase mb-1">Average Volunteer Time</div>
																					<div class="h3 mb-0 font-weight-bold text-gray-600">${avgVolunteerTime}
																						Minutes</div>
																				</div>
																				<div class="col-auto">
																					<i class="fas fa-hourglass fa-2x text-grey-800"></i>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col-sm-6 mb-4 ">
																	<div class="card border-left-primary shadow h-100 py-2">
																		<div class="card-body">
																			<div class="row no-gutters align-items-center">
																				<div class="col mr-2">
																					<div
																						class="text-xl font-weight-bold text-primary text-uppercase mb-1">Value per Volunteer</div>
																					<div class="h3 mb-0 font-weight-bold text-gray-600">€ ${revPerPerson}
																						</div>
																				</div>
																				<div class="col-auto">
																					<i class="fas fa-search-dollar fa-2x text-grey-800"></i>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																
																<div class="col-sm-6 mb-4 ">
																	<div class="card border-left-primary shadow h-100 py-2">
																		<div class="card-body">
																			<div class="row no-gutters align-items-center">
																				<div class="col mr-2">
																					<div
																						class="text-xl font-weight-bold text-primary text-uppercase mb-1">Best Performing Location</div>
																					<div class="h3 mb-0 font-weight-bold text-gray-600">${mostProfitableEvent}
																						</div>
																				</div>
																				<div class="col-auto">
																					<i class="fas fa-arrow-circle-up fa-2x text-grey-800"></i>
																				</div>
																			</div>
																		</div>
																	</div>
																</div><div class="col-sm-6 mb-4 ">
																	<div class="card border-left-primary shadow h-100 py-2">
																		<div class="card-body">
																			<div class="row no-gutters align-items-center">
																				<div class="col mr-2">
																					<div
																						class="text-xl font-weight-bold text-primary text-uppercase mb-1">Worst Performing Event</div>
																					<div class="h3 mb-0 font-weight-bold text-gray-600">${leasetProfitableEvent}
																						</div>
																				</div>
																				<div class="col-auto">
																					<i class="fas fa-arrow-circle-down fa-2x text-grey-800"></i>
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



	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.bundle.js"></script>

	<!-- <script src="js/pieChart.js"></script> -->


	<!--  edited from sb-admin2 barchart.js -->
	<script>
		// Set new default font family and font color to mimic Bootstrap's default styling
				Chart.defaults.global.defaultFontFamily = 'Nunito',
				'-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
		Chart.defaults.global.defaultFontColor = '#858796';

		function number_format(number, decimals, dec_point, thousands_sep) {
			// *     example: number_format(1234.56, 2, ',', ' ');
			// *     return: '1 234,56'
			number = (number + '').replace(',', '').replace(' ', '');
			var n = !isFinite(+number) ? 0 : +number, prec = !isFinite(+decimals) ? 0
					: Math.abs(decimals), sep = (typeof thousands_sep === 'undefined') ? ','
					: thousands_sep, dec = (typeof dec_point === 'undefined') ? '.'
					: dec_point, s = '', toFixedFix = function(n, prec) {
				var k = Math.pow(10, prec);
				return '' + Math.round(n * k) / k;
			};
			// Fix for IE parseFloat(0.55).toFixed(0) = 0;
			s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
			if (s[0].length > 3) {
				s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
			}
			if ((s[1] || '').length < prec) {
				s[1] = s[1] || '';
				s[1] += new Array(prec - s[1].length + 1).join('0');
			}
			return s.join(dec);
		}

		// Bar Chart Example
		var ctx = document.getElementById("myBarChart");
		var myBarChart = new Chart(
				ctx,
				{
					type : 'bar',
					data : {
						labels : [ 
							
							//Generate each title
							<c:forEach items="${numVol}" var="tempEvent">
								"${tempEvent.location}",
							</c:forEach>
							
								
								
								],
						datasets : [ {
							label : "Volunteers ",
							backgroundColor : "#3CB371",
							hoverBackgroundColor : "#2e59d9",
							borderColor : "#4e73df",
							data : [ 
								
								<c:forEach items="${numVol}" var="tempEvent">
								"${tempEvent.numberSpaces}",
							</c:forEach>
								
							],
						} ],
					},
					options : {
						maintainAspectRatio : false,
						layout : {
							padding : {
								left : 10,
								right : 25,
								top : 25,
								bottom : 0
							}
						},
						scales : {
							xAxes : [ {
								time : {
									unit : 'month'
								},
								gridLines : {
									display : false,
									drawBorder : false
								},
								ticks : {
									maxTicksLimit : 6
								},
								maxBarThickness : 25,
							} ],
							yAxes : [ {
								ticks : {
									min : 0,
									max : 30,
									maxTicksLimit : 5,
									padding : 10,
									// Include a dollar sign in the ticks
									callback : function(value, index, values) {
										return number_format(value);
									}
								},
								gridLines : {
									color : "rgb(234, 236, 244)",
									zeroLineColor : "rgb(234, 236, 244)",
									drawBorder : false,
									borderDash : [ 2 ],
									zeroLineBorderDash : [ 2 ]
								}
							} ],
						},
						legend : {
							display : false
						},
						tooltips : {
							titleMarginBottom : 10,
							titleFontColor : '#6e707e',
							titleFontSize : 14,
							backgroundColor : "rgb(255,255,255)",
							bodyFontColor : "#858796",
							borderColor : '#dddfeb',
							borderWidth : 1,
							xPadding : 15,
							yPadding : 15,
							displayColors : false,
							caretPadding : 10,
							callbacks : {
								label : function(tooltipItem, chart) {
									var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label
											|| '';
									return datasetLabel 
											+ number_format(tooltipItem.yLabel);
								}
							}
						},
					}
				});
	</script>



	<script>
		// Set new default font family and font color to mimic Bootstrap's default styling
				Chart.defaults.global.defaultFontFamily = 'Nunito',
				'-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
		Chart.defaults.global.defaultFontColor = '#858796';

		function number_format(number, decimals, dec_point, thousands_sep) {
			// *     example: number_format(1234.56, 2, ',', ' ');
			// *     return: '1 234,56'
			number = (number + '').replace(',', '').replace(' ', '');
			var n = !isFinite(+number) ? 0 : +number, prec = !isFinite(+decimals) ? 0
					: Math.abs(decimals), sep = (typeof thousands_sep === 'undefined') ? ','
					: thousands_sep, dec = (typeof dec_point === 'undefined') ? '.'
					: dec_point, s = '', toFixedFix = function(n, prec) {
				var k = Math.pow(10, prec);
				return '' + Math.round(n * k) / k;
			};
			// Fix for IE parseFloat(0.55).toFixed(0) = 0;
			s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
			if (s[0].length > 3) {
				s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
			}
			if ((s[1] || '').length < prec) {
				s[1] = s[1] || '';
				s[1] += new Array(prec - s[1].length + 1).join('0');
			}
			return s.join(dec);
		}

		// Bar Chart Example
		var ctx = document.getElementById("myBarChart2");
		var myBarChart = new Chart(
				ctx,
				{
					type : 'bar',
					data : {
						labels : [ 
							
							//Generate each title
							<c:forEach items="${pastAmount}" var="tempEvent">
							"${tempEvent.location}",
						</c:forEach>
						
							
								
								
								],
						datasets : [ {
							label : "",
							backgroundColor : "#3CB371",
							hoverBackgroundColor : "#2e59d9",
							borderColor : "#4e73df",
							data : [ 
								
								<c:forEach items="${pastAmount}" var="tempEvent">
								"${tempEvent.raised}",
							</c:forEach>
								
							],
						} ],
					},
					options : {
						maintainAspectRatio : false,
						layout : {
							padding : {
								left : 10,
								right : 25,
								top : 25,
								bottom : 0
							}
						},
						scales : {
							xAxes : [ {
								time : {
									unit : 'month'
								},
								gridLines : {
									display : false,
									drawBorder : false
								},
								ticks : {
									maxTicksLimit : 6
								},
								maxBarThickness : 25,
							} ],
							yAxes : [ {
								ticks : {
									min : 0,
									max : 7000,
									maxTicksLimit : 5,
									padding : 10,
									// Include a dollar sign in the ticks
									callback : function(value, index, values) {
										return '€' + number_format(value);
									}
								},
								gridLines : {
									color : "rgb(234, 236, 244)",
									zeroLineColor : "rgb(234, 236, 244)",
									drawBorder : false,
									borderDash : [ 2 ],
									zeroLineBorderDash : [ 2 ]
								}
							} ],
						},
						legend : {
							display : false
						},
						tooltips : {
							titleMarginBottom : 10,
							titleFontColor : '#6e707e',
							titleFontSize : 14,
							backgroundColor : "rgb(255,255,255)",
							bodyFontColor : "#858796",
							borderColor : '#dddfeb',
							borderWidth : 1,
							xPadding : 15,
							yPadding : 15,
							displayColors : false,
							caretPadding : 10,
							callbacks : {
								label : function(tooltipItem, chart) {
									var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label
											|| '';
									return datasetLabel + '€ '
											+ number_format(tooltipItem.yLabel);
								}
							}
						},
					}
				});
	</script>

	<!-- Area Chart code -- sbAdmin2 -->
	<!-- <script>
	// Set new default font family and font color to mimic Bootstrap's default styling
	Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
	Chart.defaults.global.defaultFontColor = '#858796';

	function number_format(number, decimals, dec_point, thousands_sep) {
	  // *     example: number_format(1234.56, 2, ',', ' ');
	  // *     return: '1 234,56'
	  number = (number + '').replace(',', '').replace(' ', '');
	  var n = !isFinite(+number) ? 0 : +number,
	    prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
	    sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
	    dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
	    s = '',
	    toFixedFix = function(n, prec) {
	      var k = Math.pow(10, prec);
	      return '' + Math.round(n * k) / k;
	    };
	  // Fix for IE parseFloat(0.55).toFixed(0) = 0;
	  s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
	  if (s[0].length > 3) {
	    s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
	  }
	  if ((s[1] || '').length < prec) {
	    s[1] = s[1] || '';
	    s[1] += new Array(prec - s[1].length + 1).join('0');
	  }
	  return s.join(dec);
	}

	// Area Chart Example
	var ctx = document.getElementById("myAreaChart");
	var myLineChart = new Chart(ctx, {
	  type: 'line',
	  data: {
	    labels: [
	    	<c:forEach items="${pastAmount}" var="tempEvent">
			"${tempEvent.location}",
		</c:forEach>
		
	    ],
	    datasets: [{
	      label: "Earnings",
	      lineTension: 0.3,
	      backgroundColor: "rgba(78, 115, 223, 0.05)",
	      borderColor: "rgba(78, 115, 223, 1)",
	      pointRadius: 3,
	      pointBackgroundColor: "rgba(78, 115, 223, 1)",
	      pointBorderColor: "rgba(78, 115, 223, 1)",
	      pointHoverRadius: 3,
	      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
	      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
	      pointHitRadius: 10,
	      pointBorderWidth: 2,
	      data: [0, 10000, 5000, 15000, 10000, 20000, 15000],
	    }],
	  },
	  options: {
	    maintainAspectRatio: false,
	    layout: {
	      padding: {
	        left: 10,
	        right: 25,
	        top: 25,
	        bottom: 0
	      }
	    },
	    scales: {
	      xAxes: [{
	        time: {
	          unit: 'date'
	        },
	        gridLines: {
	          display: false,
	          drawBorder: false
	        },
	        ticks: {
	          maxTicksLimit: 7
	        }
	      }],
	      yAxes: [{
	        ticks: {
	          maxTicksLimit: 5,
	          padding: 10,
	          // Include a dollar sign in the ticks
	          callback: function(value, index, values) {
	            return '$' + number_format(value);
	          }
	        },
	        gridLines: {
	          color: "rgb(234, 236, 244)",
	          zeroLineColor: "rgb(234, 236, 244)",
	          drawBorder: false,
	          borderDash: [2],
	          zeroLineBorderDash: [2]
	        }
	      }],
	    },
	    legend: {
	      display: false
	    },
	    tooltips: {
	      backgroundColor: "rgb(255,255,255)",
	      bodyFontColor: "#858796",
	      titleMarginBottom: 10,
	      titleFontColor: '#6e707e',
	      titleFontSize: 14,
	      borderColor: '#dddfeb',
	      borderWidth: 1,
	      xPadding: 15,
	      yPadding: 15,
	      displayColors: false,
	      intersect: false,
	      mode: 'index',
	      caretPadding: 10,
	      callbacks: {
	        label: function(tooltipItem, chart) {
	          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
	          return datasetLabel + ': $' + number_format(tooltipItem.yLabel);
	        }
	      }
	    }
	  }
	});

	
	</script> -->

	<script src="js/dataTablesDemo.js"></script>

</body>

</html>
