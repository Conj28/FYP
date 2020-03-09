<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.css" rel="stylesheet">
<link href="vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.css"
	rel="stylesheet">


<link href="css/main.css" rel="stylesheet">

<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
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
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-1"></div>
						<div class="col-lg-10 ">




							<div class="text shadow mb-4">

								<div class="row">


									<div class="col-lg-4">
										<div class="card o-hidden border shadow-lg text-white"
											style="height: 100%; background: #00b2ae">
<!-- #00659d -->
											<div class="p-4">
												<!-- Nested Row within Card Body -->
												<h1 class="p-4">Upcoming Events</h1>
												<h3 class="pl-4">See all upcoming volunteering
													opportunities</h3>


												<hr>
												<br />
												<!--Have and Account <a href="login.jsp">Login</a> -->

												<hr>

												<h2 class="pl-4">Take Action</h2>
												<h3 class="p-4">There are currently 55,000 people
													living with dementia in Ireland, this figure is set to
													double in the next 30 years. Now is the time to take action
													and ensure there are adequate services for these people and
													their families</h3>

												<hr>

												<h4 class="pl-4 pt-4">
													Have an account <u><a class="text-gray-400"
														href="login.jsp">Login</a></u>
												</h4>


											</div>
										</div>
									</div>

									<div class="col-lg-8" style="background: #00b2ae">
										<img class="img-fluid pl-4 pt-4" src="img/alzpic4.png">
									</div>
								</div>
							</div>


						</div>
					</div>
					<div class="row">




						<div class="col-lg-1"></div>

						<div class="col-lg-10 ">



							<div class="card shadow mb-4">

								<a href="#collapseCard1"
									class="d-block card-header py-3 bg-gradient-primary"
									data-toggle="collapse" role="button" aria-expanded="true"
									aria-controls="collapseCard1">
									<h6 class="m-0 font-weight-bold text-white">Filter Events</h6>
								</a>
								<div class="collapse-show animated--fade-in" id="collapseCard1">
									<ul class="listHorizontal card py-3 col-lg-12">
										<li><form action="getEventsServlet" method="POST">
												<label class="10PadLeft" for="location">Location:</label></li>


										<li><select name="location"
											class="form-control 10padleft">


												<!-- loc code https://stackoverflow.com/questions/15657367/selected-value-for-jsp-drop-down-using-jstl -->
												<option value="antrim"
													<c:if test="${sessionScope.location == 'antrim'}"> selected </c:if>>Antrim</option>
												<option value="armagh"
													<c:if test="${sessionScope.location == 'armagh'}"> selected </c:if>>Armagh</option>
												<option value="carlow"
													<c:if test="${sessionScope.location == 'carlow'}"> selected </c:if>>Carlow</option>
												<option value="cavan"
													<c:if test="${sessionScope.location == 'cavan'}"> selected </c:if>>Cavan</option>
												<option value="clare"
													<c:if test="${sessionScope.location == 'clare'}"> selected </c:if>>Clare</option>
												<option value="cork"
													<c:if test="${sessionScope.location == 'cork'}"> selected </c:if>>Cork</option>
												<option value="derry"
													<c:if test="${sessionScope.location == 'derry'}"> selected </c:if>>Derry</option>
												<option value="donegal"
													<c:if test="${sessionScope.location == 'donegal'}"> selected </c:if>>Donegal</option>
												<option value="down"
													<c:if test="${sessionScope.location == 'down'}"> selected </c:if>>Down</option>
												<option value="dublin"
													<c:if test="${sessionScope.location == 'dublin'}"> selected </c:if>>Dublin</option>
												<option value="fermanagh"
													<c:if test="${sessionScope.location == 'fermanagh'}"> selected </c:if>>Fermanagh</option>
												<option value="galway"
													<c:if test="${sessionScope.location == 'galway'}"> selected </c:if>>Galway</option>
												<option value="kerry"
													<c:if test="${sessionScope.location == 'kerry'}"> selected </c:if>>Kerry</option>
												<option value="kildare"
													<c:if test="${sessionScope.location == 'kildare'}"> selected </c:if>>Kildare</option>
												<option value="kilkenny"
													<c:if test="${sessionScope.location == 'kilkenny'}"> selected </c:if>>Kilkenny</option>
												<option value="laois"
													<c:if test="${sessionScope.location == 'laois'}"> selected </c:if>>Laois</option>
												<option value="leitrim"
													<c:if test="${sessionScope.location == 'leitrim'}"> selected </c:if>>Leitrim</option>
												<option value="limerick"
													<c:if test="${sessionScope.location == 'limerick'}"> selected </c:if>>Limerick</option>
												<option value="longford"
													<c:if test="${sessionScope.location == 'longford'}"> selected </c:if>>Longford</option>
												<option value="louth"
													<c:if test="${sessionScope.location == 'louth'}"> selected </c:if>>Louth</option>
												<option value="mayo"
													<c:if test="${sessionScope.location == 'mayo'}"> selected </c:if>>Mayo</option>
												<option value="meath"
													<c:if test="${sessionScope.location == 'meath'}"> selected </c:if>>Meath</option>
												<option value="monaghan"
													<c:if test="${sessionScope.location == 'monaghan'}"> selected </c:if>>Monaghan</option>
												<option value="offaly"
													<c:if test="${sessionScope.location == 'offaly'}"> selected </c:if>>Offaly</option>
												<option value="roscommon"
													<c:if test="${sessionScope.location == 'roscommon'}"> selected </c:if>>Roscommon</option>
												<option value="sligo"
													<c:if test="${sessionScope.location == 'sligo'}"> selected </c:if>>Sligo</option>
												<option value="tipperary"
													<c:if test="${sessionScope.location == 'tipperary'}"> selected </c:if>>Tipperary</option>
												<option value="tyrone"
													<c:if test="${sessionScope.location == 'tyrone'}"> selected </c:if>>Tyrone</option>
												<option value="waterford"
													<c:if test="${sessionScope.location == 'waterford'}"> selected </c:if>>Waterford</option>
												<option value="westmeath"
													<c:if test="${sessionScope.location == 'westmeath'}"> selected </c:if>>Westmeath</option>
												<option value="wexford"
													<c:if test="${sessionScope.location == 'wexford'}"> selected </c:if>>Wexford</option>
												<option value="wicklow"
													<c:if test="${sessionScope.location == 'wicklow'}"> selected </c:if>>Wicklow</option>
										</select></li>

										<li>
											<button type="submit" class="btn btn-secondary">Filter</button>

										</li>
										</form>
										<li><form action="getEventsServlet" method="POST">
												<button type="submit" class="btn btn-secondary">Reset
													Filter</button>
											</form></li>
									</ul>



								</div>




							</div>




						</div>



					</div>
					<div class="row">

						<div class="col-lg-1"></div>
						<div class="col-lg-10">
							<div class="row">
								<c:forEach items="${Events}" var="tempEvent">

									<!--using href as link https://stackoverflow.com/questions/49554070/using-bootstrap-cards-as-a-hyperlink/49554284  -->
									<a
										href="GetSpecificEvent?currentEventID=${tempEvent.eventDetID}"
										class="col-xl-3 col-lg-3 col-md-6 mb-6 hiddenRef">

										<div class="card shadow mb-4 broder-left-primary ">
											<div class="box">
												<img src="${tempEvent.img }"
													style="width: 100%; height: 18rem">
												<div class="card-body ">
													<h4 class="m-0 font-weight-bold text-primary">${tempEvent.name }</h4>

													<p class="cardMarginBottom">Date:
														${tempEvent.eventDate}</p>
													<p class="cardMarginBottom">Start Time:
														${tempEvent.startTime}</p>
													<p class="cardMarginBottom">End
														Time:${tempEvent.endTime}</p>
												</div>
											</div>
										</div>
									</a>


								</c:forEach>
							</div>
						</div>

						<!--  end of Row div -->
					</div>

				<!-- <form action="getUserEventsServlet?userID=${sessionScope.User.userID}" method="POST">

						<button type="submit">User Settings</button> -->
					</form>
				</div>
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


		<!-- Logout Modal-->
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